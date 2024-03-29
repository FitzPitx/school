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



// create new PDF document
$pdf = new TCPDF('P', 'mm', 'Letter', true, 'UTF-8', false);
$pdf->SetTitle('Ministerio de Educación'); //Titlo del pdf
$pdf->setPrintHeader(false); //No se imprime cabecera
$pdf->setPrintFooter(false); //No se imprime pie de pagina
$pdf->SetMargins(25, 20, 15, 20); //Se define margenes izquierdo, alto, derecho
$pdf->SetAutoPageBreak(true, 0); //Se define un salto de pagina con un limite de pie de pagina
// set a barcode on the page footer
$pdf->setBarcode(date('Y-m-d H:i:s'));
$pdf->SetFont('helvetica', '', 11);
// add a page
$pdf->AddPage();




$ci_estudiante = $_GET['ci'];


$query_datos = $pdo->prepare("SELECT * FROM tb_matriculacion WHERE ci = '$ci_estudiante'  ");
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




//mestra <b>'.$ue.'</b>
$style = array(
    'border' => 1,
    'vpadding' => '3',
    'hpadding' => '3',
    'fgcolor' => array(0, 0, 0),
    'bgcolor' => false, //array(255,255,255)
    'module_width' => 1, // width of a single module in points
    'module_height' => 1 // height of a single module in points
);

$QR = 'Este documento pertenece al estudiante' . $apellidos_nombres . ' del ' . $ano_for . ' que se registro en fecha' . $fyh_creacion;
$pdf->write2DBarcode($QR, 'QRCODE,L', 160, 125, 30, 30, $style);

// Image example with resizing


$pdf->Image(
    '../public/img/logoEdunexus-removebg-preview.png',
    165,
    10,
    25,
    30,
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
$pdf->Image(
    'https://cdn.pixabay.com/photo/2021/10/06/05/17/learn-6684425_960_720.jpg',
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


// define barcode style
$style2 = array(
    'position' => '',
    'align' => 'C',
    'stretch' => false,
    'fitwidth' => true,
    'cellfitalign' => '',
    'border' => false,
    'hpadding' => 'auto',
    'vpadding' => 'auto',
    'fgcolor' => array(0, 0, 0),
    'bgcolor' => false, //array(255,255,255),
    'text' => true,
    'font' => 'helvetica',
    'fontsize' => 8,
    'stretchtext' => 4
);



$html = '
<br><br><br><br><br>
<h2><p align="center"><u>Nombre de la institución educativa "Colegio Bogota Edunexus"</u> <br><br>
<u>Sistema de Matriculación 1/2024</u>
</p>    
</h2>
<br><br>
<p align="justify" style="font-size: 13px;word-spacing: 5pt;line-height: 20pt;">Yo ' . $apellidos_nombres . ' con C.I.: ' . $ci . ', estudiante de ' . $ano_for . ' doy fe que los datos registrados y cargados en el sistema de matriculación son fidedignos para su correspondiente trámite.</p>

<p align="rigth" style="font-size: 12px">Bogotá, Colombia, ' . $dia_actual . ' de ' . $mes . ' de ' . $ano . '</p>

<table>
<tr>
<td height="100px"></td>
</tr>
</table>
<p align="center">
_____________________________________ <br>
<b>' . $apellidos_nombres . '</b> <br>
<b>C.I.:</b> ' . $ci . '
</p>
';


$pdf->SetFont('Helvetica', '', 10);
$pdf->writeHTML($html, true, 0, true, 0);
//$pdf->writeHTML($html, $linebreak = true, $fill = false, $reseth = true, $cell = false, $align = '');

// write RAW 2D Barcode
// QRCODE,L : QR-CODE Low error correction




//$content = $pdf->Output('','S');
//file_put_contents('comisionesPDF/Comision de '.$nombre.'.pdf',$content );

//Close and output PDF document
$pdf->Output('Comprobante .pdf', 'I');
