<?php
$id_sess = $_SESSION['id'];

include('qconn/qc.php');

    //mes y año actual venta Admin
    $sql = "SELECT * FROM venta_gral WHERE YEAR(fecha_venta) = YEAR(CURRENT_DATE()) 
    AND MONTH(fecha_venta)  = MONTH(CURRENT_DATE()) AND vendedor = '$id_sess' ORDER BY id DESC";
    $resultado_sql = $conn->query($sql);

    //por fecha
    if(isset($_POST['fecha'])){
        $fechaBusqueda = $_POST['fecha'];
        $annio = substr($fechaBusqueda, 0, 4);
        $mes = substr($fechaBusqueda, 5, 2); 
        $sqlBusqueda = "SELECT * FROM venta_gral WHERE YEAR(fecha_venta) = $annio 
        AND MONTH(fecha_venta)  = $mes AND vendedor = '$id_sess' ORDER BY id DESC";
        $resultadoBusqueda = $conn->query($sqlBusqueda);
    }

?>