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

$talla = $_POST['talla'];
// $cantidad = $_POST['cantidad'];
$id = $_POST['id'];
$id_ext = $_POST['id_ext'];

    // $sqlUpdate = "UPDATE inventario SET talla='$talla',cantidad='$cantidad' WHERE id='$id'";

    // $resultado= $conn->query($sqlUpdate);

    $sqlDelete = "DELETE FROM inventario WHERE id_ext_tenis='$id_ext' AND talla='$talla' AND id='$id'";
    $resultado = $conn->query($sqlDelete);

    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
            imageHeight: 200,
            imageAlt: 'Shoes Store Mx',
            title: 'Talla eliminada',
            text: 'Catálogo actualizado',
            confirmButtonColor: '#3085d6',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../tallas.php?talla=".$id_ext."';});</script>";
        }
        else{
        echo 'No se registró producto';
        }


?>

</body>
</html>