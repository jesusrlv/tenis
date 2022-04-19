<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$descripcion = $_POST['descripcion'];
$precio = $_POST['precio'];
$cantidad = $_POST['cantidad'];
// $tipo_catalogo = $_POST['tipo_catalogo'];
$link= 'foto';

    // $sqlinsert= "UPDATE documentos SET link4='$ruta_pptx' WHERE id_usr='$curp'";
    
    // $sqlinsert= "INSERT INTO producto (nombre,descripcion,precio,imagen,cantidad,catalogo) 
    // VALUES('$nombre','$descripcion','$precio','$ruta','$cantidad','$tipo_catalogo')";
    
    $sqlUpdate = "UPDATE producto SET nombre='$nombre',descripcion='$descripcion',precio='$precio',cantidad='$cantidad' WHERE id='$id'";

    $resultado2= $conn->query($sqlUpdate);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Producto registrado',
            text: 'Catálogo actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../catalogo.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
    
    



    

?>

</body>
</html>