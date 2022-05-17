<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id = $_POST['id'];
$persona_envia = $_POST['persona_envia'];
$id_int = $_POST['codigo_interno'];

    $sql = "UPDATE envios SET id_envio = '$persona_envia' WHERE id = '$id'";
    $resultado_sql = $conn->query($sql);
    if($resultado_sql){
        
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