<?php
session_start();

if (isset($_SESSION['usr']) && isset($_SESSION['pwd'])) {
  // if($_SESSION['perfil']==2){

  // }
  // else{
  //   header('Location: prcd/sort.php');
  //   die();
  // }
  
} else {
  // En caso contrario redirigimos el visitante a otra página

  header('Location: prcd/sort.php');
  die();
}

// variables de sesión

    $id_sess = $_SESSION['id'];
    $nombre_sess = $_SESSION['usr'];
    $perfil_sess = $_SESSION['perfil'];

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Tienda en línea · Inicio</title>
    <link rel="icon" type="image/png" href="../assets/brand/img/cel.ico">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

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
    <link href="../carousel.css" rel="stylesheet">
  </head>
  <body>
    
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><i class="bi bi-phone"></i> Sistema |</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
           <a class="nav-link active" aria-current="page" href="index.html"><i class="bi bi-house-fill"></i> Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="venta_gral.php"><i class="bi bi-receipt-cutoff"></i> Ventas</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="catalogo.php"><i class="bi bi-cloud-plus-fill"></i> Catálogo</a>
          </li>
        </ul>
        <form class="d-flex">
          <!-- <input class="form-control me-2" type="search" placeholder="Búsqueda" aria-label="Search"> -->
          <a href="prcd/sort.php" class="btn btn-outline-light" type="submit"><i class="bi bi-door-open-fill"></i> Salir</a>
        </form>
      </div>
    </div>
  </nav>
</header>

<main>
  <h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-phone"></i> Sistema <span class="text-muted">de Ventas</span></h2>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing mt-5">

    <!-- Three columns of text below the carousel -->
    <div class="row g-4">

      <div class="col-lg-6">
        <div class="card text-center text-light bg-dark" style="width: 100%;" id="hOver">
          <!-- <img src="assets/brand/img/cel4.jpg" class="card-img-top" alt="..."> -->
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-receipt-cutoff"></i> Ventas</h5>
            <p class="card-text">Revisar las ventas realizadas en el sistema.</p>
            <a href="venta_gral.php" class="btn btn-outline-light"><i class="bi bi-box-arrow-right"></i> Acceder a la sección</a>
          </div>
        </div>
      </div><!-- /.col-lg-4 -->
      <!-- <div class="col-lg-6">
        <div class="card text-center text-light bg-dark" style="width: 100%;" id="hOver">
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-geo-fill"></i> Envíos</h5>
            <p class="card-text">Revisar el estatus de los envíos por paquetería.</p>
            <a href="rastreo_envios.php" class="btn btn-outline-light"><i class="bi bi-box-arrow-right"></i> Acceder a la sección</a>
          </div>
        </div>
      </div> -->
      <!-- /.col-lg-4 -->
      <div class="col-lg-6">
        <div class="card text-center text-light bg-dark" style="width: 100%;" id="hOver">
          <!-- <img src="assets/brand/img/cel5.jpg" class="card-img-top" alt="..."> -->
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-cloud-plus-fill"></i> Cargar catálogo</h5>
            <p class="card-text">Cargar catálogo de productos en el sistema.</p>
            <a href="catalogo.php" class="btn btn-outline-light"><i class="bi bi-box-arrow-right"></i> Acceder a la sección</a>
          </div>
        </div>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-6">
        <div class="card text-center text-light bg-primary" style="width: 100%;" id="hOver">
          <!-- <img src="assets/brand/img/cel5.jpg" class="card-img-top" alt="..."> -->
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-door-open-fill"></i> Salir</h5>
            <p class="card-text">Salir del sistema.</p>
            <a href="prcd/sort.php" class="btn btn-outline-light"><i class="bi bi-box-arrow-right"></i> Cerrar sesión</a>
          </div>
        </div>
      </div><!-- /.col-lg-4 -->
      
    </div><!-- /.row -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="footer mt-auto py-3">
    <div class="container">
      <hr class="featurette-divider">
      <p class="float-end"><a href="#">Regresar arriba</a></p>
      <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
      <p>&copy; 2022 RedDeploy</p>
    </div>
  </footer>
</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>

<style>
  #hOver:hover {
    border: 1px solid #ffc107;
    border-color:#ffc107;
    box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
    /* transform: scale(1.01); */
    transition: width 0.8s, height 0.8s, transform 0.8s;
}
</style>
