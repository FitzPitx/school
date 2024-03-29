<?php

/**
 * Created by PhpStorm.
 * User: hilar
 * Date: 28/05/2021
 * Time: 11:43
 */
include('../app/config.php');
?>
<!doctype html>
<html lang="es">

<head>
    <title>Colegio Bogota Edunexus</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="stylesheet" href="<?php echo $URL; ?>/public/css/bootstrap.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <script src="<?php echo $URL; ?>/public/js/jquery-3.5.1.min.js"></script>
</head>

<body style=" background-image: url('https://cdn.pixabay.com/photo/2021/10/06/05/17/learn-6684425__340.jpg');
    background-repeat: no-repeat;
    z-index: -3;
    background-size: 100vw 100vh;background-attachment: fixed">

    <br><br>

    <div class="container" style="background-color: #ffffff">
        <div class="row">
            <div class="col-md-4">
                <br>
                <h1>Colegio Bogota Edunexus</h1>
            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4">
                <img src="<?php echo $URL; ?>/public/img/logoEdunexus-removebg-preview.png" style="margin-top: 10px;float: right" width="100px" alt="">
            </div>
        </div>
        <br>
        <h2 ALIGN="center">Nombre de la institución educativa "Colegio Bogota Edunexus"</h2>
        <div class="row" style="background-color: #071452;color:#ffffff;height: 50px">
            <div class="col-md-12">
                <center>
                    <h4 style="margin-top: 10px">LISTADO DE MATRICULADOS 1/2024</h4>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="container" style="width: 95%">
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-blue" style="box-shadow: 0px 5px 5px 5px #c0c0c0">
                            <div class="card-header">
                                Estudiantes matriculados
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered table-sm" id="table_id">
                                        <thead>
                                            <tr>
                                                <th>Nro</th>
                                                <th>Apellidos y Nombres</th>
                                                <th>Ci</th>
                                                <th>Celular</th>
                                                <th>Correo</th>
                                                <th>Año de Formación</th>
                                                <!-- <th>Especialidad</th> -->
                                                <th>Tipo de matriculación</th>
                                                <th>Número de deposito</th>
                                                <th>Foto del deposito</th>
                                                <th>Documentos</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $contador = 0;
                                            $query_datos = $pdo->prepare("SELECT * FROM tb_matriculacion WHERE estado = '1' ");
                                            $query_datos->execute();
                                            $query_datos = $query_datos->fetchAll(PDO::FETCH_ASSOC);
                                            foreach ($query_datos as $dato) {
                                                $apellidos_nombres = $dato['apellidos_nombres'];
                                                $ci = $dato['ci'];
                                                $celular = $dato['celular'];
                                                $correo = $dato['correo'];
                                                $ano_for = $dato['ano_for'];
                                                // $especialidad = $dato['especialidad'];
                                                $tipo_matriculacion = $dato['tipo_matriculacion'];
                                                $nro_deposito_matricual = $dato['nro_deposito_matricual'];
                                                $foto_deposito_matricula = $dato['foto_deposito_matricula'];
                                                $documentos = $dato['documentos'];
                                                $contador = $contador + 1;
                                            ?>
                                                <tr>
                                                    <td><?php echo $contador; ?></td>
                                                    <td><?php echo $apellidos_nombres; ?></td>
                                                    <td><?php echo $ci; ?></td>
                                                    <td><?php echo $celular; ?></td>
                                                    <td><?php echo $correo; ?></td>
                                                    <td><?php echo $ano_for; ?></td>
                                                    <td><?php echo $tipo_matriculacion; ?></td>
                                                    <td><?php echo $nro_deposito_matricual; ?></td>
                                                    <td><a href="documentos/<?php echo $foto_deposito_matricula; ?>" class="btn btn-success btn-sm"><i class="fa fa-eye"></i> Ver</a></td>
                                                    <td><a href="documentos/<?php echo $documentos; ?>" class="btn btn-success btn-sm"> <i class="fa fa-eye"></i>Ver</a></td>

                                                </tr>
                                            <?php
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>
                <br>
            </div>
        </div>
    </div>



</body>

</html>