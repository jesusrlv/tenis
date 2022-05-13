<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$categoria = $_POST['categoria'];

    $sqlinsert= "INSERT INTO catalogo (nombre_catalogo) 
    VALUES('$categoria')";
    $resultado2= $conn->query($sqlinsert);


    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Categoria registrada',
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