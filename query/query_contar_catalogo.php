<?php
include('../query/qconn/qc.php');

    $sqlContar = "SELECT tenis.marca AS marcaP,tenis.modelo AS modeloP,talla.inventario AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext";
    $sqlResult = $conn->query($sqlContar);
    $sqlCatalogo = "SELECT tenis.marca as marca, tenis.modelo as modelo, tenis.tipo as tipo, tenis.color as color, tenis.hombre_mujer as hombremujer, inventario.cantidad as cantidad, inventario.talla as talla FROM tenis INNER JOIN inventario ON tenis.id = inventario.id_ext_tenis";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);

?>