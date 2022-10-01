<?php
include('qconn/qc.php');

$sql_catalogo = "SELECT * FROM tenis WHERE activo = 0";
$resultado_sql_catalogo= $conn->query($sql_catalogo);


?>