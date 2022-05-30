<?php
include('qconn/qc.php');

    $sql = "SELECT * FROM venta_gral ORDER BY id DESC LIMIT 30";
    $resultado_sql = $conn->query($sql);
    // $row_sql = $resultado_sql->fetch_assoc();


?>