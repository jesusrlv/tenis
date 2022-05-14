<?php
include('qconn/qc.php');

    $sqlCategorias = "SELECT * FROM catalogo";
    $resultado_sqlCategorias = $conn->query($sqlCategorias);
    // $row_sql = $resultado_sql->fetch_assoc();


?>