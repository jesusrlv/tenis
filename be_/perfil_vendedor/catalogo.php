<?php
session_start();

  if($_SESSION['perfil']==3){
  }
  else{
    header('Location: ../prcd/sort.php');
    die();
  }
  
    $id_sess = $_SESSION['id'];
    $nombre_sess = $_SESSION['usr'];
    $nombre = $_SESSION['nombre'];
    $perfil_sess = $_SESSION['perfil'];

?>
<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Shoes Store MX · Catálogo</title>
    <link rel="icon" type="image/png" href="../../assets/brand/img/cel.ico">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    
    <!-- ajax -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- ajax -->
    <script src="query/compra.js"></script>
    <script src="../../js/script.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      /* normal web */
      .selector1{
          width:50%;
        }
      
      
      /* On screens that are 992px wide or less, go from four columns to two columns */
      /* tablets, celular horizontal y otros dispositivos */
      @media screen and (max-width: 2000px) {
        .selector1{
          width:50%;
        }
        
      }
      /* On screens that are 600px wide or less, make the columns stack on top of each other instead of next to each other */
      /* CELULAR */
      @media screen and (max-width: 600px) {
          #esconder {
              display: none;
              }
          #titulo_card{
            font-size:14px;
          }
          #titulo_card2{
            font-size:12px;
          }
          #titulo_card3{
            font-size:8px;
          }
          #texto_titulo{
            font-size:18px;
          }
          .selector1{
            width:100%;
          }
          
      }
        
    </style>
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

      #hidden:active {
     
        box-shadow: 0 10px 20px rgba(0,0,0,.1), 0 4px 8px rgba(0,0,0,.06);
        transform: scale(1.03);
        transition: width 0.8s, height 0.8s, transform 0.3s;
        
      }
      #hidden:hover {
    
        box-shadow: 0 10px 20px rgba(0,0,0,.1), 0 4px 8px rgba(0,0,0,.06);
        transform: scale(1.03);
        transition: width 0.8s, height 0.8s, transform 0.3s;
        
      }
      #hidden:visited {
    
        background-color: yellow;
      }
    </style>

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
<header>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-primary">
    <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="../../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="30" height="24"> Shoes Store MX | <?php echo $nombre_sess ?></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
           <li class="nav-item">
            <a class="nav-link" aria-current="page" href="catalogo.php?id=1"><i class="bi bi-house-fill"></i> Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="venta_gral.php"><i class="bi bi-box-seam"></i> Mis pedidos</a>
          </li>
          <li class="nav-item">
          <a href="../prcd/sort.php" class="nav-link active" type="submit"><i class="bi bi-door-open-fill"></i> Salir</a>
          </li>
        </ul>
        
        <button class="btn btn-outline-light position-relative" type="buton" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"><i class="bi bi-cart-plus"></i> <span id="esconder">Carrito de compras</span>
          <span class="position-absolute top-100 start-0 translate-middle badge rounded-pill bg-danger" id="notificacionBadge">
    0
          <span class="visually-hidden">unread messages</span>
        </span>
      </button>
       
      </div>
    </div>
  </nav>
</header>

<main class="bg-light">

<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><img src="../../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="270"><br><img src="../../assets/brand/img/letras_verdes.png" alt="" width="270"><br> Perfil <span class="text-muted">Vendedor</span>
<br><small>
Bienvenido<span class="text-muted"> <?php echo $nombre?>
    </small>
