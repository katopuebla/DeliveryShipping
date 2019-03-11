<?php
include "../cros.php";
include "../dao.php";

try {
    $entityBody = file_get_contents('php://input');
    $arrayBody = (array)json_decode($entityBody);

    $method = $_SERVER['REQUEST_METHOD'];
    switch ($method) {
        case 'GET':
            if (isset($_GET['id'])) {
                $id = $_REQUEST['id'];
                getById($dbConn, 'codigopostal', ' codigo_postal', $id);
            } else {
                getFullData($dbConn, 'codigopostal');
            }
            break;
        case 'POST':
            $input = $arrayBody;
            $input['estatus'] = 1; // se agrega un parametro estatico

            insertEntity($dbConn, 'codigopostal', $input);
            break;
        case 'PUT':
            $input = $arrayBody;
            $id = $input['codigo_postal'];
            if (isset($_REQUEST['active'])) {
                statusEntity($dbConn, 'codigopostal', ' codigo_postal', $id, 1);
            } elseif (isset($_REQUEST['inactive'])) {
                statusEntity($dbConn, 'codigopostal', ' codigo_postal', $id, 0);
            } else {
                updateEntity($dbConn, 'codigopostal', $input);
            }
            
            break;
        case 'DELETE':
            $input = $arrayBody;
            $id = $input['codigo_postal'];
            if (isset($_REQUEST['allow'])) {
                deleteEntity($dbConn, 'codigopostal', ' codigo_postal', $id);
            } else {
                statusEntity($dbConn, 'codigopostal', ' codigo_postal', $id, 0);
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

?>