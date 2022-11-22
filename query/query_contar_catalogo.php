<?php
include('../query/qconn/qc.php');

    $sqlContar = "SELECT tenis.marca AS marcaP,tenis.modelo AS modeloP,talla.inventario AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext";
    $sqlResult = $conn->query($sqlContar);
    
    $sqlCatalogo = "SELECT tenis.marca as marca, tenis.modelo as modelo, tenis.tipo as tipo, tenis.color as color, tenis.hombre_mujer as hombremujer, inventario.cantidad as cantidad, inventario.talla as talla FROM tenis INNER JOIN inventario ON tenis.id = inventario.id_ext_tenis WHERE YEAR(inventario.fecha) = YEAR(CURRENT_DATE()) 
    AND MONTH(inventario.fecha)  = MONTH(CURRENT_DATE())";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);

    //por fecha
    if(isset($_POST['fecha'])){
        $fechaBusqueda = $_POST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT tenis.marca as marca, tenis.modelo as modelo, tenis.tipo as tipo, tenis.color as color, tenis.hombre_mujer as hombremujer, inventario.cantidad as cantidad, inventario.talla as talla FROM tenis INNER JOIN inventario ON tenis.id = inventario.id_ext_tenis WHERE YEAR(inventario.fecha) = $annio 
        AND MONTH(inventario.fecha)  = $mes";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }

?>