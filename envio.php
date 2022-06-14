<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Shoes Store MX · Envíos</title>
    <link rel="icon" type="image/png" href="assets/brand/img/cel.ico">

    <!-- <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/"> -->
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    

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
      body{
        background-color:#f7f7f7;
      }
    </style>

    <?php
    
    // $id_catalogo = $_REQUEST['id'];
    // require('query/query_ini.php');
    // require('query/query_catalogo.php');
    ?>

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
<header>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-primary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Shoes Store MX</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="index.html"><i class="bi bi-house-fill"></i> Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="catalogo.php?id=1"><i class="bi bi-box-seam"></i> Catálogo</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="envio.php"><i class="bi bi-geo-fill"></i> Rastreo de envíos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="be_/"><i class="bi bi-journal-code"></i> Be_</a>
          </li>
        </ul>
        
      </div>
    </div>
  </nav>
</header>

<main>

<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;">Rastreo <span class="text-muted">de envíos</span></h2>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <!-- consultas productos -->
    <div class="row justify-content-center mb-3">
      <?php
        // require('query/query_catalogo.php');
      ?>
      <div class="col-6 text-center">
      <form action="envio.php" method="POST">
      <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-upc-scan"></i> Código de producto</span>
            <input type="text" name="busqueda" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1" required>
            <button type="submit" class="btn btn-primary"><i class="bi bi-search"></i></button>
        </div>
        </form>
      </div>
    </div><!--row-->
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table text-center">
                    <thead class="bg-dark text-light">
                        <tr>
                        <th scope="col">Fecha pedido</th>
                        <th scope="col">Listado de pedido</th>
                        <th scope="col">Código envío</th>
                        <th scope="col">Estatus del envío</th>
                        </tr>
                    </thead>
                    <?php
                        require('query/query_rastreo.php');
                    ?>
                </table>
                
            </div>
        </div>
    </div>
    <!-- consultas productos -->
    <!-- START THE FEATURETTES -->
    <input type="text" value="<?php echo $resultado_rows ?>" id="valorrow" hidden>
    

    <hr class="featurette-divider">
    <h2 class="mb-5 bg-light p-5 text-center featurette-heading">Como hacer pedidos <span class="text-muted">por medio de la app.
    </span></h2>

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Selecciona el calzado<span class="text-muted"> y agregalo al carrito.</span></h2>
        <p class="lead">Shoes Store MX</p>
      </div>
      <div class="col-md-5">
        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
        <img src="assets/brand/img/portada_shoes_07.jpg" style="width: 500px; height: 375px; object-fit: cover; object-position:right; background-repeat: no-repeat;" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" alt="">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Revisa el resumen <span class="text-muted">del calzado que pediste.</span></h2>
        <p class="lead">Shoes Store MX</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img src="assets/brand/img/portada_shoes_08.jpg" style="width: 500px; height: 375px; object-fit: cover; object-position:center; background-repeat: no-repeat;" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" alt="">

      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Pasa a recoger <span class="text-muted">tu pedido a nuestro local. </span></h2>
        <p class="lead">Shoes Store MX</p>
      </div>
      <div class="col-md-5">
        <!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->
        <img src="assets/brand/img/portada_shoes_09.jpg" style="width: 500px; height: 375px; object-fit: cover; object-position:right; background-repeat: no-repeat;" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" alt="">

      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->
    <footer class="footer mt-auto py-3">
      <p class="float-end p-3"><a href="#">Regresar arriba</a></p>
      <p><strong>DEV:</strong> © 2022 <a href="https://direccioneszac.net/red_deploy/" target="_blank">Nexus Technology and Consulting</a>.</p>
    </footer>
  </div><!-- /.container -->
  
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

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
  var x = document.getElementById("valorrow").value;
    if (x == 1){
      // alert("El producto está en proceso de envío");
      swal("Código localizado", "Tu envío se encuentra en camino", "success");
      // $("#myModal").modal("show:true");

    }
    if (x == 0){
      // alert("El producto no tiene código de rastreo");
      swal("Error!", "No se encuentra el envío en el registro", "error");
    }
</script>