</h2>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
  <div class="container marketing" style="background-color:#f7f7f7;">
  <p class=" pt-4"><strong>Seleccione tipo de filtro...</strong></p>
  <div class="container mb-4">
    <hr class="w-50">
      
    <form id="form1">
      <!-- divisor -->
      <div class="input-group mb-3 selector1">
          <div class="input-group-text bg-primary text-light">
            <i class="bi bi-filter-circle-fill"></i>          
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="filter" name="filter" onchange="inputFiltro()" required>
            <option value="">Selecciona el tipo de filtro ...</option>
            <option value="1">a. Marca</option>
            <option value="2">b. Modelo</option>
            <option value="3">c. Color</option>
            <option value="4">d. Material</option>

          </select>
        </div>
    <hr class="w-50">
    <p class="">
   
    <!-- entran los dos filtros -->
    <!-- divisor -->
    <div class="input-group mb-3 selector1" id="marcaH" hidden>
          <div class="input-group-text bg-primary text-light">
          <i class="bi bi-search"></i>            
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="marca">
            <option value=""><i class="fa fa-cc-mastercard" aria-hidden="true"></i> ...</option>
            
            <?php
            include('../../query/query_categorias_backend.php');
            while($rowMarca = $resultadoMarcas->fetch_assoc()){
              echo'
              <option value="'.$rowMarca['marca'].'">'.$rowMarca['marca'].'</option>
              ';
            }
            ?>
            
          </select>
        </div>

        <div class="input-group mb-3 selector1" id="modeloH" hidden>
          <div class="input-group-text bg-primary text-light">
          <i class="bi bi-search"></i>            
          </div>
          <!-- <input type="text" class="form-control" placeholder="Modelo..." aria-label="Username" aria-describedby="basic-addon1" id="modelo"> -->
          <select class="form-select" aria-label="Example select with button addon" id="modelo">
            <option value=""><i class="fa fa-cc-mastercard" aria-hidden="true"></i> ...</option>
            
            <?php
            include('query/query_categorias_backend.php');
            while($rowModelo = $resultadoModelo->fetch_assoc()){
              echo'
              <option value="'.$rowModelo['modelo'].'">'.$rowModelo['modelo'].'</option>
              ';
            }
            ?>
            
          </select>
        </div>

        <!-- divisor -->
      <div class="input-group mb-3 selector1" id="colorH" hidden>
          <div class="input-group-text bg-primary text-light">
          <i class="bi bi-search"></i>          
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="color">
            <option value="">Color ...</option>
            
            <?php
            include('query/query_color.php');
            while($rowColor = $resultado_sqlColor->fetch_assoc()){
              echo'
              <option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>
              ';
            }
            ?>
            
          </select>
        </div>

        <div class="input-group mb-3 selector1" id="materialH" hidden>
          <div class="input-group-text bg-primary text-light">
          <i class="bi bi-search"></i>            
          </div>
          <!-- <input type="text" class="form-control" placeholder="Material..." aria-label="Username" aria-describedby="basic-addon1" id="material"> -->
          <select class="form-select" aria-label="Example select with button addon" id="material">
            <option value=""><i class="fa fa-cc-mastercard" aria-hidden="true"></i> ...</option>
            
            <?php
            include('query/query_categorias_backend.php');
            while($rowMaterial = $resultadoMaterial->fetch_assoc()){
              echo'
              <option value="'.$rowMaterial['material'].'">'.$rowMaterial['material'].'</option>
              ';
            }
            ?>
            
          </select>
        </div>

        <div class="input-group mb-3 selector1" id="">
          <div class="input-group-text bg-primary text-light">
          <i class="bi bi-grid-3x3-gap-fill"></i>          
          </div>
          <select class="form-select" aria-label="Example select with button addon" name="talla" required>
            <option value="">Talla ...</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            
          </select>
        </div>
    <!-- entran los dos filtros -->
    <hr class="w-50">
        
        <button class="btn btn-primary" type="submit" id="smt"><i class="bi bi-filter-circle-fill"></i> Filtro</button>
        
    </form>
  </p>
  
    <div class="btn-group btn-group-sm" role="group" aria-label="Basic radio toggle button group">

<!-- código consulta -->

</head>
<body>


<br>

<!-- codigo -->
     
    </div>
    

  </div>
  
    <div id="pagination_link"></div>
    <span id="txtHint"><b>Información...</b></span>

    <!-- Three columns of text below the carousel -->
    <!-- consultas productos -->
    <div class="row row-cols-2 g-2">
      
    </div><!--row-->
    <!-- consultas productos -->
    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
   


  <!-- FOOTER -->
  <!-- <footer class="container"> -->
  <footer class="footer mt-auto py-3">
    <p class="float-end"><a href="#">Regresar arriba</a></p>
    <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
    <p><strong>DEV:</strong> © 2022 <a href="#" target="_blank">Nexus Technology and Consulting</a>.</p>
    <p><a href="privacidad/" style="text-decoration: none;"><i class="bi bi-shield-fill-check"></i> Política de privacidad</a></p>
  </footer>
  
</main>


    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>

      
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

<script>
  x=0;
  function cambio(x){
    
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

<script>
          $(document).ready(function(){
          var form=$("#form1");
          $("#form1").submit(function(event){
          $.ajax({
                  type:"POST",
                  url:" ../prcd/filtro.php",
                  data:form.serialize(),
                  dataType: "html",
                  // async:false,
                  cache: false,
                    success: function(data) {
                      $("#txtHint").html(data);                  
                    }               
                  });
                  
                  event.preventDefault();
          });
          });

        </script>

<!-- ajax paginación -->
<script>
  var valorPag;
  function valorP(valorPg){
    var valorPag = valorPg;
    var filter= document.querySelector("[name='filter']").value;
    var filtro= document.querySelector("[name='filtro']").value;
    var talla= document.querySelector("[name='talla']").value;
         
          $.ajax({
                  type:"POST",
                  url:"../prcd/filtro.php",
                  data:{
                    valorPag:valorPag,
                    filter:filter,
                    talla:talla,
                    filtro:filtro
                  },
                  dataType: "html",
                  cache: false,
                    success: function(data) {
                      $("#txtHint").html(data);                  
                    }               
                  });
                  
                  event.preventDefault();

        }

        </script>