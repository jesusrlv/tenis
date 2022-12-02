<?php
include('qconn/qc.php');

$id = $_REQUEST['venta'];

    $sql = "SELECT * FROM venta_individual WHERE venta_gral = '$id' ORDER BY fecha_venta DESC";
    $resultado_sql = $conn->query($sql);

?>