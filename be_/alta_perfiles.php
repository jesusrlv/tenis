<?php
session_start();

if (isset($_SESSION['usr']) && isset($_SESSION['pwd'])) {
  if($_SESSION['perfil']==1){

  }
  else{
    header('Location: prcd/sort.php');
    die();
  }
  
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
      <a class="navbar-brand" href="#"><i class="bi bi-box-seam"></i> Sistema |</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
           <a class="nav-link" aria-current="page" href="dashboard.php"><i class="bi bi-house-fill"></i> Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="venta_gral.php"><i class="bi bi-receipt-cutoff"></i> Ventas</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link active" href="catalogo.php"><i class="bi bi-cloud-plus-fill"></i> Catálogo</a>
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
  <h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-box-seam"></i> Alta de <span class="text-muted">Perfiles</span></h2>

  <div class="container">
    <!-- <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#"><i class="bi bi-bag-check-fill"></i> <strong>Productos activos</strong></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="catalogo_baja.php"><i class="bi bi-bag-x-fill"></i> Productos dados de baja</a>
      </li>
      
    </ul> -->
  </div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

<? include('../query/query_vendedor.php'); ?>
  
  <div class="container marketing mt-5 border-bottom">

  <div class="row">
  <p class="h3 mb-3">Perfil de Entrega</p>
    <div class="col">
        
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput">
        </div>
    </div>
    <div class="col">
        <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarPerfilEntrega"><i class="bi bi-plus-circle-dotted"></i> Agregar Entrega</button>
        </div>
    </div>
  </div>

  

  <hr>
<!-- table ventas -->
<table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Usuario</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Editar</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Estatus</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Eliminar</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql_entrega = $resultado_sql_entrega->fetch_assoc()){
            $x++;
            $id_talla =$row_sql_entrega['id'];
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql_entrega['usr'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_entrega['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';

            if ($row_sql_entrega['status_e']==1){ 
              echo '<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#actualizarStatusE'.$row_sql_entrega['id'].'"><span class="badge bg-success text-light"><i class="bi bi-check-circle-fill"></i> Activo</span></a></td>';
            }
            else{
              echo '<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#actualizarStatusE'.$row_sql_entrega['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-x-circle-fill"></i> Inactivo</span></a></td>';
            }

            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteArticulo'.$row_sql_entrega['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal'.$row_sql_entrega['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar perfil entrega</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_catalogo.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$row_sql_entrega['id'].'" hidden>

                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Nombre</span>
                      <input type="text" name="catalogo" class="form-control" value="'.$row_sql_entrega['usr'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
            
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-square-fill"></i> Cerrar</button>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-save-fill"></i> Actualizar</button>
                  </div>
                 
                  </form>
                </div>
              </div>
            </div>';

            echo '<!-- Modal Status-->
            <div class="modal fade bg-info" id="actualizarStatusE'.$row_sql_entrega['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-pencil-square"></i> Actualizar estatus vendedor</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea actualizar este perfil de vendedor?</strong>
                    <form action="prcd/editar_status.php" method="post">
                    <input name="estatus" value="'.$row_sql_entrega['id'].'" hidden>
                    <select name="statusV" class="form-select mt-2" aria-label="Default select example" required>
                      <option value="">Selecciona el estatus</option>
                      <option value="0">Inactivo</option>
                      <option value="1">Activo</option>
                    </select>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <button type="submit" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Actualizar</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            ';

            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteArticulo'.$row_sql_entrega['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar perfil de entrega</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar este perfil de entrega?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/eliminar_perfil.php?id='.$row_sql_entrega['id'].'" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
            ';
          }
        ?>
      </tbody>
    </table>
    <!-- table ventas -->
    

  </div><!-- /.container -->
  
  <div class="container marketing mt-5 border-bottom">

  <div class="row">
  <p class="h3 mb-3">Perfil de Vendedor</p>
    <div class="col">
        
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput2">
        </div>
    </div>
    <div class="col">
        <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarPerfilVendedor"><i class="bi bi-plus-circle-dotted"></i> Agregar Vendedor</button>
        </div>
    </div>
  </div>

  <hr>
<!-- table ventas -->
<table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Usuario</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Editar</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Estatus</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Eliminar</small></th>
        </tr>
      </thead>
      <tbody id="myTable2">
        
        <?php
        $x = 0;
          while($row_sql_vendedor = $resultado_sql_vendedor->fetch_assoc()){
            $x++;
            $id_talla =$row_sql_vendedor['id'];
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql_vendedor['usr'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_vendedor['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            if ($row_sql_vendedor['status_e']==1){ 
              echo '<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#actualizarStatusV'.$row_sql_vendedor['id'].'"><span class="badge bg-success text-light"><i class="bi bi-check-circle-fill"></i> Activo</span></a></td>';
            }
            else{
              echo '<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#actualizarStatusV'.$row_sql_vendedor['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-x-circle-fill"></i> Inactivo</span></a></td>';
            }
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteArticulo'.$row_sql_vendedor['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal'.$row_sql_vendedor['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar perfil de vendedor</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_catalogo.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$row_sql_vendedor['id'].'" hidden>

                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Nombre</span>
                      <input type="text" name="catalogo" class="form-control" value="'.$row_sql_vendedor['usr'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
            
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-square-fill"></i> Cerrar</button>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-save-fill"></i> Actualizar</button>
                  </div>
                 
                  </form>
                </div>
              </div>
            </div>';

            echo '<!-- Modal Status-->
            <div class="modal fade bg-info" id="actualizarStatusV'.$row_sql_vendedor['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-pencil-square"></i> Actualizar estatus vendedor</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea actualizar este perfil de vendedor?</strong>
                    <form action="prcd/editar_status.php" method="post">
                    <input name="estatus" value="'.$row_sql_vendedor['id'].'" hidden>
                    <select name="statusV" class="form-select mt-2" aria-label="Default select example" required>
                      <option value="">Selecciona el estatus</option>
                      <option value="0">Inactivo</option>
                      <option value="1">Activo</option>
                    </select>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <button type="submit" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Actualizar</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            ';

            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteArticulo'.$row_sql_vendedor['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar este perfil de vendedor?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/eliminar_perfil.php?id='.$row_sql_vendedor['id'].'" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
            ';
          }
        ?>
      </tbody>
    </table>
    <!-- table ventas -->
    

  </div><!-- /.container -->

  <!-- FOOTER -->
  <footer class="footer mt-auto py-3">
    <div class="container">
      <hr class="featurette-divider">
      <p class="float-end"><a href="#">Regresar arriba</a></p>
    <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
    <p><strong>DEV:</strong> © 2022 <a href="https://direccioneszac.net/red_deploy/" target="_blank">Nexus Technology and Consulting</a>.</p>
    </div>
  </footer>
</main>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

  </body>
</html>

<!-- Agregar perfil entrega -->
<!-- Modal -->
<div class="modal fade" id="agregarPerfilEntrega" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar perfil entrega</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_perfil.php" method="post">
      <input type="text" name="id" hidden value="2">

      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Nombre</span>
            <input type="text" name="perfil" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Contraseña</span>
            <input type="password" name="password" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-cloud-upload-fill"></i> Cerrar</button>
        <button type="submit" class="btn btn-primary"><i class="bi bi-x-square-fill"></i> Guardar</button>
      </form>
      </div>
    </div>
  </div>
</div>
<!-- Agregar producto -->

<!-- Agregar perfil vendedor -->
<!-- Modal -->
<div class="modal fade" id="agregarPerfilVendedor" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar perfil vendedor</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_perfil.php" method="post">
        <input type="text" name="id" hidden value="3">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Nombre</span>
            <input type="text" name="perfil" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Contraseña</span>
            <input type="password" name="password" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-cloud-upload-fill"></i> Cerrar</button>
        <button type="submit" class="btn btn-primary"><i class="bi bi-x-square-fill"></i> Guardar</button>
      </form>
      </div>
    </div>
  </div>
</div>
<!-- Agregar producto -->


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
    $(document).ready(function () {
        $("#myInput2").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable2 tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
  </script>