<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Acceso</title>
    <link rel="icon" type="image/png" href="../assets/brand/img/cel.ico">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <link src="">

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <header>
   
    </header>
<main class="form-signin">
  <!-- <form action="login.php" method="POST" id="pwdForm"> -->
  <form action="login.php" method="POST">

  <img class="mb-4" src="../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="180" height="180">
    <h1 class="h3 mb-3 fw-normal"><i class="bi bi-key-fill"></i> Acceso</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="usr" id="usr" placeholder="">
      <label for="floatingInput">Usuario</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="">
      <label for="floatingPassword">Contraseña</label>
    </div>
    <p class="mt-1 mb-3 text-muted"><a href="../index.html" target="_self"><i class="bi bi-arrow-left-circle-fill"></i> Regresar al inicio</a></p>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
    <p class="mt-5 mb-1 text-muted"><strong>DEV:</strong> © 2022 </p>
    <p class="mt-1 mb-3 text-muted"><a href="https://direccioneszac.net/red_deploy/" target="_blank">Nexus Technology and Consulting</a>.</p>

  </form>
</main>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script> -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
// $(document).ready(function() {
//     $('#pwdForm').submit(function(e) {
//         e.preventDefault();
//         $.ajax({
//             type: "POST",
//             url: 'login.php',
//             data: $(this).serialize(),
//             success: function(response)
//             {
//                 var jsonData = JSON.parse(response);
 
                // user is logged in successfully in the back-end
                // let's redirect
                // if (jsonData.success == "1")
                // {
                    // location.href = 'my_profile.php';
                //     Swal.fire({
                //         icon: 'success',
                //         title: 'Usuario administrador',
                //         text: 'Credenciales correctas',
                //         footer: 'VENTAS</a>'
                //     }).then(function(){window.location='dashboard.php';});
                // }
                // else if (jsonData.success == "2")
                // {
                    // location.href = 'my_profile.php';
                //     Swal.fire({
                //         icon: 'success',
                //         title: 'Usuario entregads',
                //         text: 'Credenciales correctas',
                //         footer: 'VENTAS</a>'
                //     }).then(function(){window.location='perfil_entrega/venta_gral.php';});
                // }
                // else
                // {
                    // alert('Invalid Credentials!');
                    // Swal.fire({
                    //     icon: 'error',
                    //     title: 'Datos incorrectos',
                    //     text: 'Credenciales incorrectas',
                        // footer: 'VENTAS</a>'
                    // }).then(function(){window.location='index.php';});
//                     });
//                 }
//            }
//        });
//      });
// });
</script>
  <!-- script validate -->

    
  </body>
</html>
