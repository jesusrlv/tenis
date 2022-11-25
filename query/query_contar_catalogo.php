<?php
include('../query/qconn/qc.php');

    $sqlContar = "SELECT tenis.marca AS marcaP,tenis.modelo AS modeloP,talla.inventario AS talla ,producto.cantidad AS cantidadP,talla.cantidad AS cantidadV FROM producto INNER JOIN talla ON producto.id = talla.id_ext";
    $sqlResult = $conn->query($sqlContar);
    
    // $sqlCatalogo = "SELECT tenis.marca as marca, tenis.modelo as modelo, tenis.tipo as tipo, tenis.color as color, tenis.hombre_mujer as hombremujer, inventario.cantidad as cantidad, inventario.talla as talla FROM tenis INNER JOIN inventario ON tenis.id = inventario.id_ext_tenis WHERE YEAR(inventario.fecha) = YEAR(CURRENT_DATE()) 
    // AND MONTH(inventario.fecha)  = MONTH(CURRENT_DATE())";
    // $sqlResultCatalgo = $conn->query($sqlCatalogo);

    // consulta x venta_ind -> inventario
    // $sqlCatalogo = "SELECT venta_individual.producto as producto, venta_individual.fecha_venta as fecha_venta, venta_individual.entrega as entrega, inventario.cantidad as cantidad, inventario.talla as talla FROM venta_individual INNER JOIN inventario ON venta_individual.producto = inventario.id_ext_tenis WHERE YEAR(venta_individual.fecha_venta) = YEAR(CURRENT_DATE()) 
    // AND MONTH(venta_individual.fecha_venta) = MONTH(CURRENT_DATE())";

    // consulta x venta_ind -> inventario
    $sqlCatalogo = "SELECT venta_individual.producto as producto, venta_individual.fecha_venta as fecha_venta, COUNT(venta_individual.producto) as cuentaProd, venta_individual.entrega as entrega, inventario.cantidad as cantidad, inventario.talla as talla FROM venta_individual INNER JOIN inventario ON venta_individual.producto = inventario.id_ext_tenis WHERE YEAR(venta_individual.fecha_venta) = YEAR(CURRENT_DATE()) 
    AND MONTH(venta_individual.fecha_venta) = MONTH(CURRENT_DATE()) AND venta_individual.entrega = 1 GROUP BY inventario.talla";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);

    //por fecha
    // if(isset($_POST['fecha'])){
    //     $fechaBusqueda = $_POST['fecha'];
    //     $annio = substr($fechaBusqueda, 0, 4);
    //     $mes = substr($fechaBusqueda, 5, 2); 
    //     $sqlBusqueda = "SELECT tenis.marca as marca, tenis.modelo as modelo, tenis.tipo as tipo, tenis.color as color, tenis.hombre_mujer as hombremujer, inventario.cantidad as cantidad, inventario.talla as talla FROM tenis INNER JOIN inventario ON tenis.id = inventario.id_ext_tenis WHERE YEAR(inventario.fecha) = $annio 
    //     AND MONTH(inventario.fecha)  = $mes";
    //     $resultadoBusqueda = $conn->query($sqlBusqueda);
    // }

    //por fecha
    if(isset($_POST['fecha'])){
        $fechaBusqueda = $_POST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT venta_individual.producto as producto, venta_individual.fecha_venta as fecha_venta, COUNT(venta_individual.producto) as cuentaProd, venta_individual.entrega as entrega, inventario.cantidad as cantidad, inventario.talla as talla FROM venta_individual INNER JOIN inventario ON venta_individual.producto = inventario.id_ext_tenis WHERE YEAR(venta_individual.fecha_venta) = $annio 
        AND MONTH(venta_individual.fecha_venta) = $mes AND venta_individual.entrega = 1 GROUP BY inventario.talla";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }

    //por fecha
    if(isset($_REQUEST['fecha'])){
        $fechaBusqueda = $_REQUEST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT venta_individual.producto as producto, venta_individual.fecha_venta as fecha_venta, COUNT(venta_individual.producto) as cuentaProd, venta_individual.entrega as entrega, inventario.cantidad as cantidad, inventario.talla as talla FROM venta_individual INNER JOIN inventario ON venta_individual.producto = inventario.id_ext_tenis WHERE YEAR(venta_individual.fecha_venta) = $annio 
        AND MONTH(venta_individual.fecha_venta) = $mes AND venta_individual.entrega = 1 GROUP BY inventario.talla";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }

?>