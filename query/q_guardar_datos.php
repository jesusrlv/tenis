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
include('qconn/qc.php');

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    require 'email/Exception.php';
    require 'email/PHPMailer.php';
    require 'email/SMTP.php';

// if

function generarCodigo($longitud) {
    $key = '';
    $pattern = '1234567890abcdefghijklmnopqrstuvwxyz';
    $max = strlen($pattern)-1;
    for($i=0;$i < $longitud;$i++) $key .= $pattern{mt_rand(0,$max)};
    return $key;
    }
    //genera un código de 9 caracteres de longitud.
    $codigo = generarCodigo(9);

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");

$numero_general = 0;
$cantidad = $_POST['num_prod'];
$nombre_completo = $_POST['nombre'];
$direccion = $_POST['direccion'];
$telefono = $_POST['tel'];
$email = $_POST['email'];
$talla = $_POST['talla'];
$apartado = 1;
$entrega = 1;

$total_precio = $_POST['total_precio']; // para ambos datos

$nombreproducto = $_POST['id'];
$valor = $_POST['valor'];

foreach($nombreproducto as $key => $arreglo)
{
    $talla1 = $talla[$key];
    $sql = "INSERT INTO venta_individual(producto,fecha_venta,venta_gral,talla,entrega) VALUES('$arreglo','$fecha_sistema','$codigo','$talla1','$entrega')";
    $resultado= $conn->query($sql);
    
}

$sql_general = "INSERT INTO venta_gral(cantidad,precio,fecha_venta,nombre,direccion,telefono,email,clave_rastreo_int,apartado) VALUES('$cantidad','$total_precio','$fecha_sistema','$nombre_completo','$direccion','$telefono','$email','$codigo','$apartado')";
$resultado_general= $conn->query($sql_general);

if($resultado_general){
    
    echo "<script type=\"text/javascript\">
    Swal.fire({
        icon: 'success',
        imageUrl: '../assets/brand/img/logo_store_shoes_sin_fondo.png',
        imageHeight: 200,
        imageAlt: 'Shoes Store Mx',
        title: 'Pedido realizado',
        text: 'Revisa tu correo con la información',
        confirmButtonColor: '#3085d6',
        footer: 'Shoes Store MX'
    }).then(function(){window.location='../envio.php';});</script>";
    }
    else{
    echo 'No se registró la actividad';
    }

?>
</body>
</html>