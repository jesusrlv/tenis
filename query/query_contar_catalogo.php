<?php
    $sqlContar = "SELECT producto AS PRODUCTO, COUNT(producto) AS VENTAT FROM venta_individual GROUP BY producto";
    $sqlResult = $conn->query($sqlContar);
?>