<?php
$id_sess = $_SESSION['id'];

include('qconn/qc.php');

    $sql = "SELECT * FROM venta_gral WHERE vendedor='$id_sess' ORDER BY id DESC LIMIT 30";
    $resultado_sql = $conn->query($sql);

?>