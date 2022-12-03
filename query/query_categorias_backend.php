<?php
include('qconn/qc.php');

$sqlColores = "SELECT * FROM color";
$resultadoColores= $conn->query($sqlColores);

$sqlMarcas = "SELECT * FROM marcas";
$resultadoMarcas= $conn->query($sqlMarcas);

$sqlModelo = "SELECT * FROM modelo";
$resultadoModelo= $conn->query($sqlModelo);

$sqlMaterial = "SELECT * FROM material";
$resultadoMaterial= $conn->query($sqlMaterial);

?>