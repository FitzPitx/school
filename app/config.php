<?php
global $pdo;
define('SERVIDOR','localhost');
define('PUERTO', '3306'); // Puerto de MySQL
define('USUARIO','root');
define('PASSWORD','');
define('BD','matriculacion');

$servidor = "mysql:host=".SERVIDOR.";port=".PUERTO.";dbname=".BD;
try {
    $pdo = new PDO($servidor, USUARIO, PASSWORD, array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));
} catch (PDOException $e) {
    echo "<script>alert('Error al conectar con la base de datos');</script>";
}
$URL='http://localhost/inscripcion';

date_default_timezone_set("America/Bogota");
$fechaHora =date("Y-m-d H:i:s");
$fecha_del_sistema =date("Y-m-d");
$hora_del_sistema =date("H:i:s");
$estado_del_registro = "1";


$dia_actual = date("d");

?>

