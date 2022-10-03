<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>

<?php
include('../../query/qconn/qc.php');

$marca = $_POST['marca'];
$modelo = $_POST['modelo'];
$tipo = $_POST['tipo'];
// $foto = $_POST['foto'];
$color = $_POST['color'];
$color2 = $_POST['color2'];
$color3 = $_POST['color3'];
$color4 = $_POST['color4'];
$color5 = $_POST['color5'];
$material = $_POST['material'];
$hombre_mujer = $_POST['hombre_mujer'];
$link= 'foto';
$activo = 1;

function generarCodigo($longitud) {
    $key = '';
    $pattern = '1234567890abcdefghijklmnopqrstuvwxyz';
    $max = strlen($pattern)-1;
    for($i=0;$i < $longitud;$i++) $key .= $pattern{mt_rand(0,$max)};
    return $key;
}   
$codigo = generarCodigo(9); // genera un código de 9 caracteres de longitud.

$fileName = $_FILES["foto"]["name"]; // The file name
$fileTmpLoc = $_FILES["foto"]["tmp_name"]; // File in the PHP tmp folder
$fileType = $_FILES["foto"]["type"]; // The type of file it is
$fileSize = $_FILES["foto"]["size"]; // File size in bytes
$fileErrorMsg = $_FILES["foto"]["error"]; // 0 for false... and 1 for true
if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}


$archivo_ext=$_FILES['foto']['name'];
$extension = pathinfo($archivo_ext, PATHINFO_EXTENSION);

    if(move_uploaded_file($_FILES["foto"]["tmp_name"],"../../assets/brand/img/catalogo/".$link.'_'.$codigo.'_'.$marca.'_'.$modelo.'.'.$extension)){
    echo "$fileName carga completa";
    
    $ruta = $link.'_'.$codigo.'_'.$marca.'_'.$modelo.'.'.$extension;

    // $sqlinsert= "UPDATE documentos SET link4='$ruta_pptx' WHERE id_usr='$curp'";
    $sqlinsert= "INSERT INTO tenis (marca,modelo,tipo,img,color,color2,color3,color4,color5,material,hombre_mujer) 
    VALUES('$marca','$modelo','$tipo','$ruta','$color','$color2','$color3','$color4','$color5','$material','$hombre_mujer')";
    $resultado= $conn->query($sqlinsert);


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
    
    
} else {
    echo "move_uploaded_file function failed";
}


    

?>

</body>
</html>