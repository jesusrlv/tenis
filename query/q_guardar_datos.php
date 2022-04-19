<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>
    
<?php
include('qconn/qc.php');

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
$tarjeta = $_POST['tarjeta'];

// datos para token
$nip = $_POST['ccc'];
$tarjeta2 = $_POST['tarjeta2'];
$nombre_tarjeta = $_POST['nombre_tarjeta'];
$expira_mes = $_POST['expira_mes'];
$expira_annio = $_POST['expira_annio'];
$total_precio = $_POST['total_precio']; // para ambos datos

$nombreproducto = $_POST['nombreproducto'];
$valor = $_POST['valor'];



// venta individual
foreach ($nombreproducto as $arreglo) {
    // echo $arreglo;

    $sql = "INSERT INTO venta_individual(producto,fecha_venta,venta_gral) VALUES('$arreglo','$fecha_sistema','$codigo')";
    $resultado= $conn->query($sql);

} 

$sql_general = "INSERT INTO venta_gral(cantidad,precio,fecha_venta,nombre,direccion,telefono,email,tarjeta,nombre_tarjeta,expira_mes,expira_annio,clave_rastreo_int) VALUES('$cantidad','$total_precio','$fecha_sistema','$nombre_completo','$direccion','$telefono','$email','$tarjeta','$nombre_tarjeta','$expira_mes','$expira_annio','$codigo')";
$resultado_general= $conn->query($sql_general);

if($resultado_general){
    echo "<script type=\"text/javascript\">
    Swal.fire({
        icon: 'success',
        title: 'Compra realizada',
        text: 'Revisa tu correo con la información',
        footer: 'Ventas en línea</a>'
    }).then(function(){window.location='../envio.php';});</script>";
    }
    else{
    echo 'No se registró la actividad';
    }

//  end of if

// https://laracasts.com/index.php/index.php/discuss/channels/general-discussion/how-to-add-multiple-same-name-input-fields-in-one-form-into-database
// https://www.sourcecodester.com/tutorials/php/13495/php-multiple-form-inputs.html

// https://programacion.net/articulo/carrito_de_la_compra_integrado_con_paypal_mediante_php_1975
?>
</body>
</html>