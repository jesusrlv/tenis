<?php
include('qconn/qc.php');
    if(isset($_REQUEST['venta'])){
        $id = $_REQUEST['venta'];
        $sql = "SELECT * FROM venta_individual WHERE venta_gral = '$id' ORDER BY fecha_venta DESC LIMIT 20";
        $resultado_sql = $conn->query($sql);
    }

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");

     //venta general
     $sqlInventario = "SELECT * FROM venta_individual WHERE YEAR(fecha_venta) = YEAR(CURRENT_DATE()) 
     AND MONTH(fecha_venta)  = MONTH(CURRENT_DATE()) ORDER BY id ASC";
     $resultadoInventario = $conn->query($sqlInventario);

?>