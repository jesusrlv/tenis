<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Shoes Store MX · Catálogo</title>
    <link rel="icon" type="image/png" href="../../assets/brand/img/cel.ico">

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

      #hidden:active {
        /* border: 1px solid #ffc107; */
        /* border-color:#ffc107; */
        box-shadow: 0 10px 20px rgba(0,0,0,.1), 0 4px 8px rgba(0,0,0,.06);
        transform: scale(1.03);
        transition: width 0.8s, height 0.8s, transform 0.3s;
        
      }
      #hidden:hover {
        /* border: 1px solid #ffc107; */
        /* border-color:#ffc107; */
        box-shadow: 0 10px 20px rgba(0,0,0,.1), 0 4px 8px rgba(0,0,0,.06);
        transform: scale(1.03);
        transition: width 0.8s, height 0.8s, transform 0.3s;
        
      }
      #hidden:visited {
        /* border: 1px solid #ffc107; */
        /* border-color:#ffc107; */
        background-color: yellow;
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
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-primary">
    <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="../../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="30" height="24"> Shoes Store MX</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="index.html"><i class="bi bi-house-fill"></i> Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="catalogo.php?id=1"><i class="bi bi-box-seam"></i> Catálogo</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="envio.php"><i class="bi bi-geo-fill"></i> Tu pedido</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="be_/"><i class="bi bi-journal-code"></i> Be_</a>
          </li>
        </ul>
       
      </div>
    </div>
  </nav>
</header>

<main class="bg-light">

<div class="mt-5 pt-2 mb-3">
  <h1 class="text-center">
    <p class="m-0 p-0"><img src="../../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="270"></p>
    <p class="m-0 p-0"><img src="../../assets/brand/img/letras_verdes.png" alt="" width="270"></p>
  </h1>
</div>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->



  <div class="container marketing" style="background-color:#f7f7f7;">
  <p class=" pt-4"><strong>Categorías</strong></p>
  <div class="container mb-4">
  <p class="">
    <form action="" name="form">
        <div class="input-group mb-3 w-50">
          <div class="input-group-text">
            <input class="form-check-input mt-0" type="checkbox" id="checkbox1" value="" aria-label="Checkbox for following text input" onclick="habilitar1()">
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="marca" disabled="disabled">
            <option selected>Marca</option>
            <?php
              $sqlMarca ="SELECT * FROM marca";
              $resultado_sqlMarca = $conn->query($sqlMarca);
              while($row_sqlMarca = $resultado_sqlMarca->fetch_assoc()){
                echo '<option value="'.$row_sqlMarca['marca'].'">'.$row_sqlMarca['marca'].'</option>';
              }
            ?>
            
          </select>
        </div>
      <!-- divisor -->
        <div class="input-group mb-3 w-50">
          <div class="input-group-text">
            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input" onclick="habilitar2()">
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="modelo" disabled="disabled">
            <option selected>Modelo</option>
            <?php
              $sqlModelo ="SELECT * FROM modelo";
              $resultado_sqlModelo = $conn->query($sqlModelo);
              while($row_sqlModelo = $resultado_sqlModelo->fetch_assoc()){
                echo '<option value="'.$row_sqlModelo['modelo'].'">'.$row_sqlModelo['modelo'].'</option>';
              }
            ?>
          </select>
        </div>
      <!-- divisor -->
        <div class="input-group mb-3 w-50">
          <div class="input-group-text">
            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input" onclick="habilitar3()">
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="color" disabled="disabled">
            <option selected>Color predominante</option>
            <?php
              $sqlColor ="SELECT * FROM color";
              $resultado_sqlColor = $conn->query($sqlColor);
              while($row_sqlColor = $resultado_sqlColor->fetch_assoc()){
                echo '<option value="'.$row_sqlColor['color'].'">'.$row_sqlColor['color'].'</option>';
              }
            ?>
          </select>
        </div>
      <!-- divisor -->
        <div class="input-group mb-3 w-50">
          <div class="input-group-text">
            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input" onclick="habilitar4()">
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="material" disabled="disabled">
            <option selected>Material</option>
            <?php
              $sqlMaterial ="SELECT * FROM material";
              $resultado_sqlMaterial = $conn->query($sqlMaterial);
              while($row_sqlMaterial = $resultado_sqlMaterial->fetch_assoc()){
                echo '<option value="'.$row_sqlMaterial['material'].'">'.$row_sqlMaterial['material'].'</option>';
              }
            ?>
          </select>
        </div>
      <!-- divisor -->
        <div class="input-group mb-3 w-50">
          <div class="input-group-text">
            <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input" onclick="habilitar5()">
          </div>
          <select class="form-select" aria-label="Example select with button addon" id="talla" disabled="disabled" onchange="showUser(this.value)">
            <option selected>Talla</option>
            <?php
              $sqlTalla ="SELECT * FROM talla_catalogo";
              $resultado_sqlTalla = $conn->query($sqlTalla);
              while($row_sqlTalla = $resultado_sqlTalla->fetch_assoc()){
                echo '<option value="'.$row_sqlTalla['talla'].'">'.$row_sqlTalla['talla'].' | '.$row_sqlTalla['tipo'].'</option>';
              }
            ?>
          </select>
        </div>
        <button class="btn btn-primary" type="submit" name="filtro"><i class="bi bi-filter-circle-fill"></i> Filtro</button>
        
    </form>
  </p>
    <div class="btn-group btn-group-sm" role="group" aria-label="Basic radio toggle button group">
      <!-- <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" onclick="mostrarTodo()" checked>
      <label class="btn btn-outline-primary" for="btnradio1">Todos</label> -->

      
