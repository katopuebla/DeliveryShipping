<?php

function connectDB(){

        $server = "localhost";
        $user = "c1450676_demo";
        $pass = "VAtule17wu";
        $bd = "test";

    $conexion = mysqli_connect($server, $user, $pass,$bd);

        if($conexion){

        }else{
            echo 'Ha sucedido un error inexperado en la conexion de la base de datos
';
        }

    return $conexion;
}

function disconnectDB($conexion){

    $close = mysqli_close($conexion);

        if($close){

        }else{
            echo 'Ha sucedido un error inexperado en la desconexion de la base de datos
';
        }   

    return $close;
}

function getArraySQL($sql){
    //Creamos la conexi�n con la funci�n anterior
    $conexion = connectDB();

    //generamos la consulta

        mysqli_set_charset($conexion, "utf8"); //formato de datos utf8

    if(!$result = mysqli_query($conexion, $sql)) die(); //si la conexi�n cancelar programa

    $rawdata = array(); //creamos un array

    //guardamos en un array multidimensional todos los datos de la consulta
    $i=0;

    while($row = mysqli_fetch_array($result))
    {
        $rawdata[$i] = $row;
        $i++;
    }

    disconnectDB($conexion); //desconectamos la base de datos

    return $rawdata; //devolvemos el array
}
$sql = "SELECT * FROM user";
        $myArray = getArraySQL($sql);
        echo json_encode($myArray);
?>