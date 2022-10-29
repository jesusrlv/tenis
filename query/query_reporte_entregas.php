<?php
include('qconn/qc.php');

date_default_timezone_set('America/Mexico_City');
setlocale(LC_TIME, 'es_MX.UTF-8');
$fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");

    $idUsr = $_REQUEST['id'];

    $QueryUser ="SELECT * FROM usr WHERE id = '$idUsr'";
    $ResultadoQuery = $conn->query($QueryUser);
    $rowQuery = $ResultadoQuery->fetch_assoc();
    $userQ = $rowQuery['usr'];

    $sqlReporteEntregas = "SELECT venta_gral.cantidad as cantidad, venta_gral.nombre as nombre, venta_gral.direccion as direccion, venta_gral.telefono as telefono, venta_gral.clave_rastreo_int as clave_rastreo_int, venta_gral.entrega as entrega, pedidos.estatus_entrega as estatus_entrega, pedidos.id_ext_usr as entrega FROM venta_gral INNER JOIN pedidos ON venta_gral.clave_rastreo_int = pedidos.id_ext_tenis WHERE YEAR(pedidos.fecha_pedido) = YEAR(CURRENT_DATE()) AND MONTH(pedidos.fecha_pedido) = MONTH(CURRENT_DATE()) AND id_ext_usr =  '$userQ'";

    $resultado_sql = $conn->query($sqlReporteEntregas);

    //por fecha
    if(isset($_POST['fecha'])){
        $fechaBusqueda = $_POST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT * FROM venta_gral WHERE YEAR(fecha_venta) = $annio 
        AND MONTH(fecha_venta)  = $mes AND vendedor = '$idReporte' ORDER BY id DESC";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }
    //fecha para excel
    if(isset($_REQUEST['fecha'])){
        $fechaBusqueda = $_REQUEST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT * FROM venta_gral WHERE YEAR(fecha_venta) = $annio 
        AND MONTH(fecha_venta)  = $mes AND vendedor = '$idReporte' ORDER BY id DESC";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }

 
        //mes y año actual venta entregas
        $sql_entrega = "SELECT * FROM venta_gral WHERE YEAR(fecha_venta) = YEAR(CURRENT_DATE()) 
        AND MONTH(fecha_venta)  = MONTH(CURRENT_DATE()) AND apartado = 2 ORDER BY id DESC";
        $resultado_sql_entregas = $conn->query($sql_entrega);

        //por fecha venta entregas
        if(isset($_POST['fecha2'])){
            $fechaBusqueda2 = $_POST['fecha2'];
            $annio = substr($fechaBusqueda2, 0, 4);
            $mes = substr($fechaBusqueda2, 5, 2); 
            $sqlBusqueda = "SELECT * FROM venta_gral WHERE YEAR(fecha_venta) = $annio 
            AND MONTH(fecha_venta)  = $mes ORDER BY id DESC";
            $resultadoBusqueda2 = $conn->query($sqlBusqueda);
        }
?>