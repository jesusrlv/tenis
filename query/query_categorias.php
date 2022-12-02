<?php
include('qconn/qc.php');

    $sqlCategorias = "SELECT * FROM catalogo";
    $resultado_sqlCategorias = $conn->query($sqlCategorias);

?>