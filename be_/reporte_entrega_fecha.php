<?php
session_start();

if (isset($_SESSION['usr']) && isset($_SESSION['pwd'])) {
  if($_SESSION['perfil']==1){

  }
  else{
    echo '<script>
    alert "1";<script>';
    header('Location: prcd/sort.php');
    die();
  }
  
} 
else {
  // En caso contrario redirigimos el visitante a otra página
  echo '<script>
  alert "2";<script>';
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
    <a class="navbar-brand" href="#"><img src="../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="30" height="24"> Sistema | Shoes Store MX</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
           <a class="nav-link" aria-current="page" href="dashboard.php"><i class="bi bi-house-fill"></i> Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="venta_gral.php"><i class="bi bi-receipt-cutoff"></i> Ventas</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="catalogo.php"><i class="bi bi-cloud-plus-fill"></i> Catálogo</a>
          </li>
        </ul>
        <form class="d-flex">
          <a href="prcd/sort.php" class="btn btn-outline-light" type="submit"><i class="bi bi-door-open-fill"></i> Salir</a>
        </form>
      </div>
    </div>
  </nav>
</header>

<main>
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><img src="../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="72" height="72"> Venta <span class="text-muted">General</span></h2>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
<? 
    $idReporte = $_POST['id'];
    include('../query/query_reporte_entregas.php'); 
?>
  <div class="container marketing mt-5 border-bottom">

  <form action="reporte_entrega_fecha.php" method="POST">
  <div class="input-group mb-4 w-50">
    <span class="input-group-text" id="basic-addon1"><i class="bi bi-calendar-week"></i></span>
    <input type="date" class="form-control" placeholder="Buscar por fecha" aria-label="Buscar por fecha" aria-describedby="basic-addon1" id="fecha" name="fecha" required >
    <input type="text" value="<?php echo $idReporte ?>" name="id" hidden>
    <button type="submit" class="btn btn-primary">Buscar</button>
  </div>
  </form>

  <hr>
 
  <div class="row">
    <div class="col">
      <div class="input-group">
        <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
        <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput">
      </div>
    </div>
    <div class="col text-end">
      <a href="excel_reporte_entrega_fecha.php?id=<?php echo $idReporte ?>&fecha=<?php echo $fechaBusqueda ?>" class="btn btn-outline-primary"><i class="bi bi-file-earmark-excel-fill"></i> Reporte Excel</a>
    </div>
  </div>
  <hr>

    <!-- table ventas -->
    <div class="table-responsive">

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-person-circle"></i><br>Nombre</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i><br>Dirección</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-telephone"></i><br>Teléfono</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-upc-scan"></i><br>Clave<br>interna<br>de rastreo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-info-circle"></i><br>Detalles</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-info-circle"></i><br>Entregó</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $resultadoBusqueda->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center"><small>'.$x.'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['nombre'].'</small></td>';
            echo'<td><small>'.$row_sql['direccion'].'</td>';
            echo'<td class="text-center"><small>'.$row_sql['telefono'].'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['clave_rastreo_int'].'</small></td>';
            echo'<td class="text-center"><a href="venta_individual.php?venta='.$row_sql['clave_rastreo_int'].'" type="button" class="btn btn-primary btn-sm"><i class="bi bi-clipboard"></i> Detalles</a></td>';
            $idVendedor = $row_sql['entrega'];
            echo'<td class="text-center"><small>'.$row_sql['entrega'].'</small></td>';
            echo'</tr>';
          }
        ?>
      </tbody>
    </table>
    </div>
    <!-- table ventas -->
    <div class="d-grid gap-2">
     <a href="reporte_perfiles.php" class="btn btn-primary" type="button">Regresar</a>
    </div>
  </div><!-- /.container -->

  <!-- FOOTER -->
  <footer class="footer mt-auto py-3">
    <div class="container">
      <hr class="featurette-divider">
      <p class="float-end"><a href="#">Regresar arriba</a></p>
    <p><strong>DEV:</strong> © 2022 <a href="https://direccioneszac.net/red_deploy/" target="_blank">Nexus Technology and Consulting</a>.</p>
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
    transition: width 0.8s, height 0.8s, transform 0.8s;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
  </script>