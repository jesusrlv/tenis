<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');


$id = $_POST['id'];
$perfil = $_POST['perfil'];
$password = $_POST['password'];
$status = 1;


    $sqlinsert= "INSERT INTO usr (usr,pwd,perfil,status) 
    VALUES('$perfil','$password','$id','$status')";
    $resultado2= $conn->query($sqlinsert);


    if($resultado2){
        
        echo "<script type=\"text/javascript\">
        Swal.fire({
            icon: 'success',
            title: 'Perfil registrado',
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