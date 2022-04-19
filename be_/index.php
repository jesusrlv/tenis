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
    
<main class="form-signin">
  <form action="login.php" method="POST" id="pwdForm">
    <img class="mb-4" src="../assets/brand/img/cel.png" alt="" width="72" height="72">
    <h1 class="h3 mb-3 fw-normal"><i class="bi bi-key-fill"></i> Acceso</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="usr" id="usr" placeholder="">
      <label for="floatingInput">Usuario</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="pwd" id="pwd" placeholder="">
      <label for="floatingPassword">Contraseña</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2022</p>
  </form>
</main>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#pwdForm').submit(function(e) {
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: 'login.php',
            data: $(this).serialize(),
            success: function(response)
            {
                var jsonData = JSON.parse(response);
 
                // user is logged in successfully in the back-end
                // let's redirect
                if (jsonData.success == "1")
                {
                    // location.href = 'my_profile.php';
                    Swal.fire({
                        icon: 'success',
                        title: 'Usuario correcto',
                        text: 'Credenciales correctas',
                        footer: 'VENTAS</a>'
                    }).then(function(){window.location='dashboard.php';});
                }
                else
                {
                    // alert('Invalid Credentials!');
                    Swal.fire({
                        icon: 'error',
                        title: 'Datos incorrectos',
                        text: 'Credenciales incorrectas',
                        footer: 'VENTAS</a>'
                    // }).then(function(){window.location='index.php';});
                    });
                }
           }
       });
     });
});
</script>
  <!-- script validate -->

    
  </body>
</html>
