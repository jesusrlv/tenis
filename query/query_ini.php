<?php

include('qconn/qc.php');

    $sql_ini = "SELECT * FROM catalogo WHERE id ='$id_catalogo'";
    $resultado_sql_ini= $conn->query($sql_ini);
    $row_sql_ini = $resultado_sql_ini->fetch_assoc();

?>