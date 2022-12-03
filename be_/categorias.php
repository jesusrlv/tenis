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
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><img src="../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="72" height="72"> Catálogo <span class="text-muted">Sistema</span></h2>

  <div class="container">
   
  </div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

<? include('../query/query_categorias_backend.php'); ?>
  
  <div class="container marketing mt-5 border-bottom">

  <div class="row">
    <div class="col">
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput">
        </div>
    </div>
    <div class="col">
        <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarProducto"><i class="bi bi-plus-circle-dotted"></i> Agregar color</button>
        </div>
    </div>
  </div>

  <hr>

    <!-- table ventas -->
    <div class="table-responsive">
    <p class="h3 mb-5"><i class="bi bi-palette"></i> Colores</p>

    <table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Color</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Editar</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Eliminar</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($rowColores = $resultadoColores->fetch_assoc()){
            $x++;
            $id_talla =$rowColores['id'];
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$rowColores['color'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$rowColores['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteArticulo'.$rowColores['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal'.$rowColores['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_catalogo.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$rowColores['id'].'" hidden>

                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Color</span>
                      <input type="text" name="color" class="form-control" value="'.$rowColores['color'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
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

            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteArticulo'.$rowColores['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar este color?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/eliminar_catalogo.php?id='.$rowColores['id'].'&type=1" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
            ';
          }
        ?>
      </tbody>
    </table>
    </div>
    <!-- table ventas -->

  <hr>

  <div class="row">
    <div class="col">
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput2">
        </div>
    </div>
    <div class="col">
        <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarMarca"><i class="bi bi-plus-circle-dotted"></i> Agregar marca</button>
        </div>
    </div>
  </div>

    <!-- table ventas -->
    <div class="table-responsive">
    <p class="h3 mb-5"><i class="bi bi-back"></i> Marcas</p>

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Marca</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Editar</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Eliminar</small></th>
        </tr>
      </thead>
      <tbody id="myTable2">
        
        <?php
        $x = 0;
          while($rowMarca = $resultadoMarcas->fetch_assoc()){
            $x++;
            $id_talla =$rowMarca['id'];
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$rowMarca['marca'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal2'.$rowMarca['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteMarca'.$rowMarca['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal2'.$rowMarca['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_catalogo.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$rowMarca['id'].'" hidden>

                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Marca</span>
                      <input type="text" name="marca" class="form-control" value="'.$rowMarca['marca'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
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

            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteMarca'.$rowMarca['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar esta marca?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/eliminar_catalogo.php?id='.$rowMarca['id'].'&type=2" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
            ';
          }
        ?>
      </tbody>
    </table>
    </div>
    <!-- table ventas -->
  <hr>

  <div class="row">
    <div class="col">
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput3">
        </div>
    </div>
    <div class="col">
        <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarModelo"><i class="bi bi-plus-circle-dotted"></i> Agregar Modelo</button>
        </div>
    </div>
  </div>

    <!-- table ventas -->
    <div class="table-responsive">
    <p class="h3 mb-5"><i class="bi bi-back"></i> Modelo</p>

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Modelo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Editar</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Eliminar</small></th>
        </tr>
      </thead>
      <tbody id="myTable3">
        
        <?php
        $x = 0;
          while($rowModelo = $resultadoModelo->fetch_assoc()){
            $x++;
            $id_talla =$rowModelo['id'];
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$rowModelo['modelo'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal3'.$rowModelo['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteModelo'.$rowModelo['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal3'.$rowModelo['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_catalogo.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$rowModelo['id'].'" hidden>

                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Marca</span>
                      <input type="text" name="modelo" class="form-control" value="'.$rowModelo['modelo'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
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

            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteModelo'.$rowModelo['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar esta marca?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/eliminar_catalogo.php?id='.$rowModelo['id'].'&type=3" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
            ';
          }
        ?>
      </tbody>
    </table>
    </div>
    <!-- table ventas -->
  <hr>

  <div class="row">
    <div class="col">
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput4">
        </div>
    </div>
    <div class="col">
        <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarMaterial"><i class="bi bi-plus-circle-dotted"></i> Agregar material</button>
        </div>
    </div>
  </div>

    <!-- table ventas -->
    <div class="table-responsive">
    <p class="h3 mb-5"><i class="bi bi-back"></i> Material</p>

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Material</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Editar</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Eliminar</small></th>
        </tr>
      </thead>
      <tbody id="myTable4">
        
        <?php
        $x = 0;
          while($rowMaterial = $resultadoMaterial->fetch_assoc()){
            $x++;
            $id_talla =$rowMaterial['id'];
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$rowMaterial['material'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal4'.$rowMaterial['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteMaterial'.$rowMaterial['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal4'.$rowMaterial['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_catalogo.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$rowMaterial['id'].'" hidden>

                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Marca</span>
                      <input type="text" name="material" class="form-control" value="'.$rowMaterial['material'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
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

            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteMaterial'.$rowMaterial['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar categoría</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar esta marca?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/eliminar_catalogo.php?id='.$rowMaterial['id'].'&type=4" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> Eliminar</a>
                  </div>
                </div>
              </div>
            </div>
            ';
          }
        ?>
      </tbody>
    </table>
    </div>
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

<!-- Agregar producto -->
<!-- Modal -->
<div class="modal fade" id="agregarProducto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar color</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_catalogo.php" method="post">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette"></i></span>
            <input type="text" name="color" class="form-control" placeholder="Color" aria-label="Color" aria-describedby="basic-addon1">
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-square-fill"></i> Cerrar</button>
        <button type="submit" class="btn btn-primary"><i class="bi bi-cloud-upload-fill"></i> Guardar</button>
      </form>
      </div>
    </div>
  </div>
</div>

<!-- Agregar producto -->

<!-- Agregar marca -->
<!-- Modal -->
<div class="modal fade" id="agregarMarca" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar marca</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_catalogo.php" method="post">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-back"></i></span>
            <input type="text" name="marca" class="form-control" placeholder="Marca" aria-label="Marca" aria-describedby="basic-addon1">
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-square-fill"></i> Cerrar</button>
        <button type="submit" class="btn btn-primary"><i class="bi bi-cloud-upload-fill"></i> Guardar</button>
      </form>
      </div>
    </div>
  </div>
</div>
<!-- Agregar marca -->

<!-- Agregar modelo -->
<!-- Modal -->
<div class="modal fade" id="agregarModelo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar modelo</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_catalogo.php" method="post">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-back"></i></span>
            <input type="text" name="modelo" class="form-control" placeholder="Modelo" aria-label="Modelo" aria-describedby="basic-addon1">
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-square-fill"></i> Cerrar</button>
        <button type="submit" class="btn btn-primary"><i class="bi bi-cloud-upload-fill"></i> Guardar</button>
      </form>
      </div>
    </div>
  </div>
</div>
<!-- Agregar modelo -->

<!-- Agregar material -->
<!-- Modal -->
<div class="modal fade" id="agregarMaterial" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar material</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_catalogo.php" method="post">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-back"></i></span>
            <input type="text" name="material" class="form-control" placeholder="Material" aria-label="Material" aria-describedby="basic-addon1">
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-square-fill"></i> Cerrar</button>
        <button type="submit" class="btn btn-primary"><i class="bi bi-cloud-upload-fill"></i> Guardar</button>
      </form>
      </div>
    </div>
  </div>
</div>
<!-- Agregar modelo -->


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
    $(document).ready(function () {
        $("#myInput3").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable3 tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
    $(document).ready(function () {
        $("#myInput4").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable4 tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
  </script>