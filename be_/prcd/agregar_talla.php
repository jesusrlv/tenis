<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$talla = $_POST['talla'];
$cantidad = $_POST['cantidad'];
$id = $_POST['id'];

    // $sqlinsert= "UPDATE documentos SET link4='$ruta_pptx' WHERE id_usr='$curp'";
    $sqlinsert= "INSERT INTO inventario(talla,cantidad,id_ext_tenis) VALUES('$talla','$cantidad','$id')";
    $resultado= $conn->query($sqlinsert);


    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto registrado',
            text: 'Catálogo actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../tallas.php?talla=".$id."';});</script>";
        }
        else{
        echo 'No se registró producto';
        }


?>

</body>
</html>