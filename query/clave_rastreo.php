<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
session_start();
include('qconn/qc.php');

date_default_timezone_set('America/Mexico_City');
setlocale(LC_TIME, 'es_MX.UTF-8');
$fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");
$x = 1;

$persona_envia = $_POST['persona_envia']; //llega por SESSION
$id_int = $_POST['clave_rastreo_int'];

    $sql_insert = "INSERT INTO pedidos(fecha_pedido,id_ext_tenis,id_ext_usr,estatus_entrega) VALUES('$fecha_sistema','$id_int','$persona_envia','$x')";
    $resultado_sql2 = $conn->query($sql_insert);

    $sql = "UPDATE venta_gral SET entrega = '$x' WHERE clave_rastreo_int = '$id_int'";
    $resultado_sql = $conn->query($sql);
    if($resultado_sql){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            imageUrl: '../assets/brand/img/logo_store_shoes_sin_fondo.png',
            imageHeight: 200,
            imageAlt: 'Shoes Store Mx',
            title: 'Entregado',
            text: 'Pedido marcado como entregado.',
            confirmButtonColor: '#3085d6',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../be_/venta_gral.php';});</script>";
        }
        else{
        echo 'No se registró la actividad';
        }

?>

</body>
</html>