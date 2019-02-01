<?php

  //Abrir conexion a la base de datos
function connect($db)
{
    try {
        $host = $db['host'];
        $dbname = $db['db'];
        $conn = $conn = new MySQLi($host, $db['username'], $db['password'], $dbname);
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
            if(is_string($varName)){
                $variableTypeString .= "s";
            }elseif (is_double($varName)){
                $variableTypeString .= "d";
            }elseif (is_numeric($varName)){
                $variableTypeString .= "i";
            }
        }

        foreach ($params as $k => &$varName) {
            $parameterArray[$k] = &$varName;
        }
        //print_r($parameterArray);
        call_user_func_array(array($prepStatement, 'bind_param'), $parameterArray);
    //$prepStatement->bind_param($parameterArray);
        return $prepStatement;
    } catch (Exception $ex) {
        header("HTTP/1.1 400 Bad Request");
        echo "Bad Request";
    }
}
?>