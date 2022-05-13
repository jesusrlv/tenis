<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id = $_POST['id'];
$catalogo = $_POST['catalogo'];

    $sqlUpdate = "UPDATE catalogo SET nombre_catalogo='$catalogo' WHERE id='$id'";

    $resultado2= $conn->query($sqlUpdate);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Elemento del catálogo actualizado',
            text: 'Catálogo actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../categorias.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
    
    



    

?>

</body>
</html>