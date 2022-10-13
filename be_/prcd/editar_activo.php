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

$id = $_REQUEST['id'];
$activo = 0;

    $sqlUpdate = "UPDATE tenis SET estatus='$activo' WHERE id='$id'";

    $resultado2= $conn->query($sqlUpdate);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto dado de baja',
            text: 'Catálogo actualizado',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../catalogo.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
?>

</body>
</html>