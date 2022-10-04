<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$id = $_POST['id'];
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$tipo = $_POST['tipo'];
$color = $_POST['color'];
$color2 = $_POST['color2'];
$color3 = $_POST['color3'];
$color4 = $_POST['color4'];
$color5 = $_POST['color5'];
$formas = $_POST['formas'];
$material = $_POST['material'];
$hombre_mujer = $_POST['hombre_mujer'];
$precio_general = $_POST['precio_general'];
$link= 'foto';
    
    $sqlUpdate = "UPDATE tenis SET marca='$marca',modelo='$modelo',tipo='$tipo',color='$color',formas='$formas',material='$material',hombre_mujer='$hombre_mujer',precio_general='$precio_general' WHERE id='$id'";

    $resultado = $conn->query($sqlUpdate);

    if($resultado){
        
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