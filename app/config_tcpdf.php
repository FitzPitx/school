<?php
/**
 * Created by PhpStorm.
 * User: PC-DELL
 * Date: 08/09/2020
 * Time: 20:08
 */

define('SERVIDOR','localhost');
define('USUARIO','root');
define('PORT', '3306');
define('PASSWORD','');
define('BD','matriculacion');


$servidor = "mysql:host=".SERVIDOR.";port=".PORT.";dbname=".BD;
try{
    $pdo = new PDO($servidor,USUARIO,PASSWORD,
        array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8")
    );
    //echo "<script>alert('Conexión con exito a la base de datos');</script>";
}catch (PDOException $e){
    //print_r($e);
    // echo "fr";
    echo "<script>alert('error al conectar con la base de datos');</script>";
}