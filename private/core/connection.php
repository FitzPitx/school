<?php
require_once 'C:/xampp/htdocs/school/vendor/autoload.php';

class Conexion {
    public function conectar() {
        try {
            // Cadena de conexión MongoDB Atlas
            $cadenaConexion = "mongodb+srv://admin:Admin123*@proyectocolegio.8lzamvn.mongodb.net/";

            $cliente = new MongoDB\Client($cadenaConexion);

            
            $nombreBaseDatos = "colegio"; 
            $baseDatos = $cliente->selectDatabase($nombreBaseDatos);

            $coleccionAcudientes = $baseDatos->acudientes;
            $resultadosAcudientes = $coleccionAcudientes->find();
            $acudientes = iterator_to_array($resultadosAcudientes);

            $coleccionGrado = $baseDatos->grado;
            $resultadosGrado = $coleccionGrado->find();
            $grados = iterator_to_array($resultadosGrado);

            $coleccionGrupo = $baseDatos->grupos;
            $resultadosGrupo = $coleccionGrupo->find();
            $grupos = iterator_to_array($resultadosGrupo);

            // Convertir los resultados en formato JSON
            $datosJSON = [
                'acudientes' => $acudientes,
                'grados' => $grados,
                'grupos' => $grupos
            ];

            // Convertir el JSON en una cadena con cada línea separada
            $jsonString = json_encode($datosJSON, JSON_PRETTY_PRINT);
            $lineasJSON = explode("\n", $jsonString);

            // Imprimir cada línea del JSON
            foreach ($lineasJSON as $linea) {
                echo $linea . PHP_EOL;
            }

        } catch (Throwable $th) {
            // Manejo de errores
            return $th->getMessage();
        }
    }
}

// Instanciar la clase y llamar al método conectar
$conexion = new Conexion();
$conexion->conectar();
?>
