<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');


$id = $_POST['estatus'];
$statusV = $_POST['statusV'];

    $sqlUpdate = "UPDATE usr SET status_e='$statusV' WHERE id='$id'";

    $resultado2= $conn->query($sqlUpdate);


    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Perfil actualizado',
            text: 'Catálogo actualizado',
            footer: 'Ventas en línea</a>'
        }).then(function(){window.location='../alta_perfiles.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }

?>

</body>
</html>