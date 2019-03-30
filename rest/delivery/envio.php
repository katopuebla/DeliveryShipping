<?php
include "../cros.php";
include "../dao.php";

try {
    $entityBody = file_get_contents('php://input');
    $arrayBody = (array)json_decode($entityBody);
    $table = 'envio';
    $now = new DateTime('NOW', timezone_open('America/Mexico_City'));

    $method = $_SERVER['REQUEST_METHOD'];
    $userid = $_REQUEST['userId'];
    if($userid)
    switch ($method) {
        case 'GET':
            if (isset($_GET['guia'])) {
                $id = $_REQUEST['guia'];
                getById($dbConn, $table, 'guia_sq_id', $id);
            } else {
                getFullData($dbConn, $table);
            }
            break;
        case 'POST':
            $input = $arrayBody;
            if (isset($_REQUEST['remitente'])) {
                insertEntity($dbConn, 'remitente', $input);
            } elseif (isset($_REQUEST['consignatario'])) {
                insertEntity($dbConn, 'consignatario', $input);
            } elseif (isset($_REQUEST['saveEnvio'])) {
                //echo json_encode($input);
                $input2['peso'] = $input['peso'];
                $input2['alto'] = $input['alto'];
                $input2['ancho'] = $input['ancho'];
                $input2['largo'] = $input['largo'];
                $input2['tipo_envio_id'] = indexTipoEnvio($dbConn, $input);
                $input2['tipo_servicio_id'] = indexTipoServicio($dbConn, $input);
                $input2['guia_sq_id'] = maxGuia($dbConn, $input);
                $input2['remi_sq_id'] = indexRemitente($dbConn, $input);
                $input2['dest_sql_id'] = indexConsignatario($dbConn, $input);
                $input2['estatus_id'] = 'origen';

                if(insertEntity($dbConn, $table, $input2)){
                    $envioStausFields = array (
                        'guia_sq_id' => $input2['guia_sq_id']
                        ,'estatus_id' => 'origen'
                        ,'input_date' => $now->format('Y-m-d H:i:s')
                        ,'userid' => $userid
                    );
                    insertQuietEntity($dbConn, 'envio_estatus', $envioStausFields);
                }
            }
            break;
        case 'PUT':
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
            break;
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