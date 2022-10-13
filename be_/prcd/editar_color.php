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
            title: 'Color editado',
            text: 'Catálogo actualizado',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../color.php?id=".$id_ext."';});</script>";
        }
        else{
        echo 'No se registró producto';
        }


?>

</body>
</html>