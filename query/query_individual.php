<?php
include('qconn/qc.php');

$id = $_REQUEST['venta'];

    $sql = "SELECT * FROM venta_individual WHERE venta_gral = '$id' ORDER BY fecha_venta DESC LIMIT 20";
    $resultado_sql = $conn->query($sql);
    // $row_sql = $resultado_sql->fetch_assoc();


?>