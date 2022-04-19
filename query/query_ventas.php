<?php
include('qconn/qc.php');

    $sql = "SELECT * FROM venta_gral ORDER BY fecha_venta DESC LIMIT 20";
    $resultado_sql = $conn->query($sql);
    // $row_sql = $resultado_sql->fetch_assoc();


?>