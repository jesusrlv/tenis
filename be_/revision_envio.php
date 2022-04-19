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

    <?php
        $id_envio = $_REQUEST['id'];
    ?>

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
  <h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-phone"></i> Rastreo <span class="text-muted">Envíos</span></h2>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
<? include('../query/query_envios.php'); ?>
  <div class="container marketing mt-5 border-bottom">

  <div class="input-group mb-4 w-50">
    <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
    <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput">
  </div>

  <hr>

    <!-- table ventas -->
    <table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr  class="text-center">
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-calendar2-week-fill"></i> Fecha registro</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-building"></i> Compañía</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Fecha llegada</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-person-check-fill"></i> Nombre envío</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-coin"></i> Costo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Código interno</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-journal-code"></i> Código externo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-activity"></i> Acción</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $resultado_sql->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql['fecha_registro'].'</td>';
            echo'<td class="text-center">'.$row_sql['compania'].'</td>';
            echo'<td class="text-center">'.$row_sql['fecha_llegada'].'</td>';
            echo'<td class="text-center">'.$row_sql['id_envio'].'</td>';
            echo'<td class="text-center">'.$row_sql['costo_envio'].'</td>';
            echo'<td class="text-center">'.$row_sql['codigo_envio_interno'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#editCode" style="text-decoration: none;"><i class="bi bi-pencil-square"></i> '.$row_sql['codigo_envio_externo'].'</a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'</tr>';

            echo '<!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar datos de rastreo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>

                  <form action="prcd/editar_rastreo.php" method="post">
                  <input value="'.$row_sql['id'].'" name="id" hidden>
                  <div class="modal-body">
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Compañía de paquetería">
                        <i class="bi bi-building"></i>
                      </button>
                      <input type="text" class="form-control" placeholder="Compañía" aria-label="Username" aria-describedby="basic-addon1" value="'.$row_sql['compania'].'" name="compania">
                    </div>
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Fecha de entrega de paquete">
                        <i class="bi bi-tag"></i>
                      </button>
                      <input type="date" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" value="'.$row_sql['fecha_llegada'].'" name="fecha_entrega">
                    </div>
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Persona que envía">
                      <i class="bi bi-person-check-fill"></i>
                      </button>
                      <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" value="'.$row_sql['id_envio'].'" name="persona_envia">
                    </div>
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Costo de paquetería">
                        <i class="bi bi-coin"></i>
                      </button>
                      <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" value="'.$row_sql['costo_envio'].'" name="costo">
                    </div>
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Código rastreo interno">
                        <i class="bi bi-card-text"></i>
                      </button>
                      <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" value="'.$row_sql['codigo_envio_interno'].'" name="codigo_interno">
                    </div>
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Código rastreo paquetería">
                        <i class="bi bi-journal-code"></i>
                      </button>
                      
                      <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" value="'.$row_sql['codigo_envio_externo'].'" name="codigo_externo" READONLY>
                    </div>
                  </div>
                  

                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-pencil-square"></i> Actualizar datos</button>
                  </form>

                  </div>
                </div>
              </div>
            </div>';

            echo'<!-- Modal -->
            <div class="modal fade" id="editCode" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-pencil-square"></i> Editar código de rastreo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                  <form action="prcd/editar_codigo_rastreo.php" method="post">
                    <div class="input-group mb-3">
                      <button type="button" class="btn btn-primary" data-bs-toggle="tooltip" data-bs-placement="right" title="Código rastreo paquetería">
                        <i class="bi bi-journal-code"></i>
                      </button>
                      
                      <input type="text" class="form-control" placeholder="Código" aria-label="Código" aria-describedby="basic-addon1" value="'.$row_sql['codigo_envio_externo'].'" name="codigo_externo">
                      <input type="text" class="form-control" placeholder="Código" aria-label="Código" aria-describedby="basic-addon1" value="'.$row_sql['codigo_envio_externo'].'" name="codigo_externo2" hidden>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                  </div>
                  </form>
                </div>
              </div>
            </div>';
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