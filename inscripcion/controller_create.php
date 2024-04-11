<?php
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
    echo "<div style='font-size: 1.5rem;
                      display: flex;
                      align-items: center;
                      margin: 20rem 1.5rem;
                      padding: 4rem;
                      border-radius: 5px;
                      justify-content: center;
                      background-color: #0c5460;
                      color: #fff;'
>El estudiante ya fue registrado &nbsp&nbsp <a target='_blank' style='text-decoration: none;
background-color: #0a53be;
color: #fff;
padding: 1rem;
border-radius: 5px;


'href='comprobante.php?ci=$ci'> Imprimir comprobante</a></div>";
    echo "<script>
    alert('Tu comprobante ha sido generado. Serás redirigido al inicio de sesión.');
    setTimeout(function(){
        window.location.href = 'http://localhost/school/public/login';
    }, 5000); // Ajusta el tiempo según necesites
</script>";
}else{
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $celular = $_POST['celular'];
    $correo = $_POST['correo'];
    $genero = $_POST['genero'];
    $ano_for = $_POST['ano_for'];
    $tipo_matriculacion = $_POST['tipo_matriculacion'];
    $nro_deposito_matricula = $_POST['nro_deposito_matricual'];

//$foto_deposito_matricula = $_POST['foto_deposito_matricula'];
    $nombre_de_foto_perfil = "".date('Y-m-d-h-i-s');
    $filename1 = $nombre_de_foto_perfil."__".$_FILES['foto_deposito_matricula']['name'];
    $location = "documentos/".$filename1;
    //move_uploaded_file($_FILES['foto_deposito_matricula']['tmp_name'],$location);

//$documentos = $_POST['documentos'];
    $nombre_de_foto_perfil = "".date('Y-m-d-h-i-s');
    $filename3 = $nombre_de_foto_perfil."__".$_FILES['documentos']['name'];
    $location = "documentos/".$filename3;
    //move_uploaded_file($_FILES['documentos']['tmp_name'],$location);

    $sentencia = $pdo->prepare('INSERT INTO tb_matriculacion
(nombre, apellido, genero,ci,celular,correo,ano_for,tipo_matriculacion,nro_deposito_matricual,foto_deposito_matricula,documentos, fyh_creacion, estado)
VALUES (:nombre,:apellido,:genero,:ci,:celular,:correo,:ano_for,:tipo_matriculacion,:nro_deposito_matricual,:foto_deposito_matricula,:documentos,:fyh_creacion,:estado)');


    $sentencia->bindParam(':nombre', $nombre);
    $sentencia->bindParam(':apellido', $apellido);
    $sentencia->bindParam(':genero', $genero);
    $sentencia->bindParam(':ci',$ci);
    $sentencia->bindParam(':celular',$celular);
    $sentencia->bindParam(':correo',$correo);
    $sentencia->bindParam(':ano_for',$ano_for);
    $sentencia->bindParam(':tipo_matriculacion',$tipo_matriculacion);
    $sentencia->bindParam(':nro_deposito_matricual',$nro_deposito_matricula);
    $sentencia->bindParam(':foto_deposito_matricula',$filename1);
    $sentencia->bindParam(':documentos',$filename3);
    $sentencia->bindParam('fyh_creacion',$fechaHora);
    $sentencia->bindParam('estado',$estado_del_registro);
    $sentencia->execute();


    //Inserción de datos a la tabla users del plataforma con default de rol "student" -> Estudiante
    //Preparara la sentencia
    $fecha_registro = date('Y-m-d h:i:s');
    $username = $nombre.'.'.$apellido;
    $rol = "student";
    $sentencia = $pdo->prepare('INSERT INTO users (firstname, lastname, email, date, user_id, gender, rank) VALUES (:nombre, :apellido, :email, :fecha_registro, :user_id, :gender, :rol)');
    $sentencia->bindParam(':nombre', $nombre);
    $sentencia->bindParam(':apellido', $apellido);
    $sentencia->bindParam(':email', $correo);
    $sentencia->bindParam(':fecha_registro', $fecha_registro);
    $sentencia->bindParam(':user_id', $username);
    $sentencia->bindParam(':gender', $genero);
    $sentencia->bindParam(':rol', $rol);

    if($sentencia->execute()){
        echo "<div style='font-size: 1.5rem;
                      display: flex;
                      align-items: center;
                      margin: 20rem 1.5rem;
                      padding: 4rem;
                      border-radius: 5px;
                      justify-content: center;
                      background-color: #0c5460;
                      color: #fff;'
>El estudiante fue registrado exitosamente!! &nbsp&nbsp <a target='_blank' style='text-decoration: none;
background-color: #0a53be;
color: #fff;
padding: 1rem;
border-radius: 5px;


'href='comprobante.php?ci=$ci'> Imprimir comprobante</a></div>";
        echo "<script>
    alert('Tu comprobante ha sido generado. Serás redirigido al inicio de sesión en 20 segundos.');
    setTimeout(function(){
        window.location.href = 'http://localhost/school/public/login';
    }, 20000); // Ajusta el tiempo según necesites
</script>";
    } else {
        echo 'error al registrar a la base de datos';
    }
}





