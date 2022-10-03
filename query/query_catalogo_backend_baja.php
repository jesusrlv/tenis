<?php
include('qconn/qc.php');

// $sql_catalogo = "SELECT * FROM tenis WHERE activo = 0";
// $resultado_sql_catalogo= $conn->query($sql_catalogo);

    $sqlCatalogo = "SELECT * FROM tenis WHERE estatus = 0";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);


?>