<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id = $_REQUEST['id'];


    $sqlDelete = "DELETE FROM color WHERE id='$id'";
    $resultado = $conn->query($sqlDelete);

    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Color eliminado',
            text: 'Catálogo actualizado',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../categorias.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
?>

</body>
</html>