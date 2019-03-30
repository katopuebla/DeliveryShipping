<?php
include "../utils.php";
include "../config.php";

$now = new DateTime('NOW', timezone_open('America/Mexico_City'));

$dbConn = connect($db);

function getById($dbConn, $tableName, $fildName, $id)
{
    $sql = $dbConn->prepare(" SELECT * FROM $tableName where $fildName = ? ");
    if(is_int($id))
        $sql->bind_param("i", $id);
    else 
        $sql->bind_param("s", $id);

    $sql->execute();
    $result = $sql->get_result();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $row = array_map('utf8_encode', $row);
            $arrayOutput[] = $row;
        }
        if (count($arrayOutput) == 1) {
            $output = $arrayOutput[0];
        } elseif (count($arrayOutput) > 1) {
            $output = $arrayOutput;
        }
        //header("HTTP/1.1 200 OK");
        header('Content-Type: application/json');
        echo json_encode($output);
    } else {
        header("HTTP/1.1 404 Not Found");
        echo 'Not Found';
    }
}

function getListBySql($dbConn, $query, $arrayField)
{
    $prepStatement = $dbConn->prepare($query);
    if ( false===$prepStatement){
        echo "Failed prepare created : ";  
    }
    if( $arrayField != null)
        bindAllValues($prepStatement, $arrayField);
        
    $prepStatement->execute();
    $result = $prepStatement->get_result();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $row = array_map('utf8_encode', $row);
            $arrayOutput[] = $row;
        }
        $output = $arrayOutput;
        //header("HTTP/1.1 200 OK");
        header('Content-Type: application/json');
        echo json_encode($output);
    } else {
        header("HTTP/1.1 404 Not Found");
        echo 'Not Found';
    }
}

function getFullData($dbConn, $tableName)
{
    $sql = $dbConn->prepare(" SELECT * FROM $tableName ");
    $sql->execute();
    $result = $sql->get_result();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $output[] = $row;
        }
        //header("HTTP/1.1 200 OK");
        header('Content-Type: application/json;charset=utf-8');
        echo json_encode($output, JSON_UNESCAPED_UNICODE);
    } else {
        header("HTTP/1.1 404 Not Found");
        echo 'Not Found';
    }
}

function insertEntity($dbConn, $tableName, $arrayInsert)
{
    $fields = getInsertParams($arrayInsert);
    $valueParameters = getInsertValues($arrayInsert);
    $sql = " INSERT INTO $tableName ($fields) VALUES ( $valueParameters ) ";
//    echo $sql;
    $prepStatement = $dbConn->prepare($sql);
    //print_r($arrayInsert);
    if ( false===$prepStatement){
        echo "Failed prepare created : ";  
    }
    bindAllValues($prepStatement, $arrayInsert);
    //ob_clean();
    if ($prepStatement->execute()) {

        header("HTTP/1.1 201 Created");
        $last_id = $dbConn->insert_id;
        if ($last_id) {
            $arrayInsert['id'] = $last_id;
            $response = array(
                'status' => 1,
                'status_message' => 'Product Added Successfully.',
                'id' => $last_id
            );
            header('Content-Type: application/json');
            echo json_encode($response);
            return true;
        } else {
            header('Content-Type: application/json');
            echo json_encode($arrayInsert);
            return true;
        }
        
    } else {
        header("HTTP/1.1 500 No Created");
        echo $prepStatement->error;
        return false;
    }
    if ( false===$prepStatement){
        die('execute() failed: ' . htmlspecialchars($prepStatement->error)); 
        return false;
    }
}

function insertQuietEntity($dbConn, $tableName, $arrayInsert)
{
    $fields = getInsertParams($arrayInsert);
    $valueParameters = getInsertValues($arrayInsert);
    $sql = " INSERT INTO $tableName ($fields) VALUES ( $valueParameters ) ";
    //echo $sql;
    $prepStatement = $dbConn->prepare($sql);
    if ( false===$prepStatement){
        echo "Failed prepare created : ";  
    }
    bindAllValues($prepStatement, $arrayInsert);
    // ob_clean();
    $result = $prepStatement->execute();
    if ( false===$result){
        die('execute() failed: ' . htmlspecialchars($prepStatement->error)); 
    }
    if ($prepStatement->affected_rows > 0) {
        return true;
    } else {
        header("HTTP/1.1 500 No Created");
        echo $prepStatement->error;
        return false;
    }
}

function updateEntity($dbConn, $tableName, $arrayInsert)
{
    $field = key($arrayInsert);
    $postId = $arrayInsert[$field];
    $fields = getParams($arrayInsert);
    $sql = " UPDATE $tableName SET $fields WHERE $field ='$postId' ";
    $prepStatement = $dbConn->prepare($sql);
    bindAllValues($prepStatement, $arrayInsert);
    $prepStatement->execute();
    if ($prepStatement->affected_rows > 0) {
        //header("HTTP/1.1 200 OK");
        header('Content-Type: application/json');
        $response = array(
            'status' => 1,
            'status_message' => 'Registro ' . $postId . ' Actualizado ',
            'id' => $postId
        );
        echo json_encode($response);
        return true;
    } else {
        header("HTTP/1.1 304 Not Modified");
        echo $prepStatement->error;
        return false;
    }

}

function deleteEntity($dbConn, $tableName, $fildName, $id)
{
    try {
        $prepStatement = $dbConn->prepare(" DELETE FROM $tableName where $fildName = ? ");
        $prepStatement->bind_param('s', $id);
        $prepStatement->execute();
        if ($prepStatement->affected_rows > 0) {
            header('Content-Type: application/json');
            $response = array(
                'status' => 1,
                'status_message' => 'Registro ' . $id . ' fué borrado',
                'id' => $id
            );
            echo json_encode($response);
        } else {
            header("HTTP/1.1 400 Bad Request");
            echo $prepStatement->error;
        }
    } catch (Exception $ex) {
        header("HTTP/1.1 500 DML failed");
    }
}

function statusEntity($dbConn, $tableName, $fildName, $id, $status)
{
    try {
        $prepStatement = $dbConn->prepare(" UPDATE $tableName  SET estatus = $status where $fildName = ? ");
        $prepStatement->bind_param('s', $id);
        $prepStatement->execute();
        if ($prepStatement->affected_rows > 0) {
            $response = array(
                'status' => 1,
                'status_message' => 'Status Cambiado a ' . $status,
                'id' => $id
            );
            header('Content-Type: application/json');
            echo json_encode($response);
        } else {
            header("HTTP/1.1 400 Bad Request");
            echo $prepStatement->error;
        }
    } catch (Exception $ex) {
        header("HTTP/1.1 500 Internal Server Error");
    }
}

function estadoEntity($dbConn, $tableName, $fildName, $id, $estado)
{
    try {
        $prepStatement = $dbConn->prepare(" UPDATE $tableName  SET estado = $estado where $fildName = ? ");
        $typeParam = getTipoCaracter($id);
        $prepStatement->bind_param($typeParam, $id);
        $prepStatement->execute();
        if ($prepStatement->affected_rows > 0) {
            header('Content-Type: application/json');
            $response = array(
                'estado' => 1,
                'estado_message' => 'estado Cambiado a ' . $estado,
                'id' => $id
            );
            echo json_encode($response, JSON_UNESCAPED_UNICODE);
        } else {
            header("HTTP/1.1 400 Bad Request");
            echo $prepStatement->error;
        }
    } catch (Exception $ex) {
        header("HTTP/1.1 500 Internal Server Error");
    }
}
?>