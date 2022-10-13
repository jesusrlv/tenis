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
$perfil = $_POST['perfil'];
$password = $_POST['password'];
$status = 1;


    $sqlinsert= "INSERT INTO usr (usr,pwd,perfil,status_e) 
    VALUES('$perfil','$password','$id','$status')";
    $resultado2= $conn->query($sqlinsert);


    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Perfil registrado',
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