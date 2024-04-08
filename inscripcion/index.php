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
<!--    Conexion directa a Boostrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<!--    Font Poppins-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<!--    Icono para nuestra pagina web-->
    <link rel="icon" type="image/x-icon" href="../public2/imagenes/edunexus.ico">
<!--    Conexion a nuestros estilos-->
    <link rel="stylesheet" href="../public2/styles/style.css">
    <script src="../public2/js/jquery-3.5.1.min.js"></script>
<!--    Conexion a iconos de fontawesome-->
    <script src="https://kit.fontawesome.com/336c45c689.js" crossorigin="anonymous"></script>
</head>
<body style=" background-image: url('https://cdn.pixabay.com/photo/2021/10/06/05/17/learn-6684425__340.jpg');
    background-repeat: no-repeat;
    z-index: -3;
    background-size: 100vw 100vh;background-attachment: fixed">

<br><br>

<div class="container" style="background-color: #ffffff">
    <div class="row">
        <div class="col-md-6">
            <br>
           <h1 style="color: #005c">EDUNEXUS Colegio Bogotá</h1>
        </div>
        <div class="col-md-6">
            <img src="../public2/imagenes/eduneuxBG.png"
                 style="margin-top: 10px;float: right" width="100px" alt="">
        </div>
    </div>
    <br>
    <h2 ALIGN="center" style="margin-bottom: 1.3rem "">Nombre de la institución educativa "Colegio Bogota Edunexus"</h2>
    <div class="row" style="background-color: #071452;color:#ffffff;height: 50px">
        <div class="col-md-12">
            <center>
                <h4 style="margin-top: 10px">MATRICULACIÓN 1/2024</h4>
            </center>
        </div>
    </div>
    <div class="row">
        <div class="container" style="width: 95%">
            <br>
            <div class="row">
                <div class="col-md-12">
                    <div class="card card-primary" style="box-shadow: 0px 5px 5px 5px #c0c0c0">
                        <div class="card-header" style="font-size: 1.5rem">
                            Registre los datos del estudiante
                        </div>
                        <div class="card-body">
                            <form action="controller_create.php" method="post" enctype="multipart/form-data">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="nombre">Nombre</label>
                                            <input type="text" name="nombre" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="apellido">Apellido</label>
                                            <input type="text" name="apellido" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="ci">Tarjeta de Identidad </label>
                                            <input type="number" name="ci" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="celular" >Número de Celular</label>
                                            <input type="number" name="celular" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="correo">Correo Electrónico</label>
                                            <input type="email" name="correo" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="genero">Sexo</label>
                                            <select name="genero" id="genero" class="form-control" required>
                                                <option value="male">Masculino</option>
                                                <option value="female">Femenino</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="ano_for">Año de Formación</label>
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
                                </div>
                                <br>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="tipo_matriculacion">Tipo de Matriculación </label>
                                            <select name="tipo_matriculacion" id="tipo_matriculacion" class="form-control" required>
                                                <option value="ESTUDIANTE REGULAR ( $1.000.000)">
                                                    ESTUDIANTE REGULAR ( $1.000.000)
                                                </option>
                                                <option value="ESTUDIANTE PROFESIONAL ($1.400.000)">
                                                    ESTUDIANTE PROFESIONAL ($1.400.000)
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <hr>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="nro_deposito_matricula">Número de Deposito(Matrícula) Ejemplo: (10XXXXX3)  </label>
                                            <input type="text" name="nro_deposito_matricual" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Adjuntar el escaneado del depósito (Matrícula) </label>
                                            <input type="file" name="foto_deposito_matricula" class="form-control" required>
                                        </div>
                                    </div>
                                </div>

                                <hr>

                                <div class="row">
                                    <div class="col-md-10">
                                        <div class="form-group">
                                            <label for="">Documentos en formato (pdf) que adjunta para la unidad de archivo Kardex (todo en un solo archivo)</label>
                                        </div>
                                    </div>
                                </div>

                                <br>

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

                                <button type="submit" class="form-control btn btn-success btn-lg" onclick="return confirm('Por favor revisa bien los datos antes de enviar');">
                                    <i class="fas fa-save"></i> Registrar matriculación
                                    </button>
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
