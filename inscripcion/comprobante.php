<?php

/**
 * Created by PhpStorm.
 * User: SISTEMAS
 * Date: 09/05/2019
 * Time: 12:48
 */

include('../app/config_tcpdf.php');
include('../app/TCPDF-master/tcpdf.php');
header("Content-type:application/pdf");

$pdf = new TCPDF('P', 'mm', 'Letter', true, 'UTF-8', false);
// create new PDF document
$pdf->SetTitle('Matriculación al sistema estudiantil'); //Titulo del pdf
$pdf->setPrintHeader(false); //No se imprime cabecera
$pdf->setPrintFooter(false); //No se imprime pie de pagina
$pdf->SetMargins(25, 20, 15, 20); //Se define margenes izquierdo, alto, derecho
$pdf->SetAutoPageBreak(true, 0); //Se define un salto de pagina con un limite de pie de pagina

// add a page
$pdf->AddPage();

$ci_estudiante = $_GET['ci'];
$query_datos = $pdo->prepare("SELECT * FROM tb_matriculacion WHERE ci = '$ci_estudiante'  ");
$query_datos->execute();
$query_datos = $query_datos->fetchAll(PDO::FETCH_ASSOC);
foreach ($query_datos as $dato) {

    $nombre = $dato['nombre'];
    $apellido = $dato['apellido'];
    $ci = $dato['ci'];
    $celular = $dato['celular'];
    $correo = $dato['correo'];
    $ano_for = $dato['ano_for'];
    $tipo_matriculacion = $dato['tipo_matriculacion'];
    $nro_deposito_matricual = $dato['nro_deposito_matricual'];
    $foto_deposito_matricula = $dato['foto_deposito_matricula'];
    $documentos = $dato['documentos'];
    $fyh_creacion = $dato['fyh_creacion'];

}


date_default_timezone_set("America/Bogota");
$fechaHora = date("Y-m-d H:i:s");
$fecha_del_sistema = date("Y-m-d");
$hora_del_sistema = date("H:i:s");
$estado_del_registro = "1";


$dia_actual = date("d");
$mes = date("m");
$ano = date("Y");


if ($mes == "01") {
    $mes = "enero";
}
if ($mes == "02") {
    $mes = "febrero";
}
if ($mes == "03") {
    $mes = "marzo";
}
if ($mes == "04") {
    $mes = "abril";
}
if ($mes == "05") {
    $mes = "mayo";
}
if ($mes == "06") {
    $mes = "junio";
}
if ($mes == "07") {
    $mes = "julio";
}
if ($mes == "08") {
    $mes = "agosto";
}
if ($mes == "09") {
    $mes = "septiembre";
}
if ($mes == "10") {
    $mes = "octubre";
}
if ($mes == "11") {
    $mes = "noviembre";
}
if ($mes == "12") {
    $mes = "diciembre";
}


$style = array(
    'border' => 1,
    'vpadding' => '3',
    'hpadding' => '3',
    'fgcolor' => array(0, 0, 0),
    'bgcolor' => false, //array(255,255,255)
    'module_width' => 1, // width of a single module in points
    'module_height' => 1 // height of a single module in points
);

// Image example with resizing
$pdf->Image(
    '../public2/imagenes/EdunexusImgComplete.png',
    165,
    10,
    25,
    30,
    'PNG',
    true,
    150,
    '',
    false,
    false,
    0,
    false,
    false,
    false
);
$pdf->Image(
    'https://images.unsplash.com/photo-1504275107627-0c2ba7a43dba?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHNjaG9vbHxlbnwwfHwwfHx8MA%3D%3D',
    10,
    230,
    190,
    50,
    'JPG',
    true,
    150,
    '',
    false,
    false,
    0,
    false,
    false,
    false
);


$html = ' 
<br><br><br><br><br>
<h2><p align="center"><u>Nombre de la institución educativa "Colegio Bogota Edunexus"</u><br><br>
<u>Sistema de Matriculación 1/2024</u>
</p>
</h2>
<br><br>
<p align="justify" style="font-size: 13px;word-spacing: 5pt;line-height: 20pt;">Yo ' . $nombre .' ' . $apellido . ' con C.I.: ' . $ci . ', estudiante de ' . $ano_for . ' doy fe que los datos registrados y cargados en el sistema de matriculación son fidedignos para su correspondiente trámite.</p>

<p align="rigth" style="font-size: 12px">Bogotá, Colombia, ' . $dia_actual . ' de ' . $mes . ' de ' . $ano . '</p>
<table>
<tr>
<td height="100px"></td>
</tr>
</table>
<p align="center">
_____________________________________ <br>
<b>' . $nombre .' ' . $apellido . '</b> <br>
<b>C.I.:</b> ' . $ci . '
</p>';

$pdf->SetFont('Helvetica', '', 10);
$pdf->writeHTML($html, true, 0, true, 0);

$pdf->Output('Comprobante .pdf', 'I');






