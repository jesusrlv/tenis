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
$nombre = $_POST['nombre'];
$perfil = $_POST['perfil'];
$password = $_POST['password'];
$status = 1;


    $sqlinsert= "INSERT INTO usr (usr,pwd,nombre,perfil,status_e) 
    VALUES('$perfil','$password','.$nombre.','$id','$status')";
    $resultado2= $conn->query($sqlinsert);


    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
            imageHeight: 200,
            imageAlt: 'Shoes Store Mx',
            title: 'Perfil registrado',
            text: 'Catálogo actualizado',
            confirmButtonColor: '#3085d6',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../alta_perfiles.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }

?>

</body>
</html>