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
    <title>Edunexus</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="stylesheet" href="<?php echo $URL;?>/public/css/bootstrap.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <script src="<?php echo $URL;?>/public/js/jquery-3.5.1.min.js"></script>
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
           <h1 style="color: #005cbf">Edunexus Class</h1>
        </div>
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <img src="../public/img/logoEdunexus-removebg-preview.png"
                 style="margin-top: 10px;float: right" width="100px" alt="">
        </div>
    </div>
    <br>
    <h2 ALIGN="center">Nombre de la institución educativa "Colegio Bogota Edunexus"</h2>
    <div class="row" style="background-color: #071452;color:#ffffff;height: 50px">
        <div class="col-md-12">
            <center>
                <h4 style="margin-top: 10px">MATRICULACIÓN 1/2024</h4></center>
        </div>
    </div>
    <div class="row">
        <div class="container" style="width: 95%">
            <br>
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-primary" style="box-shadow: 0px 5px 5px 5px #c0c0c0">
                        <div class="card-header">
                            Registre sus datos
                        </div>
                        <div class="card-body">
                            <form action="controller_create.php" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="">APELLIDOS Y NOMBRES (MAYÚSCULA) </label>
                                            <input type="text" name="apellidos_nombres" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="">CEDULA DE IDENTIDAD </label>
                                            <input type="number" name="ci" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="" style="font-size: 13px">NÚMERO DE CELULAR</label>
                                            <input type="number" name="celular" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="" style="font-size: 13px">CORREO ELECTRONICO</label>
                                            <input type="email" name="correo" class="form-control" required>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">AÑO DE FORMACIÓN </label>
                                            <select name="ano_for" id="" class="form-control" required>
                                                <option value="PRIMERO">PRIMERO</option>
                                                <option value="SEGUNDO">SEGUNDO</option>
                                                <option value="TERCERO">TERCERO</option>
                                                <option value="CUARTO">CUARTO</option>
                                                <option value="QUINTO">QUINTO</option>
                                                <option value="SEXTO">SEXTO</option>
                                                <option value="SEPTIMO">SEPTIMO</option>
                                                <option value="OCTAVO">OCTAVO</option>
                                                <option value="NOVENO">NOVENO</option>
                                                <option value="DECIMO">DECIMO</option>
                                                <option value="ONCE">ONCE</option>
                                            </select>
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">ESPECIALIDAD </label>
                                            <select name="especialidad" id="" class="form-control" required>
                                                <option value="INGENIERIA DE SISTEMAS">INGENIERIA DE SISTEMAS</option>
                                                <option value="CONTADURIA PUBLICA">CONTADURIA PUBLICA</option>
                                                <option value="DISEÑO GRAFICO">DISEÑO GRAFICO</option>
                                                <option value="COMUNICACIÓN SOCIAL">COMUNICACIÓN SOCIAL</option>
                                                <option value="ELECTRONICA">ELECTRONICA</option>
                                            </select>
                                        </div>
                                    </div> -->
                                </div>



                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="">TIPO DE MATRICULACIÓN </label>
                                            <select name="tipo_matriculacion" id="" class="form-control" required>
                                                <option value="ESTUDIANTE REGULAR ( $300.000)">
                                                    ESTUDIANTE REGULAR ( $300.000)
                                                </option>
                                                <option value="ESTUDIANTE PROFESIONAL ($400.000)">
                                                    ESTUDIANTE PROFESIONAL ($400.000)
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <hr>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">NÚMERO DE DEPOSITO (MATRÍCULA) EJEMPLO: (10XXXXX3)  </label>
                                            <input type="text" name="nro_deposito_matricual" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">ADJUNTAR EL ESCANEADO DEL DEPÓSITO (MATRICULA) </label>
                                            <input type="file" name="foto_deposito_matricula" class="form-control" required>
                                        </div>
                                    </div>
                                </div>

                                <hr>

                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <label for="">DOCUMENTOS EN FORMATO (PDF) QUE ADJUNTA PARA LA UNIDAD DE ARCHIVO KARDEX (TODO EN UN SOLO ARCHIVO)</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="" style="font-size: 16px">Adjuntar archivo PDF
                                            </label>
                                            <input type="file" name="documentos" class="form-control" required>
                                        </div>
                                    </div>
                                </div>

                                <hr>
                                <center>
                                    <button type="submit" class="btn btn-primary btn-lg" onclick="return confirm('Por favor revisa bien los datos antes de enviar');">
                                        <i class="fa fa-save"></i> Registrar matriculación
                                    </button>
                                </center>

                            </form>
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
