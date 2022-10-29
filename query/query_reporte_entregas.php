<?php
include('qconn/qc.php');

date_default_timezone_set('America/Mexico_City');
setlocale(LC_TIME, 'es_MX.UTF-8');
$fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");

    $idUsr1 = $_REQUEST['id'];

    $QueryUser ="SELECT * FROM usr WHERE id = '$idUsr1'";
    $ResultadoQuery = $conn->query($QueryUser);
    $rowQuery = $ResultadoQuery->fetch_assoc();
    $userQ1 = $rowQuery['usr'];

    $sqlReporteEntregas = "SELECT venta_gral.cantidad as cantidad, venta_gral.nombre as nombre, venta_gral.direccion as direccion, venta_gral.telefono as telefono, venta_gral.clave_rastreo_int as clave_rastreo_int, venta_gral.entrega as entrega, pedidos.estatus_entrega as estatus_entrega, pedidos.id_ext_usr as entrega FROM venta_gral INNER JOIN pedidos ON venta_gral.clave_rastreo_int = pedidos.id_ext_tenis WHERE YEAR(pedidos.fecha_pedido) = YEAR(CURRENT_DATE()) AND MONTH(pedidos.fecha_pedido) = MONTH(CURRENT_DATE()) AND pedidos.id_ext_usr =  '$userQ1'";
    $resultado_sql = $conn->query($sqlReporteEntregas);

    //por fecha
    if(isset($_POST['fecha'])){
        $idUsr2 = $_POST['id'];
        $QueryUser ="SELECT * FROM usr WHERE id = '$idUsr2'";
        $ResultadoQuery = $conn->query($QueryUser);
        $rowQuery = $ResultadoQuery->fetch_assoc();
        $userQ2 = $rowQuery['usr'];

        $fechaBusqueda = $_POST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT venta_gral.cantidad as cantidad, venta_gral.nombre as nombre, venta_gral.direccion as direccion, venta_gral.telefono as telefono, venta_gral.clave_rastreo_int as clave_rastreo_int, venta_gral.entrega as entrega, pedidos.estatus_entrega as estatus_entrega, pedidos.id_ext_usr as entrega FROM venta_gral INNER JOIN pedidos ON venta_gral.clave_rastreo_int = pedidos.id_ext_tenis WHERE YEAR(pedidos.fecha_pedido) = $annio AND MONTH(pedidos.fecha_pedido) = $mes AND pedidos.id_ext_usr = '$userQ2'";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }
    //excel por fecha
    if(isset($_REQUEST['fecha'])){
        $idUsr2 = $_REQUEST['id'];
        $QueryUser ="SELECT * FROM usr WHERE id = '$idUsr2'";
        $ResultadoQuery = $conn->query($QueryUser);
        $rowQuery = $ResultadoQuery->fetch_assoc();
        $userQ2 = $rowQuery['usr'];

        $fechaBusqueda = $_REQUEST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT venta_gral.cantidad as cantidad, venta_gral.nombre as nombre, venta_gral.direccion as direccion, venta_gral.telefono as telefono, venta_gral.clave_rastreo_int as clave_rastreo_int, venta_gral.entrega as entrega, pedidos.estatus_entrega as estatus_entrega, pedidos.id_ext_usr as entrega FROM venta_gral INNER JOIN pedidos ON venta_gral.clave_rastreo_int = pedidos.id_ext_tenis WHERE YEAR(pedidos.fecha_pedido) = $annio AND MONTH(pedidos.fecha_pedido) = $mes AND pedidos.id_ext_usr = '$userQ2'";
        $resultadoBusquedaExcel = $conn->query($sqlBusqueda);
    }
?>