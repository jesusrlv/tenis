<html>
<meta charset="utf-8">
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

if(isset($_POST['color'])){

    $color = $_POST['color'];

        $sqlinsert= "INSERT INTO color (color) 
        VALUES('$color')";
        $resultado = $conn->query($sqlinsert);


        if($resultado){
            
            echo "<script type=\"text/javascript\">
            Swal.fire({
                icon: 'success',
                imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
                imageHeight: 200,
                imageAlt: 'Shoes Store Mx',
                title: 'Catálogo actualizado',
                text: 'Color agregado',
                confirmButtonColor: '#3085d6',
                footer: 'Shoes Store Mx'
            }).then(function(){window.location='../categorias.php';});</script>";
            }
            else{
            echo 'No se registró producto';
            }

}

else if(isset($_POST['marca'])){

    $marca = $_POST['marca'];

        $sqlinsert= "INSERT INTO marcas (marca) 
        VALUES('$marca')";
        $resultado = $conn->query($sqlinsert);


        if($resultado){
            
            echo "<script type=\"text/javascript\">
            Swal.fire({
                icon: 'success',
                imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
                imageHeight: 200,
                imageAlt: 'Shoes Store Mx',
                title: 'Catálogo actualizado',
                text: 'Marca agregada',
                confirmButtonColor: '#3085d6',
                footer: 'Shoes Store Mx'
            }).then(function(){window.location='../categorias.php';});</script>";
            }
            else{
            echo 'No se registró producto';
            }

}

else if(isset($_POST['modelo'])){

    $modelo = $_POST['modelo'];

        $sqlinsert= "INSERT INTO modelo (modelo) 
        VALUES('$modelo')";
        $resultado = $conn->query($sqlinsert);


        if($resultado){
            
            echo "<script type=\"text/javascript\">
            Swal.fire({
                icon: 'success',
                imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
                imageHeight: 200,
                imageAlt: 'Shoes Store Mx',
                title: 'Catálogo actualizado',
                text: 'Modelo agregada',
                confirmButtonColor: '#3085d6',
                footer: 'Shoes Store Mx'
            }).then(function(){window.location='../categorias.php';});</script>";
            }
            else{
            echo 'No se registró producto';
            }

}

else if(isset($_POST['material'])){

    $material = $_POST['material'];

        $sqlinsert= "INSERT INTO material (material) 
        VALUES('$material')";
        $resultado = $conn->query($sqlinsert);


        if($resultado){
            
            echo "<script type=\"text/javascript\">
            Swal.fire({
                icon: 'success',
                imageUrl: '../../assets/brand/img/logo_store_shoes_sin_fondo.png',
                imageHeight: 200,
                imageAlt: 'Shoes Store Mx',
                title: 'Catálogo actualizado',
                text: 'Material agregada',
                confirmButtonColor: '#3085d6',
                footer: 'Shoes Store Mx'
            }).then(function(){window.location='../categorias.php';});</script>";
            }
            else{
            echo 'No se registró producto';
            }

}


?>

</body>
</html>