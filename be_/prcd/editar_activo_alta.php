<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id = $_REQUEST['id'];
$activo = 1;

    $sqlUpdate = "UPDATE tenis SET estatus='$activo' WHERE id='$id'";
    $resultado2= $conn->query($sqlUpdate);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto dado de alta',
            text: 'Catálogo actualizado',
            footer: 'Shoes Store Mx</a>'
        }).then(function(){window.location='../catalogo.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
?>
</body>
</html>