<?php

  //Abrir conexion a la base de datos
function connect($db)
{
    try {
        $host = $db['host'];
        $dbname = $db['db'];
        $conn = new MySQLi($host, $db['username'], $db['password'], $dbname);
        mysqli_set_charset($conn, "utf8");
          //$conn = new PDO("mysql:host={$db['host']};dbname={$db['db']}", $db['username'], $db['password']);

          // set the PDO error mode to exception
          //$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        return $conn;
    } catch (PDOException $exception) {
        exit($exception->getMessage());
    }
}


 //Obtener parametros para updates
function getParams($input)
{
    $filterParams = array();
    foreach ($input as $param => $value) {
        $filterParams[] = "$param=?";
    }
    return implode(", ", $filterParams);
}

 //Obtener parametros para Insert
 function getInsertParams($input)
 {
     $filterParams = array();
     foreach ($input as $param => $value) {
         $filterParams[] = "$param ";
     }
     return implode(", ", $filterParams);
 }

 //Obtener parametros para Insert
 function getInsertValues($input)
 {
     $variableTypeString = str_repeat(" ?,", sizeof($input));
     return substr($variableTypeString, 0, -1);
 }
 
  //Asociar todos los parametros a un sql
function bindAllValues($prepStatement, $params)
{
    try {
        $parameterArray = array();
    // obtiene n veces la letra "s"
        $variableTypeString = "";// str_repeat("s", sizeof($params));
        $parameterArray[] = &$variableTypeString;
        
        // $variableTypeString = "";
        foreach ($params as $k => &$varName) {
            $variableTypeString .= getTipoCaracter($varName);
        }

        foreach ($params as $k => &$varName) {
            $parameterArray[$k] = &$varName;
        }

        call_user_func_array(array($prepStatement, 'bind_param'), $parameterArray);
        if (false===$prepStatement){
           die('bindAllValues() failed: ' . print_r($parameterArray));
           //echo "Bad Request bindAllValues ";
        }
        //$prepStatement->bind_param($parameterArray);
        return $prepStatement;
    } catch (Exception $ex) {
        header("HTTP/1.1 400 Bad Request");
        echo "Bad Request";
    }
}

function getTipoCaracter($varName){
    $value = "";
    if(is_string($varName)){
        $value = "s";
    }elseif (is_double($varName)){
        $value = "d";
    }elseif (is_numeric($varName)){
        $value = "i";
    }elseif (is_bool($varName)){
        $value = "i";
        if ($varName) {
            $varName = 1;
        }else {
            $varName = 0;
        }
    }else {
        $value = "s";
    }
    return $value;
}
?>