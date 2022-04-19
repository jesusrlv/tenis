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
           <a class="nav-link" aria-current="page" href="index.html"><i class="bi bi-house-fill"></i> Inicio</a>
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
  <h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-phone"></i> Venta <span class="text-muted">General</span></h2>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
<? include('../query/query_ventas.php'); ?>
  <div class="container marketing mt-5 border-bottom">

  <div class="input-group mb-4 w-50">
    <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
    <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput">
  </div>

  <hr>

    <!-- table ventas -->
    <table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-calendar2-week-fill"></i> Fecha venta</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-123"></i> Cantidad</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Precio</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-person-circle"></i> Nombre</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Dirección</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-telephone"></i> Teléfono</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-envelope"></i> Email</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-upc-scan"></i> Clave interna de rastreo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-truck"></i> Rastreo paquetería</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-info-circle"></i> Detalles</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $resultado_sql->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td>'.$x.'</td>';
            echo'<td>'.$row_sql['fecha_venta'].'</td>';
            echo'<td class="text-center">'.$row_sql['cantidad'].'</td>';
            echo'<td class="text-center">$'.$row_sql['precio'].'</td>';
            echo'<td class="text-center">'.$row_sql['nombre'].'</td>';
            echo'<td>'.$row_sql['direccion'].'</td>';
            echo'<td class="text-center">'.$row_sql['telefono'].'</td>';
            echo'<td class="text-center">'.$row_sql['email'].'</td>';
            echo'<td class="text-center">'.$row_sql['clave_rastreo_int'].'</td>';
            if(!$row_sql['clave_rastreo_ext']){
              echo'<td class="text-center"><button class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql['id'].'"><i class="bi bi-plus-circle-dotted"></i> Paquetería</button></td>';
              echo'<div class="modal fade" id="exampleModal'.$row_sql['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel'.$row_sql['id'].'" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle-dotted"></i> Agregar envio</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <form action="../query/clave_rastreo.php" method="post">
                  <div class="modal-body">
                      
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-truck"></i></span>
                      <input type="text" name="compania" class="form-control" placeholder="Ingrese compañía" aria-label="Ingrese compañía" aria-describedby="basic-addon1" required>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-calendar-check-fill"></i></span>
                      <input type="date" name="fecha_envio" class="form-control" placeholder="Ingrese compañía" aria-label="Ingrese compañía" aria-describedby="basic-addon1" required>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-person-fill"></i></span>
                      <input type="text" name="persona_envia" class="form-control" placeholder="Nombre persona que envía" aria-label="Nombre persona que envía" aria-describedby="basic-addon1" required>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text bg-warning" id="basic-addon1"><i class="bi bi-send-fill"></i></span>
                      <input type="text" name="clave_rastreo_int" value="'.$row_sql['clave_rastreo_int'].'" class="form-control" placeholder="Costro de envío" aria-label="Costro de envío" aria-describedby="basic-addon1" READONLY>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-coin"></i></span>
                      <input type="text" name="costo_envio" class="form-control" placeholder="Costo de envío" aria-label="Costo de envío" aria-describedby="basic-addon1" required>
                    </div>
                    
                    <div class="input-group mb-3">
                        <span class="input-group-text bg-primary" id="basic-addon1"><i class="bi bi-journal-code text-light"></i></span>
                        <input type="text" name="clave_rastreo_ext" class="form-control" placeholder="Clave de rastreo envío" aria-label="Clave de rastreo envío" aria-describedby="button-addon2" required>
                        <button class="btn btn-primary" type="submit" id="button-addon2"><i class="bi bi-plus-circle-dotted"></i> Agregar</button>
                    </div>
                  </div>
                  </form>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-circle-fill"></i> Cerrar</button>
                  </div>
                </div>
              </div>
            </div>';
            }
            else{
              echo'<td class="text-center"><a href="revision_envio.php?id='.$row_sql['clave_rastreo_ext'].'" style="text-decoration: none;"><i class="bi bi-eye-fill"></i> '.$row_sql['clave_rastreo_ext'].'</a></td>';
            }
            // echo'<td class="text-center">'.$row_sql['clave_rastreo_ext'].'</td>';
            echo'<td class="text-center"><a href="venta_individual.php?venta='.$row_sql['clave_rastreo_int'].'" type="button" class="btn btn-primary btn-sm"><i class="bi bi-clipboard"></i> Detalles</a></td>';
            echo'</tr>';
          }
        ?>
      </tbody>
    </table>
    <!-- table ventas -->

  </div><!-- /.container -->

  <!-- FOOTER -->
  <footer class="container mt-5">
    <p class="float-end"><a href="#">Regresar arriba</a></p>
    <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
    <p>&copy; 2022 RedDeploy</p>
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