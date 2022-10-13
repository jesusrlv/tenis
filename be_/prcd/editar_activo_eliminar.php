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
// $ruta = '../../assets/brand/img/catalogo/';

    $sqlFile ="SELECT * FROM producto WHERE id='$id'";
    $resultado= $conn->query($sqlFile);
    $row_sqlFile = $resultado->fetch_assoc();

    $file = '../../assets/brand/img/catalogo/'.$row_sqlFile['imagen'];
    unlink($file);

    $sqlDelete = "DELETE FROM producto WHERE id='$id'";
    $resultado2= $conn->query($sqlDelete);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto eliminado',
            text: 'Catálogo actualizado',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../catalogo_baja.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
?>

</body>
</html>