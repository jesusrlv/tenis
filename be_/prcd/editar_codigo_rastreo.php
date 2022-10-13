<html>
<meta charset="utf-8">
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;400&display=swap');
    body{
        font-family: 'Montserrat', sans-serif;
    }
</style>

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
            imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
            imageHeight: 200,
            imageAlt: 'Shoes Store Mx',
            title: 'Actualización realizada',
            text: 'El envío ha sido actualizada',
            confirmButtonColor: '#3085d6',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../venta_gral.php';});</script>";
        }
        else{
        echo 'No se registró la actividad';
        }

?>

</body>
</html>