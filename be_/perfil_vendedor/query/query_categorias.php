<?php
include('../../query/qconn/qc.php');

    $sqlCategorias = "SELECT * FROM catalogo";
    $resultado_sqlCategorias = $conn->query($sqlCategorias);
?>