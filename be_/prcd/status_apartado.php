<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
session_start();
include('../../query/qconn/qc.php');

$id = $_POST['id'];
$status_apartado = $_POST['status_apartado'];

    
    $sqlUpdate = "UPDATE venta_gral SET apartado='$status_apartado' WHERE id='$id'";

    $resultado2= $conn->query($sqlUpdate);

    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Apartado actualizado',
            text: 'Apartado actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../venta_gral.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }
    
    



    

?>

</body>
</html>