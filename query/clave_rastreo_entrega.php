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
$x = 2;

$persona_envia = $_POST['persona_envia']; //llega por SESSION
$id_int = $_POST['clave_rastreo_int'];

    $sql_insert = "INSERT INTO envios(fecha_registro,id_envio,codigo_envio_interno,entrega) VALUES('$fecha_sistema','$persona_envia','$id_int','$x')";
    $resultado_sql2 = $conn->query($sql_insert);
    // $row_sql_insert = $resultado_sql2->fetch_assoc();

    $sql = "UPDATE venta_gral SET clave_rastreo_ext = '$id_int', entrega = '$x' WHERE clave_rastreo_int = '$id_int'";
    $resultado_sql = $conn->query($sql);
    // $row_sql = $resultado_sql->fetch_assoc();
    if($resultado_sql){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Actualización realizada',
            text: 'La clave de rastreo ha sido actualizada',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../be_/perfil_entrega/venta_gral.php';});</script>";
        }
        else{
        echo 'No se registró la actividad';
        }

?>

</body>
</html>