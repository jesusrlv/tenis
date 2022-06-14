<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Shoes Store MX · Catálogo</title>
    <link rel="icon" type="image/png" href="assets/brand/img/cel.ico">

    <!-- <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
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
      body{
        background-color:#f7f7f7;
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
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    <a class="navbar-brand" href="#"><i class="bi bi-cart-check-fill"></i> Shoes Store MX</a>
      
        
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.html"><i class="bi bi-house-fill"></i> Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="catalogo.php?id=1"><i class="bi bi-box-seam"></i> Catálogo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="envio.php"><i class="bi bi-geo-fill"></i> Rastreo de envíos</a>
            </li>
          </ul>
      </div>
      <button class="btn btn-outline-light position-relative" type="buton" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"><i class="bi bi-cart-plus"></i> <span id="esconder">Carrito de compras</span>
          <span class="position-absolute top-100 start-0 translate-middle badge rounded-pill bg-danger" id="notificacionBadge">
    0
          <span class="visually-hidden">unread messages</span>
        </span>
      </button>
    </div>
  </nav>
</header>

<main class="bg-light">

<h2 class="mb-3 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-box-seam"></i> Catálogo <span class="text-muted">de tenis</span></h2>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->



  <div class="container marketing" style="background-color:#f7f7f7;">
  <p class=" pt-4"><strong>Categorías</strong></p>
  <div class="container mb-4">
    <div class="btn-group btn-group-sm" role="group" aria-label="Basic radio toggle button group">
      <!-- <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" onclick="mostrarTodo()" checked>
      <label class="btn btn-outline-primary" for="btnradio1">Todos</label> -->
<?php
    $sum = 1;
    include('query/query_categorias.php');
    echo '
    <form action="#" method="get">
    <select class="form-select" aria-label="Seleccion" style="cursor:pointer;" data-native-menu="false">
      <option selected>Selecciona categoría</option>
      <option value="0" onclick="mostrarTodo()">Todo</option>';
    while($row_sqlCategorias = $resultado_sqlCategorias->fetch_assoc()){
      $sum++;
      // AQUÍ QUEDA LO DEL MOVER EL ONCLICK
      //<input type="radio" class="btn-check" name="btnradio" id="btnradio'.$sum.'" autocomplete="off" onclick="cambio('.$row_sqlCategorias['id'].')">
      //<label class="btn btn-outline-primary" for="btnradio'.$sum.'">'.$row_sqlCategorias['nombre_catalogo'].'</label>
      echo'
      
        <option value="'.$sum.'" onclick="cambio('.$row_sqlCategorias['id'].')">'.$row_sqlCategorias['nombre_catalogo'].'</option>
      
      
      ';
    }
    echo '</select>
    </form>';
?>
    </div>
  </div>


    <!-- Three columns of text below the carousel -->
    <!-- consultas productos -->
    <div class="row row-cols-2 g-2">
      <?php
        require('query/query_catalogo.php');
      ?>
    </div><!--row-->
    <!-- consultas productos -->
    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
   


  <!-- FOOTER -->
  <!-- <footer class="container"> -->
  <footer class="footer mt-auto py-3">
    <p class="float-end"><a href="#">Regresar arriba</a></p>
    <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
    <p><strong>DEV:</strong> © 2022 <a href="https://direccioneszac.net/red_deploy/" target="_blank">Nexus Technology and Consulting</a>.</p>
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

<!-- <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> -->
<script>
  x=0;
  function cambio(x){
    // alert(x);
    // document.getElementById('hidden'+x).style.visibility = 'hidden';
    
    // z = document.getElementById('hidden'+x);
    //  z.style.visibility = 'hidden';

//     var divsToHide = document.getElementsById('hidden'+x); 
//       for(var i = 0; i < divsToHide.length; i++){
//           if(document.getElementById('q'+i).style.display!='none')
//             {
//             document.getElementById('q'+i).style.display='none'
//             }
//         }
// }
  const div=document.querySelectorAll('#hidden');
  for(let i=0;i<div.length;i++){
    const styles = window.getComputedStyle(div[i]);
      var xyz = (div[i]).getAttribute('value');
      // alert(xyz)
        if(xyz == x){
          // div[i].style.visibility='visible';
          div[i].style.display = 'initial';
        }
        else{
          // div[i].style.visibility='hidden'; 
          div[i].style.display = 'none'; 
        }
        // if(styles.visibility=='visible'){
        // div[i].style.visibility='collapse';
        // }
        // else{
        // div[i].style.visibility='visible';
        // }
        
  }
// https://codepen.io/letstacle/pen/qBmoZoB
  }

  function mostrarTodo(){
    const div2=document.querySelectorAll('#hidden');
      for(let i=0;i<div2.length;i++){
        const styles = window.getComputedStyle(div2[i]);
        // div2[i].style.visibility='visible';
        div2[i].style.display = 'initial';
      }
    } 
</script>

<style>
  /* normal web */
  
  
  /* On screens that are 992px wide or less, go from four columns to two columns */
  /* tablets, celular horizontal y otros dispositivos */
  @media screen and (max-width: 992px) {
    
  }
  /* On screens that are 600px wide or less, make the columns stack on top of each other instead of next to each other */
  /* CELULAR */
  @media screen and (max-width: 600px) {
    #esconder {
        display: none;
        }
    }
     
</style>

