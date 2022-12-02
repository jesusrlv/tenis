<?php
include('../../query/qconn/qc.php');


    $sqlTalla = "SELECT * FROM talla WHERE id_ext = '$id_talla' ORDER BY talla ASC";
    $resultado_sqlTalla = $conn->query($sqlTalla);

?>