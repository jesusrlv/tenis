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
            footer: 'Shoes Store Mx'
        }).then(function(){window.location='../alta_perfiles.php';});</script>";
        }
        else{
        echo 'No se registró producto';
        }

?>

</body>
</html>