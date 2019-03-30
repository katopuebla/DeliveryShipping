<?php
include "../cros.php";
include "../dao.php";

$dbConn = connect($db);
$tableName = 'user';
$primaryKey = 'userId';

try {
    $entityBody = file_get_contents('php://input');
    $arrayBody = (array)json_decode($entityBody);

    $method = $_SERVER['REQUEST_METHOD'];
    switch ($method) {
        case 'GET':
            if (isset($_GET['userId'])) {
                $id = $_REQUEST['userId'];
                getById($dbConn, $tableName, $primaryKey, $id);
            } elseif (isset($_GET['fullData'])) {
                getFullData($dbConn, $tableName);
            }
            break;
        case 'POST':
            $input = $arrayBody;
            if (isset($_GET['register'])) {
                if ($input['userid'] != null
                    || $input['userid'] != "") {
                    $input['estatus'] = 1; // se agrega un parametro estatico
                    insertEntity($dbConn, $tableName, $input);
                } else {
                    header("HTTP/1.1 400 Bad Request");
                }
            } else {
                $id = $input['userid'];
                $sql = $dbConn->prepare(" SELECT * FROM $tableName where $primaryKey = ? ");
                $sql->bind_param("s", $id);
                $sql->execute();
                $result = $sql->get_result();
                $row = $result->fetch_assoc();
                if ($row) {
                    if ($input['password'] === $row['password']) {
                        if ($input['system'] === $row['system']) {
                            if ($row['estatus'] === 1) {
                                $row['password'] = null;
                                $row['estatus'] = null;
                                header("HTTP/1.1 200 OK");
                                echo json_encode($row);
                            } else {
                                header("HTTP/1.1 401 user inactived");
                                echo 'user inactived!!';
                            }
                        } else {
                            header("HTTP/1.1 401 System invalided");
                            echo 'System invalided!!';
                        }
                    } else {
                        header("HTTP/1.1 401 password invalided");
                        echo 'password invalided!!';
                    }
                } else {
                    header("HTTP/1.1 404 Not Found");
                    echo '404 Not Found!!';
                }
            }
            break;
        case 'PUT':
            $input = $arrayBody;
            updateEntity($dbConn, $tableName, $input);
            break;
        case 'DELETE':
            $id = $_REQUEST['userId'];
            if (isset($_REQUEST['allow'])) {
                deleteEntity($dbConn, $tableName, $primaryKey, $id);
            } else {
                statusEntity($dbConn, $tableName, $primaryKey, $id, 0);
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