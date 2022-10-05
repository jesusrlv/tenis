<?php
include('../query/qconn/qc.php');
    // $sqlContar = "SELECT producto AS PRODUCTO, talla AS TALLA, COUNT(producto) AS VENTAT FROM venta_individual GROUP BY producto,talla";
    
    // $sqlContar = "SELECT producto.nombre AS nombreP,talla.talla AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext";
    // $sqlResult = $conn->query($sqlContar);

    $sqlContar = "SELECT tenis.marca AS marcaP,tenis.modelo AS modeloP,talla.inventario AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext";
    $sqlResult = $conn->query($sqlContar);
        
    $sqlCatalogo = "SELECT * FROM inventario";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);

?>

<!-- SELECT producto.nombre AS nombreP,talla.talla AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext; -->