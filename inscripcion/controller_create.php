<?php
/**
 * Created by PhpStorm.
 * User: Administrador
 * Date: 30/7/2021
 * Time: 10:34
 */

include ('../app/config.php');


date_default_timezone_set("America/Bogota");
$fechaHora = date('Y-m-d h:i:s');
$estado = '1';


$ci = $_POST['ci'];

//comprobar
$contador=0;
$query = $pdo->prepare("SELECT * FROM tb_matriculacion WHERE ci = '$ci' AND estado ='1' ");
$query->execute();
$usuarios = $query->fetchAll(PDO::FETCH_ASSOC);
foreach ($usuarios as $usuario){
    $contador = $contador + 1;
}
if($contador>0){
    echo "<h1>El estudiante ya fue registrado <a href='comprobante.php?ci=$ci'>Imprimir comprobante</a></h1>";

}else{
    //echo "no fue registrado";
    $apellidos_nombres = $_POST['apellidos_nombres'];

    $celular = $_POST['celular'];
    $correo = $_POST['correo'];
    $ano_for = $_POST['ano_for'];
    // $especialidad = $_POST['especialidad'];
    $tipo_matriculacion = $_POST['tipo_matriculacion'];
    $nro_deposito_matricula = $_POST['nro_deposito_matricual'];



//$foto_deposito_matricula = $_POST['foto_deposito_matricula'];
    $nombre_de_foto_perfil = "".date('Y-m-d-h-i-s');
    $filename1 = $nombre_de_foto_perfil."__".$_FILES['foto_deposito_matricula']['name'];
    $location = "documentos/".$filename1;
    move_uploaded_file($_FILES['foto_deposito_matricula']['tmp_name'],$location);



//$documentos = $_POST['documentos'];
    $nombre_de_foto_perfil = "".date('Y-m-d-h-i-s');
    $filename3 = $nombre_de_foto_perfil."__".$_FILES['documentos']['name'];
    $location = "documentos/".$filename3;
    move_uploaded_file($_FILES['documentos']['tmp_name'],$location);



    $sentencia = $pdo->prepare('INSERT INTO tb_matriculacion
(apellidos_nombres,ci,celular,correo,ano_for,tipo_matriculacion,nro_deposito_matricual,foto_deposito_matricula,documentos, fyh_creacion, estado)
VALUES ( :apellidos_nombres,:ci,:celular,:correo,:ano_for,:tipo_matriculacion,:nro_deposito_matricual,:foto_deposito_matricula,:documentos,:fyh_creacion,:estado)');

// $sentencia = $pdo->prepare('INSERT INTO tb_matriculacion
// (apellidos_nombres,ci,celular,correo,ano_for,especialidad,tipo_matriculacion,nro_deposito_matricual,foto_deposito_matricula,documentos, fyh_creacion, estado)
// VALUES ( :apellidos_nombres,:ci,:celular,:correo,:ano_for,:especialidad,:tipo_matriculacion,:nro_deposito_matricual,:foto_deposito_matricula,:documentos,:fyh_creacion,:estado)');

    $sentencia->bindParam(':apellidos_nombres',$apellidos_nombres);
    $sentencia->bindParam(':ci',$ci);
    $sentencia->bindParam(':celular',$celular);
    $sentencia->bindParam(':correo',$correo);
    $sentencia->bindParam(':ano_for',$ano_for);
    // $sentencia->bindParam(':especialidad',$especialidad);
    $sentencia->bindParam(':tipo_matriculacion',$tipo_matriculacion);
    $sentencia->bindParam(':nro_deposito_matricual',$nro_deposito_matricula);
    $sentencia->bindParam(':foto_deposito_matricula',$filename1);
    $sentencia->bindParam(':documentos',$filename3);
    $sentencia->bindParam('fyh_creacion',$fechaHora);
    $sentencia->bindParam('estado',$estado_del_registro);

    if($sentencia->execute()){
        echo 'success';
        header('Location: comprobante.php?ci='.$ci );
    }else{
        echo 'error al registrar a la base de datos';
    }
}

