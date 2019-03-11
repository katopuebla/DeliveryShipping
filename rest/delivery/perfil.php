<?php
include "../cros.php";
include "../dao.php";

try {
    $entityBody = file_get_contents('php://input');
    $arrayBody = (array)json_decode($entityBody);
    $table = 'perfiles';

    $pk = 'perfil';

    $method = $_SERVER['REQUEST_METHOD'];
    switch ($method) {
        case 'GET':
            if (isset($_GET['perfil'])) {
                $id = $_REQUEST['perfil'];
                getById($dbConn,    $table, $pk, $id);
            } else {
                getFullData($dbConn, $table);
            }
            break;
        case 'POST':
            $input = $arrayBody;
            insertEntity($dbConn, $table, $input);
            break;
        case 'PUT':
            $input = $arrayBody;
            $id = $input[$pk];
            if (isset($_REQUEST['active'])) {
                estadoEntity($dbConn, $table, $pk, $id, 1);
            } elseif (isset($_REQUEST['inactive'])) {
                estadoEntity($dbConn, $table, $pk, $id, 0);
            } else {
                updateEntity($dbConn, $table, $input);
            }

            break;
        case 'DELETE':
            $input = $arrayBody;
            $id = $input[$pk];
            if (isset($_REQUEST['allow'])) {
                deleteEntity($dbConn, $table, $pk, $id);
            } else {
                estadoEntity($dbConn, $table, $pk, $id, 0);
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