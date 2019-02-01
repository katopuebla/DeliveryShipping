<?php
include "../utils.php";
include "../config.php";

$dbConn = connect($db);

function getById($dbConn, $tableName, $fildName, $id)
{
    $sql = $dbConn->prepare(" SELECT * FROM $tableName where $fildName = ? ");
    $sql->bind_param("s", $id);
    $sql->execute();
    $result = $sql->get_result();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $output[] = $row;
        }
        header("HTTP/1.1 200 OK");
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
        header("HTTP/1.1 200 OK");
        echo json_encode($output);
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
    //echo $sql;
    $prepStatement = $dbConn->prepare($sql);
    //print_r($arrayInsert);
    bindAllValues($prepStatement, $arrayInsert);
    ob_clean();
    if ($prepStatement->execute()) {
        header("HTTP/1.1 201 Created");
       // echo json_encode($arrayInsert);
        $last_id = $dbConn->insert_id;
        if ($last_id) {
            $arrayInsert['id'] = $last_id;
        }
        //print_r($arrayInsert);
        echo json_encode($arrayInsert);
    } else {
        header("HTTP/1.1 500 No Created");
        echo $prepStatement->error;
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
        header("HTTP/1.1 200 OK");
        echo 'Registro ' . $postId . ' Actualizado ';
    } else {
        header("HTTP/1.1 304 Not Modified");
        echo 'Not Modified';
    }

}

function deleteEntity($dbConn, $tableName, $fildName, $id)
{
    try {
        $prepStatement = $dbConn->prepare(" DELETE FROM $tableName where $fildName = ? ");
        $prepStatement->bind_param('s', $id);
        $prepStatement->execute();
        header("HTTP/1.1 200 OK");
        echo 'Registro ' . $id . ' fué borrado';
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
        header("HTTP/1.1 200 OK");
        echo 'Registro ' . $id . ' fué desactivado';
    } catch (Exception $ex) {
        header("HTTP/1.1 500 Internal Server Error");
    }
}

?>