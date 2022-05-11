<?php
include('qconn/qc.php');

    $sqlTalla = "SELECT * FROM talla WHERE id_ext = '$id_talla' ORDER BY id";
    $resultado_sqlTalla = $conn->query($sqlTalla);
    // $row_sql = $resultado_sql->fetch_assoc();


?>