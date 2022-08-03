<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$color = $_POST['talla'];
$cantidad = $_POST['cantidad'];
$id = $_POST['id'];

    // $sqlinsert= "UPDATE documentos SET link4='$ruta_pptx' WHERE id_usr='$curp'";
    $sqlinsert= "INSERT INTO color_inventario(color,cantidad,id_ext) VALUES('$color','$cantidad','$id')";
    $resultado= $conn->query($sqlinsert);


    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto registrado',
            text: 'Catálogo actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../color.php?id=".$id."';});</script>";
        }
        else{
        echo 'No se registró producto';
        }


?>

</body>
</html>