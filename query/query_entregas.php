<?php
include('qconn/qc.php');

    $sql = "SELECT * FROM pedidos WHERE codigo_envio_interno = '$id_envio' ORDER BY fecha_registro DESC";
    $resultado_sql = $conn->query($sql);

?>