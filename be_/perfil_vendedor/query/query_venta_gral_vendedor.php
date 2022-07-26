<?php
session_start();
$id_sess = $_SESSION['id'];
include('../../query/qconn/qc.php');

    // $sql_ini = "SELECT * FROM catalogo WHERE id ='$id_catalogo'";
    $sql_ini = "SELECT * FROM catalogo WHERE id ='$id_sess'";
    $resultado_sql_ini= $conn->query($sql_ini);
    $row_sql_ini = $resultado_sql_ini->fetch_assoc();

?>