<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id_ext = $_POST['codigo_externo'];
$id_ext2 = $_POST['codigo_externo2'];

    $sql = "UPDATE envios SET codigo_envio_externo = '$id_ext' WHERE codigo_envio_externo = '$id_ext2'";
    $resultado_sql = $conn->query($sql);

    $sql2 = "UPDATE venta_gral SET clave_rastreo_ext = '$id_ext' WHERE clave_rastreo_ext  = '$id_ext2'";
    $resultado_sql2 = $conn->query($sql2);

    if($resultado_sql2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Actualización realizada',
            text: 'El envío ha sido actualizada',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../venta_gral.php';});</script>";
        }
        else{
        echo 'No se registró la actividad';
        }

?>

</body>
</html>