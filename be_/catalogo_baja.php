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
  <h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><i class="bi bi-phone"></i> Catálogo <span class="text-muted">Productos</span></h2>

  <div class="container">
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link" aria-current="page" href="catalogo.php"><i class="bi bi-bag-check-fill"></i> Productos activos</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#"><i class="bi bi-bag-x-fill"></i> <strong>Productos dados de baja</strong></a>
      </li>
      
    </ul>
  </div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

<? include('../query/query_catalogo_backend_baja.php'); ?>
  
  <div class="container marketing mt-5 border-bottom">

  <div class="row">
    <div class="col">
        <div class="input-group mb-4 w-100">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-search"></i></span>
            <input type="text" class="form-control" placeholder="Filtrado" aria-label="Filtrado" aria-describedby="basic-addon1" id="myInput">
        </div>
    </div>
    <div class="col">
        <!-- <div class="input-group mb-4 justify-content-end">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarProducto"><i class="bi bi-plus-circle-dotted"></i> Agregar producto</button>
        </div> -->
    </div>
  </div>

  

  <hr>

    <!-- table ventas -->
    <table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i> Producto</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i> Descripción</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i> Precio</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-123"></i> Cantidad</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-123"></i> Total vendido</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-activity"></i> Acción</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-capslock-fill"></i> Dar de alta</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-trash-fill"></i> Eliminar</small></th>
        
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $resultado_sql_catalogo->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql['nombre'].'</td>';
            echo'<td class="text-center">'.$row_sql['descripcion'].'</td>';
            echo'<td class="text-center">$'.$row_sql['precio'].'</td>';
            echo'<td class="text-center">'.$row_sql['cantidad'].'</td>';
            echo'<td class="text-center">'.$row_sql['total_vendido'].'</td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#editarArticulo'.$row_sql['id'].'"><span class="badge bg-info text-dark"><i class="bi bi-capslock-fill"></i> Dar de alta</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteArticulo'.$row_sql['id'].'"><span class="badge bg-danger text-light"><i class="bi bi-trash-fill"></i> Eliminar</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal'.$row_sql['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar artículo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  
                  <form action="prcd/editar_categoria.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$row_sql['id'].'" hidden>

                    <div class="text-center mb-3">
                      <img src="../assets/brand/img/catalogo/'.$row_sql['imagen'].'" class="rounded" alt="" style="width: 200px;object-fit: cover; object-position:center; background-repeat: no-repeat;">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Nombre</span>
                      <input type="text" name="nombre" class="form-control" value="'.$row_sql['nombre'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Descripción</span>
                      <input type="text" name="descripcion" class="form-control" value="'.$row_sql['descripcion'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Precio</span>
                      <input type="text" name="precio" class="form-control" value="'.$row_sql['precio'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Cantidad</span>
                      <input type="text" name="cantidad" class="form-control" value="'.$row_sql['cantidad'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Total vendido</span>
                      <input type="text" class="form-control" value="'.$row_sql['total_vendido'].'" placeholder="" aria-label="" aria-describedby="basic-addon1" READONLY>
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

            echo '<!-- Modal Editar-->
            <div class="modal fade bg-info" id="editarArticulo'.$row_sql['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Alta de artículo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea dar de alta este artículo?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/editar_activo_alta.php?id='.$row_sql['id'].'" type="button" class="btn btn-primary"><i class="bi bi-capslock-fill"></i> DAR DE ALTA</a>
                  </div>
                </div>
              </div>
            </div>
            ';
            echo '<!-- Modal Eliminar-->
            <div class="modal fade bg-danger" id="deleteArticulo'.$row_sql['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Eliminar artículo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea eliminar definitivamente este artículo?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/editar_activo_eliminar.php?id='.$row_sql['id'].'" type="button" class="btn btn-danger"><i class="bi bi-trash-fill"></i> ELIMINAR</a>
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
  <footer class="container mt-5">
    <p class="float-end"><a href="#">Regresar arriba</a></p>
    <!-- <p>&copy; 2022 RedDeploy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p> -->
    <p>&copy; 2022 RedDeploy</p>
  </footer>
</main>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

  </body>
</html>

<!-- Agregar producto -->
<!-- Modal -->
<div class="modal fade" id="agregarProducto" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar producto</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_categoria.php" method="post" enctype="multipart/form-data">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Nombre</span>
            <input type="text" name="nombre" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Descripción</span>
            <input type="text" name="descripcion" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Precio</span>
            <input type="text" name="precio" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <!-- <span class="input-group-text" id="basic-addon1">Imagen</span>
            <input type="text" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1"> -->
            <div class="input-group mb-1">
              <label class="input-group-text" for="inputGroupFile01"><i class="bi bi-image"></i></label>
              <input type="file" name="foto" class="form-control" id="inputGroupFile01">
            </div>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Cantidad</span>
            <input type="text" name="cantidad" class="form-control" placeholder="..." aria-label="..." aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1">Tipo catálogo</span>
              <select class="form-select" name="tipo_catalogo" aria-label="Default select example">
                <option selected>Selecciona la categoría del producto</option>
                <? 
                $sqlCategoria = "SELECT * FROM catalogo";
                $resultado_categoria_sql = $conn->query($sqlCategoria);
                while($rowCategoria = $resultado_categoria_sql->fetch_assoc()){
                  echo '<option value="'.$rowCategoria['id'].'">'.$rowCategoria['nombre_catalogo'].'</option>';
                }
                ?>
              </select>
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
  </script>