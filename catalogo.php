<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Tienda en línea · Catálogo</title>
    <link rel="icon" type="image/png" href="assets/brand/img/cel.ico">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    
    <script src="query/compra.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

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

    <?php
    
    $id_catalogo = $_REQUEST['id'];
    require('query/query_ini.php');
    // require('query/query_catalogo.php');
    ?>

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><i class="bi bi-phone"></i> Tienda en línea</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.html"><i class="bi bi-house-fill"></i> Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="catalogo.php?id=1"><i class="bi bi-shield-fill-check"></i> Carcazas</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="envio.php"><i class="bi bi-geo-fill"></i> Rastreo de envíos</a>
            </li>
          </ul>
        <!-- <form class="d-flex"> -->
          <!-- <input class="form-control me-2" type="search" placeholder="Búsqueda" aria-label="Search"> -->
          <button class="btn btn-outline-light position-relative" type="buton" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><i class="bi bi-cart-plus"></i> Carrito de compras
          <span class="position-absolute top-100 start-0 translate-middle badge rounded-pill bg-danger" id="notificacionBadge">
    
    <span class="visually-hidden">unread messages</span>
  </span></button>
        <!-- </form> -->
      </div>
    </div>
  </nav>
</header>

<main>

<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-phone"></i> Catálogo <span class="text-muted">Protectores de celular</span></h2>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <!-- consultas productos -->
    <div class="row">
      <?php
        require('query/query_catalogo.php');
      ?>
    </div><!--row-->
    <!-- consultas productos -->
    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
    <h2 class="mb-5 bg-light p-5 text-center featurette-heading">Nuevos <span class="text-muted">Productos</span></h2>

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Primera sección de productos. <span class="text-muted">Diseños novedosos.</span></h2>
        <p class="lead">Conoce la gama de productos que nuestra empresa tiene para ti.</p>
      </div>
      <div class="col-md-5">
        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
        <img src="assets/brand/img/cel7.jpg" style="width: 500px; height: 375px; object-fit: cover; object-position:right; background-repeat: no-repeat;" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" alt="">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Busca tu envío. <span class="text-muted">En la paquetería.</span></h2>
        <p class="lead">Puedes rastrear tu paquete en el sistema de envíos asociado con la empresa.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img src="assets/brand/img/cel8.jpg" style="width: 500px; height: 375px; object-fit: cover; object-position:center; background-repeat: no-repeat;" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" alt="">

      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Revisa nuestro outlet. <span class="text-muted">Sobre la mercancía con rebajas.</span></h2>
        <p class="lead">Revisa nuestas rebajas en los productos de outlet que la empresa tiene para ti.</p>
      </div>
      <div class="col-md-5">
        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
        <img src="assets/brand/img/cel9.jpg" style="width: 500px; height: 375px; object-fit: cover; object-position:right; background-repeat: no-repeat;" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" alt="">

      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-end"><a href="#">Regresar arriba</a></p>
    <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
    <p>&copy; 2022 RedDeploy</p>
  </footer>
  
</main>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>

<!-- modal de descripción del producto -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-cart-plus"></i> Descripción del producto</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <img src="assets/brand/img/cel1.jpg" class="img-fluid" alt="...">
      <hr>
        <p class="mt-2"><strong>Nombre:</strong> Producto #1</p>
        <p class="mt-1"><strong>Descripción:</strong> Descripción del producto</p>
        <p class="mt-1"><strong>Precio:</strong> $0.00</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary"><i class="bi bi-cart-plus"></i> Agregar al carrito</button>
      </div>
    </div>
  </div>
</div>
<!-- modal de descripción del producto -->

<?php
  require('canvas.php');
?>


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
  function mensajeAgregado(){
      // swal("Correcto", "Tu producto ha sido agregado al carrito de compras", "success");

      // document.getElementById('offcanvasRight').show;
      swal({
        title: "Correcto",
        text: "Tu producto ha sido agregado al carrito de compras",
        type: "success"
        }).then(function() {

          var bsOffcanvas2 = new bootstrap.Offcanvas(offcanvasRight);
          bsOffcanvas2.show();
        
      });
      
  }
   
</script>

