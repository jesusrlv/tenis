<?php
include('qconn/qc.php');

// $sql_catalogo = "SELECT * FROM catalogo";
// $resultado_sql_catalogo= $conn->query($sql_catalogo);
$sqlColores = "SELECT * FROM color";
$resultadoColores= $conn->query($sqlColores);

$sqlMarcas = "SELECT * FROM marcas";
$resultadoMarcas= $conn->query($sqlMarcas);


?>