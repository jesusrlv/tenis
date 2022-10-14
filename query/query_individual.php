<?php
include('qconn/qc.php');
    if(isset($_REQUEST['venta'])){
        $id = $_REQUEST['venta'];
        //venta por id
        $sql = "SELECT * FROM venta_individual WHERE venta_gral = '$id' ORDER BY fecha_venta DESC LIMIT 20";
        $resultado_sql = $conn->query($sql);
        // $row_sql = $resultado_sql->fetch_assoc();
    }

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");

     //venta general
     $sqlInventario = "SELECT * FROM venta_individual WHERE YEAR(fecha_venta) = YEAR(CURRENT_DATE()) 
     AND MONTH(fecha_venta)  = MONTH(CURRENT_DATE()) ORDER BY id ASC";
     $resultadoInventario = $conn->query($sqlInventario);

        // $sqlInventario = "SELECT producto.venta_individual as producto,fecha_venta.venta_individual AS fecha_venta,talla.venta_individual AS talla, estatus.tenis AS estatus, marca.tenis AS marca, modelo.tenis AS modelo, tipo.tenis AS tipo, color.tenis AS color FROM venta_individual INNER JOIN tenis ON producto.venta_individual = id.tenis WHERE YEAR(fecha_venta.venta_individual) = YEAR(CURRENT_DATE()) 
        // AND MONTH(fecha_venta.venta_individual)  = MONTH(CURRENT_DATE()) ORDER BY id.venta_individual ASC";
        // $resultadoInventario = $conn->query($sqlInventario);

        // $sqlInventario = "SELECT producto.venta_individual as producto, fecha_venta.venta_individual AS fecha_venta, talla.venta_individual AS talla FROM venta_individual";
        $resultadoInventario = $conn->query($sqlInventario);

?>