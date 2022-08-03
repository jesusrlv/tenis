<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$color = $_POST['color'];
$cantidad = $_POST['cantidad'];
$id = $_POST['id'];
$id_ext = $_POST['id_ext'];

    $sqlUpdate = "UPDATE color_inventario SET color='$color',cantidad='$cantidad' WHERE id='$id'";

    $resultado= $conn->query($sqlUpdate);

    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto registrado',
            text: 'Catálogo actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../color.php?id=".$id_ext."';});</script>";
        }
        else{
        echo 'No se registró producto';
        }


?>

</body>
</html>