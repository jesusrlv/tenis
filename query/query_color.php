<?php
include('qconn/qc.php');

    $sqlColor = "SELECT * FROM color ORDER BY id";
    $resultado_sqlColor = $conn->query($sqlColor);
    // $row_sql = $resultado_sql->fetch_assoc();


?>