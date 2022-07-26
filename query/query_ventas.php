<?php
include('qconn/qc.php');

    $sql = "SELECT * FROM venta_gral ORDER BY id DESC LIMIT 30";
    $resultado_sql = $conn->query($sql);
    // $row_sql = $resultado_sql->fetch_assoc();

    $sql_entrega = "SELECT * FROM venta_gral WHERE apartado = 2 ORDER BY id DESC LIMIT 30";
    $resultado_sql_entregas = $conn->query($sql_entrega);

?>