<?php
include('qconn/qc.php');

    $sqlTalla = "SELECT * FROM inventario WHERE id_ext_tenis = '$id_talla' ORDER BY talla ASC";
    $resultado_sqlTalla = $conn->query($sqlTalla);

?>