<!-- codigo -->
<script>
function showUser(str) {
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET","prcd/filtro.php?q="+str,true);
    xmlhttp.send();
  }
}
</script>
</head>
<body>

<!-- <form>
<select name="users" onchange="showUser(this.value)">
  <option value="">Select a person:</option>
  <option value="1">Peter Griffin</option>
  <option value="2">Lois Griffin</option>
  <option value="3">Joseph Swanson</option>
  <option value="4">Glenn Quagmire</option>
  </select>
</form> -->
<br>
<div id="txtHint"><b>Person info will be listed here...</b></div>
<!-- codigo -->
     
<?php
    $sum = 1;
    include('query/query_categorias.php');
    // include('prcd/filtros.php');
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

<script>
  var x = document.getElementById('checkbox1');
  // if (checked = x.checked){
  if (x.checked == true){
    document.getElementById("marca").disabled=false;
  }
  else{
    document.getElementById("marca").disabled=true;
  }

  var x2 = document.getElementById('checkbox2');
  if (checked != x.checked){
  // if (x2.checked == true){
    document.getElementById("modelo").disabled=false;
  }
  else{
    document.getElementById("modelo").disabled=true;
  }

  var x3 = document.getElementById('checkbox3');
  // if (checked = x.checked){
  if (x3.checked == true){
    document.getElementById("color").disabled=false;
  }
  else{
    document.getElementById("color").disabled=true;
  }

  var x4 = document.getElementById('checkbox4');
  // if (checked = x.checked){
  if (x4.checked == true){
    document.getElementById("material").disabled=false;
  }
  else{
    document.getElementById("material").disabled=true;
  }

  var x5 = document.getElementById('checkbox5');
  // if (checked = x.checked){
  if (x5.checked == true){
    document.getElementById("talla").disabled=false;
  }
  else{
    document.getElementById("talla").disabled=true;
  }
  
  function habilitar1(){
    document.getElementById("marca").disabled=false;
  }
  function habilitar2(){
    document.getElementById("modelo").disabled=false;
  }
  function habilitar3(){
    document.getElementById("color").disabled=false;
  }
  function habilitar4(){
    document.getElementById("material").disabled=false;
  }
  function habilitar5(){
    document.getElementById("talla").disabled=false;
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

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script>
          $(function() {

            // Asigno un evento a un botón de mi formulario
            $("[name='filtro']").click(function(e){

                e.preventDefault();

                var datos_enviados = {
                    'buscar_cli' : $("[name='filtro']")
                }

            var request = $.ajax({
              url: "prcd/filtro.php",
              method: "POST",
              data: datos_enviados,
              dataType: "json"
            });

            // request.done(function( data ) {
            //     alert("Todo bien");
            //     console.log(data);
                 //Si pones el content-type en PHP no necesitas parse         
            // });

            // request.fail(function( jqXHR, textStatus ) {
            //   alert( "Hubo un error: " + textStatus );
            // });


            })

            });
        </script>