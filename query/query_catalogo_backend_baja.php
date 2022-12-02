<?php
include('qconn/qc.php');

    $sqlCatalogo = "SELECT * FROM tenis WHERE estatus = 0";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);


?>