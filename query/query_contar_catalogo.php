<?php
include('qconn/qc.php');
    $sqlContar = "SELECT producto AS PRODUCTO, talla AS TALLA, COUNT(producto) AS VENTAT FROM venta_individual GROUP BY producto,talla";
    $sqlResult = $conn->query($sqlContar);
?>