<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

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
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../catalogo_baja.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
?>

</body>
</html>