<?php
include('qconn/qc.php');

    $sqlTalla = "SELECT * FROM color_inventario WHERE id_ext = '$id_talla' ORDER BY color ASC";
    $resultado_sqlTalla = $conn->query($sqlTalla);
    // $row_sql = $resultado_sql->fetch_assoc();


?>