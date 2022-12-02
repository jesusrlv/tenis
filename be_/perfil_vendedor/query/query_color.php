<?php
include('qconn/qc.php');

    $sqlColor = "SELECT * FROM color ORDER BY id";
    $resultado_sqlColor = $conn->query($sqlColor);

?>