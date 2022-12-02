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
session_start();
include('../../query/qconn/qc.php');

$id = $_POST['id'];
$id_ext = $_POST['id_ext'];
$status_apartado = $_POST['status_apartado'];

// consulta para rebajar inventario

    // $slqDescontar = "SELECT * FROM venta_gral individual WHERE $id_ext";
    // $resultadoContar= $conn->query($slqDescontar);

    // while($rowContar = $resultadoContar->fetch_assoc()){
    //     $menosInv = 1;
    // }

    
    $sqlUpdate = "UPDATE venta_gral SET apartado='$status_apartado' WHERE id='$id'";

    $resultado2= $conn->query($sqlUpdate);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
            imageHeight: 200,
            imageAlt: 'Shoes Store Mx',
            title: 'Apartado actualizado',
            text: 'Apartado actualizado',
            confirmButtonColor: '#3085d6',
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../venta_gral.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
    
    



    

?>

</body>
</html>