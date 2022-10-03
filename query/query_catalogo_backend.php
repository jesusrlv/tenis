<?php
include('qconn/qc.php');

// $sql_catalogo = "SELECT * FROM tenis WHERE activo = 1";
// $resultado_sql_catalogo= $conn->query($sql_catalogo);

    $sqlCatalogo = "SELECT * FROM tenis WHERE estatus = 1";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);

?>