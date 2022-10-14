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

$id = $_POST['id'];
$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$tipo = $_POST['tipo'];
$clasificacion = $_POST['clasificacion'];
$tamanio = $_POST['tamanio'];
$color = $_POST['color'];
$color2 = $_POST['color2'];
$color3 = $_POST['color3'];
$color4 = $_POST['color4'];
$color5 = $_POST['color5'];
$formas = $_POST['formas'];
$material = $_POST['material'];
$hombre_mujer = $_POST['hombre_mujer'];
$precio_general = $_POST['precio_general'];
$precio_prov = $_POST['precio_prov'];
$link= 'foto';
    
    $sqlUpdate = "UPDATE tenis SET marca='$marca',modelo='$modelo',tipo='$tipo',clasificacion='$clasificacion',tamanio='$tamanio',color='$color',color2='$color2',color3='$color3',color4='$color4',color5='$color5',formas='$formas',material='$material',hombre_mujer='$hombre_mujer',precio_general='$precio_general',precio_prov='$precio_prov' WHERE id='$id'";

    $resultado = $conn->query($sqlUpdate);

    if($resultado){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
            imageHeight: 200,
            imageAlt: 'Shoes Store Mx',
            title: 'Edición realizada',
            text: 'Catálogo actualizado',
            confirmButtonColor: '#3085d6',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../catalogo.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
    
    



    

?>

</body>
</html>