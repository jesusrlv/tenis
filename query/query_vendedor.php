<?php
include('qconn/qc.php');
//entrega
$sql_entrega = "SELECT * FROM usr WHERE perfil=2";
$resultado_sql_entrega= $conn->query($sql_entrega);

//vendedor
$sql_vendedor = "SELECT * FROM usr WHERE perfil=3";
$resultado_sql_vendedor= $conn->query($sql_vendedor);


?>