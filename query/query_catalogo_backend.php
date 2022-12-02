<?php
include('qconn/qc.php');

    $sqlCatalogo = "SELECT * FROM tenis WHERE estatus = 1";
    $sqlResultCatalgo = $conn->query($sqlCatalogo);

?>