<?php
include "../cros.php";
include "../dao.php";

try {
    $entityBody = file_get_contents('php://input');
    $arrayBody = (array)json_decode($entityBody);
    $table = 'recepcion_envio';
    $now = new DateTime('NOW', timezone_open('America/Mexico_City'));
    $fields = array(
        'guia_sq_id' => '',
        'persona_recibe' => '',
        'identificacion' => ''
    );

    $method = $_SERVER['REQUEST_METHOD'];
    $userid = $_REQUEST['userId'];
    if($userid)
    switch ($method) {
        case 'GET':
            if (isset($_GET['guia'])) {
                $id = $_REQUEST['guia'];
                getById($dbConn, $table, 'guia_sq_id', $id);
            } else if (isset($_GET['receiveGuia'])) {
                $id = $_REQUEST['receiveGuia'];
                $arrayQuery = [ 'guia_sq_id' => $id ];
                getListBySql($dbConn, ' select * FROM envio WHERE estatus_id = "origen" and guia_sq_id = ?'
                    , $arrayQuery);
            } else if (isset($_GET['estatus_id'])) {
                $id = $_REQUEST['estatus_id'];
                $arrayQuery = [];
                getListBySql($dbConn, ' select * FROM envio WHERE estatus_id = "origen"'
                    , $arrayQuery);
            } else if (isset($_GET['dest_sq_id'])) {
                $id = $_REQUEST['dest_sq_id'];
                getById($dbConn, 'consignatario', 'dest_sq_id', $id);
            } else {
                getFullData($dbConn, $table);
            }
            break;
        case 'POST':
            $input = $arrayBody;
            $fields['guia_sq_id'] = $input['guia'];
            $fields['persona_recibe'] = $input['recibe'];
            $fields['identificacion'] = $input['identificacion'];
            $userid = $_REQUEST['userId'];
            $guia = $fields['guia_sq_id'] ;
            if($userid){
                if(insertQuietEntity($dbConn, $table, $fields)) {
                    $envioStausFields = array (
                        'guia_sq_id' => $guia
                        ,'estatus_id' => 'entregado'
                        ,'input_date' => $now->format('Y-m-d H:i:s')
                        ,'userid' => $userid
                    );
                    if(insertQuietEntity($dbConn, 'envio_estatus', $envioStausFields)) {
                        $enviofields = array (
                            'guia_sq_id' => $guia
                            , 'estatus_id' => 'entregado'
                        );
                        updateEntity($dbConn, "envio", $enviofields);
                    }
            }
            };
            break;
/*        case 'PUT':
            $input = $arrayBody;
            $id = $input['codigoPostal'];
            if (isset($_REQUEST['active'])) {
                statusEntity($dbConn, $table, ' codigoPostal', $id, 1);
            } elseif (isset($_REQUEST['inactive'])) {
                statusEntity($dbConn, $table, ' codigoPostal', $id, 0);
            } else {
                updateEntity($dbConn, $table, $input);
            }

            break;
        case 'DELETE':
            $input = $arrayBody;
            $id = $input['codigoPostal'];
            if (isset($_REQUEST['allow'])) {
                deleteEntity($dbConn, $table, ' codigoPostal', $id);
            } else {
                statusEntity($dbConn, $table, ' codigoPostal', $id, 0);
            }
            break;*/
        default:
            handle_error($request);
            break;
    }
} catch (Exception $ex) {
    header("HTTP/1.1 500 Internal Server Error");
    echo $ex;
}
exit();

function maxGuia($dbConn, $input)
{
    $result = $dbConn->query('SELECT MAX(guia_sq_id) AS Maximum FROM envio');
    $row = $result->fetch_assoc();
    return $row['Maximum'] + 1;
}

function indexRemitente($dbConn, $input)
{
    $entity = (array)$input['remitente'];
    if (!array_key_exists('id', $entity)) {
        insertQuietEntity($dbConn, 'remitente', $entity);
        $entity['id'] = $dbConn->insert_id;
    }
    return $entity['id'];
}

function indexConsignatario($dbConn, $input)
{
    $entity = (array)$input['consignatario'];
    if (!array_key_exists('id', $entity)) {
        insertQuietEntity($dbConn, 'consignatario', $entity);
        $entity['id'] = $dbConn->insert_id;
    }
    return $entity['id'];
}

function indexTipoEnvio($dbConn, $input)
{
    $entity = (array)$input['tipo_envio'];
    return $entity['id'];
}

function indexTipoServicio($dbConn, $input)
{
    $entity = (array)$input['tipo_servicio'];
    return $entity['id'];
}

?>