<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$talla = $_POST['talla'];
$cantidad = $_POST['cantidad'];
$id = $_POST['id'];
$id_ext = $_POST['id_ext'];

    $sqlUpdate = "UPDATE inventario SET talla='$talla',cantidad='$cantidad' WHERE id='$id'";

    $resultado= $conn->query($sqlUpdate);

    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Talla actualizada',
            text: 'Catálogo actualizado',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../tallas.php?talla=".$id_ext."';});</script>";
        }
        else{
        echo 'No se registró producto';
        }


?>

</body>
</html>