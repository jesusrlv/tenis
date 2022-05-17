<?php
include('qconn/qc.php');

    $sql = "SELECT * FROM envios WHERE codigo_envio_interno = '$id_envio' ORDER BY fecha_registro DESC";
    $resultado_sql = $conn->query($sql);
    // $row_sql = $resultado_sql->fetch_assoc();


?>