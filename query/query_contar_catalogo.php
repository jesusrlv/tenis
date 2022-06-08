<?php
include('qconn/qc.php');
    $sqlContar = "SELECT producto AS PRODUCTO, talla AS TALLA, COUNT(producto) AS VENTAT FROM venta_individual GROUP BY producto,talla";
    $sqlResult = $conn->query($sqlContar);
?>

<!-- SELECT producto.nombre AS nombreP,talla.talla AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext; -->