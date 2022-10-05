<html>
    <header>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </header>
<body>
    
<?php
session_start();
$id_sess = $_SESSION['id'];
$nombre_sess = $_SESSION['usr'];
$perfil_sess = $_SESSION['perfil'];

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

// $nombreproducto = $_POST['nombreproducto'];
$nombreproducto = $_POST['id'];
$valor = $_POST['valor'];

// venta individual

foreach($nombreproducto as $key => $arreglo)
{
    // $resta = $resta - 1;
    $talla1 = $talla[$key];
    // $sql = "INSERT INTO venta_individual(producto,fecha_venta,venta_gral,talla) VALUES('$arreglo','$fecha_sistema','$codigo','$talla1')";
    $sql = "INSERT INTO venta_individual(producto,fecha_venta,venta_gral,talla,entrega) VALUES('$arreglo','$fecha_sistema','$codigo','$talla1','$entrega')";
    $resultado= $conn->query($sql);
    
}

$sql_general = "INSERT INTO venta_gral(cantidad,precio,fecha_venta,nombre,direccion,telefono,email,clave_rastreo_int,apartado,vendedor,entrega) VALUES('$cantidad','$total_precio','$fecha_sistema','$nombre_completo','$direccion','$telefono','$email','$codigo','$apartado','$id_sess','$entrega')";
$resultado_general= $conn->query($sql_general);

if($resultado_general){

    //código email
    $mail = new PHPMailer(true);
    
    try {
        //Server settings
        $mail->SMTPDebug = 0;                                       // Enable verbose debug output
        $mail->isSMTP();                                            // Set mailer to use SMTP
        $mail->Host       = 'smtp.titan.email ';  // Specify main and backup SMTP servers
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = 'tienda@shoesstoremxa.com';                     // SMTP username
        $mail->Password   = 'qy7hJGSyhz3hiJe';                               // SMTP password
        $mail->SMTPSecure = 'TLS';                                  // Enable TLS encryption, `ssl` also accepted
        $mail->Port       = 587;                                    // TCP port to connect to
    
        //Recipients
        $mail->setFrom('tienda@shoesstoremxa.com', 'Tienda ShoesStoreMXA');
        $mail->addAddress($email, $nombre_completo);     // Add a recipient
        // $mail->addAddress('ellen@example.com');               // Name is optional
        // $mail->addReplyTo('info@example.com', 'Information');
        // $mail->addCC('tecnologias.injuventud@gmail.com');
        // $mail->addBCC('bcc@example.com');
    
        // Attachments
        // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
    
        // Content
        $mail->isHTML(true);
        $mail->CharSet = 'UTF-8';                                  // Set email format to HTML
        $mail->Subject = 'Pedido realizado';
        $mail->Body    = 'Tu pedido ha sido realizado
        <p> El pedido a través de shoesstoremxa.com fue completado exitosamente.</p>
        Tu código de rastreo es el siguiente:'.$codigo.' lo puedes consultar en http://www.shoesstoremxa.com/tenis/envio.php' ;
        $mail->AltBody = 'Mensaje expediente completo';
    
        $mail->send();
        // echo 'Message has been sent';
    
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }

        
    //código email
    
    echo "<script type=\"text/javascript\">
    Swal.fire({
        icon: 'success',
        title: 'Compra realizada',
        text: 'utf8_encode(Revisa tu correo con la información)',
        footer: 'Ventas en línea</a>'
    }).then(function(){window.location='../catalogo.php?id=1';});</script>";
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