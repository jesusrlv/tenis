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
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;"><img src="../assets/brand/img/logo_store_shoes_sin_fondo.png" alt="" width="72" height="72"> Catálogo <span class="text-muted">Productos</span></h2>

  <div class="container">
    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="#"><i class="bi bi-bag-check-fill"></i> <strong>Productos activos</strong></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="catalogo_baja.php"><i class="bi bi-bag-x-fill"></i> Productos dados de baja</a>
      </li>
      
    </ul>
  </div>

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page -->
  
<?php include('../query/query_catalogo_backend.php'); ?>
  
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
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarProducto"><i class="bi bi-plus-circle-dotted"></i> Agregar producto</button>
        </div>
    </div>
  </div>

  <hr>

    <!-- table ventas -->
    <div class="table-responsive">

    <table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
        <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small<i class="bi bi-card-text"></i><br>Marca</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i><br>Modelo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-123"></i><br>Tipo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-sort-numeric-up-alt"></i><br>Color</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-sort-numeric-up-alt"></i><br>Material</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-sort-numeric-up-alt"></i><br>H/M</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-sort-numeric-up-alt"></i><br>Talla</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-activity"></i><br>Acción</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-radioactive"></i><br>Dar de baja</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $sqlResultCatalgo->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql['marca'].'</td>';
            echo'<td class="text-center">'.$row_sql['modelo'].'</td>';
            echo'<td class="text-center">'.$row_sql['tipo'].'</td>';
            echo'<td class="text-center">'.$row_sql['color'].'</td>';
            echo'<td class="text-center">'.$row_sql['material'].'</td>';
            echo'<td class="text-center">'.$row_sql['hombre_mujer'].'</td>';
            echo'<td class="text-center"><a href="tallas.php?talla='.$row_sql['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Tallas</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql['id'].'"><span class="badge bg-primary"><i class="bi bi-pencil-square"></i> Editar</span></a></td>';
            echo'<td class="text-center"><a href="#" data-bs-toggle="modal" data-bs-target="#deleteArticulo'.$row_sql['id'].'"><span class="badge bg-warning text-dark"><i class="bi bi-trash-fill"></i> Dar de baja</span></a></td>';
            echo'</tr>';

            echo'<!-- Modal Actualizar-->
            <div class="modal fade" id="exampleModal'.$row_sql['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  
                  <img src="../assets/brand/img/catalogo/'.$row_sql['img'].'" class="w-100" alt="" style="width: 200px;object-fit: cover; object-position:center; background-repeat: no-repeat;">
                  
                  <form action="prcd/editar_categoria.php" method="post">
                  <div class="modal-body">
                    <input name="id" value="'.$row_sql['id'].'" hidden>

                    <!--<div class="text-center mb-3">
                      <img src="../assets/brand/img/catalogo/'.$row_sql['img'].'" class="rounded w-100" alt="" style="width: 200px;object-fit: cover; object-position:center; background-repeat: no-repeat;">
                    </div>-->
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Marca</span>
                      <input type="text" name="marca" class="form-control" value="'.$row_sql['marca'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Modelo</span>
                      <input type="text" name="modelo" class="form-control" value="'.$row_sql['modelo'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Tipo</span>
                      <input type="text" name="tipo" class="form-control" value="'.$row_sql['tipo'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Clasificación</span>
                      <input type="text" name="clasificacion" class="form-control" value="'.$row_sql['clasificacion'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-aspect-ratio"></i></span>
                      <select class="form-select" name="tamanio" aria-label="Default select example" required>';
                      ?>
                          <option value="0">Selecciona tamaño...</option>
                          <option value="Adulto" <?php if($row_sql['tamanio']=='Adulto'){echo 'selected="selected"';} ?> >Adulto</option>
                          <option value="Infantil" <?php if($row_sql['tamanio']=='Infantil'){echo 'selected="selected"';} ?> >Infantil</option>
                      <?php
                      echo '</select>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
                      <select class="form-select" name="color" aria-label="Default select example" required>
                        <option value="'.$row_sql['color'].'" selected>'.$row_sql['color'].'</option>';
                        
                        $sqlColor = "SELECT * FROM color";
                        $resultadoColor = $conn->query($sqlColor);
                        while($rowColor = $resultadoColor->fetch_assoc()){
                          echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                        }
                        
                        echo'
                      </select>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
                      <select class="form-select" name="color2" aria-label="Default select example">
                        <option value="">Sin color</option>
                        <option value="'.$row_sql['color2'].'" selected>'.$row_sql['color2'].'</option>';
                        
                        $sqlColor = "SELECT * FROM color";
                        $resultadoColor = $conn->query($sqlColor);
                        while($rowColor = $resultadoColor->fetch_assoc()){
                          echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                        }
                        
                        echo'
                      </select>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
                      <select class="form-select" name="color3" aria-label="Default select example">
                        <option value="">Sin color</option>
                        <option value="'.$row_sql['color3'].'" selected>'.$row_sql['color3'].'</option>';
                        
                        $sqlColor = "SELECT * FROM color";
                        $resultadoColor = $conn->query($sqlColor);
                        while($rowColor = $resultadoColor->fetch_assoc()){
                          echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                        }
                        
                        echo'
                      </select>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
                      <select class="form-select" name="color4" aria-label="Default select example">
                        <option value="">Sin color</option>
                        <option value="'.$row_sql['color4'].'" selected>'.$row_sql['color4'].'</option>';
                        
                        $sqlColor = "SELECT * FROM color";
                        $resultadoColor = $conn->query($sqlColor);
                        while($rowColor = $resultadoColor->fetch_assoc()){
                          echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                        }
                        
                        echo'
                      </select>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
                      <select class="form-select" name="color5" aria-label="Default select example">
                        <option value="">Sin color</option>
                        <option value="'.$row_sql['color5'].'" selected>'.$row_sql['color5'].'</option>';
                        
                        $sqlColor = "SELECT * FROM color";
                        $resultadoColor = $conn->query($sqlColor);
                        while($rowColor = $resultadoColor->fetch_assoc()){
                          echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                        }
                        
                        echo'
                      </select>
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Formas</span>
                      <input type="text" name="formas" class="form-control" value="'.$row_sql['formas'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Material</span>
                      <input type="text" name="material" class="form-control" value="'.$row_sql['material'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1"><i class="bi bi-gender-ambiguous"></i></span>
                      <select class="form-select" name="hombre_mujer" aria-label="Default select example" required>';
                      ?>
                          <option value="0">Selecciona ...</option>
                          <option value="Hombre" <?php if($row_sql['hombre_mujer']=='Hombre'){echo 'selected="selected"';} ?> >Hombre</option>
                          <option value="Mujer" <?php if($row_sql['hombre_mujer']=='Mujer'){echo 'selected="selected"';} ?> >Mujer</option>
                          <option value="Unisex" <?php if($row_sql['hombre_mujer']=='Unisex'){echo 'selected="selected"';} ?> >Unisex</option>
                      <?php
                      echo '</select>
                    </div>
                    
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Precio General</span>
                      <input type="text" name="precio_general" class="form-control" value="'.$row_sql['precio_general'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Precio proveedor</span>
                      <input type="text" name="precio_prov" class="form-control" value="'.$row_sql['precio_prov'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
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
                      <img src="../assets/brand/img/catalogo/'.$row_sql['img'].'" class="rounded" alt="" style="width: 200px;object-fit: cover; object-position:center; background-repeat: no-repeat;">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Nombre</span>
                      <input type="text" name="nombre" class="form-control" value="'.$row_sql['marca'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Descripción</span>
                      <input type="text" name="descripcion" class="form-control" value="'.$row_sql['modelo'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                      <span class="input-group-text" id="basic-addon1">Precio</span>
                      <input type="text" name="precio" class="form-control" value="'.$row_sql['precio_general'].'" placeholder="" aria-label="" aria-describedby="basic-addon1">
                    </div>
                   
                  
                    <div class="mb-3">
                      <hr>
                      <span class="text-secondary">Tallas disponibles:</span>
                     

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
            <div class="modal fade bg-info" id="deleteArticulo'.$row_sql['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-trash-fill"></i> Baja de artículo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body text-center">
                    <strong>¿Desea dar de baja este artículo?</strong>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-bs-dismiss="modal">NO</button>
                    <a href="prcd/editar_activo.php?id='.$row_sql['id'].'" type="button" class="btn btn-danger"><i class="bi bi-arrow-down-circle-fill"></i> DAR DE BAJA</a>
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
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header bg-dark text-light ">
        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-plus-circle"></i> Agregar producto</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="prcd/agregar_categoria.php" method="post" enctype="multipart/form-data">
      <div class="modal-body">
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <input type="text" name="marca" class="form-control" placeholder="Marca" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <input type="text" name="modelo" class="form-control" placeholder="Modelo" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <input type="text" name="tipo" class="form-control" placeholder="Tipo" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <input type="text" name="clasificacion" class="form-control" placeholder="Clasificación" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <input type="text" name="precio_general" class="form-control" placeholder="Precio general" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <input type="text" name="precio_prov" class="form-control" placeholder="Precio proveedor" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-bag-plus"></i></span>
            <select class="form-select" name="tamanio" aria-label="Default select example" required>
                <option value="" selected>Selecciona el tamaño para el calzado ...</option>
                <option value="Adulto">Adulto</option>
                <option value="Infantil">Infantil</option>
            </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
            <select class="form-select" name="color" aria-label="Default select example" required>
                <option value="" selected>Selecciona color predominante ...</option>
                <? 
                $sqlColor = "SELECT * FROM color";
                $resultadoColor = $conn->query($sqlColor);
                while($rowColor = $resultadoColor->fetch_assoc()){
                  echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                }
                ?>
              </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
            <select class="form-select" name="color2" aria-label="Default select example">
                <option value="">Selecciona color secundario (opcional) ...</option>
                <? 
                $sqlColor = "SELECT * FROM color";
                $resultadoColor = $conn->query($sqlColor);
                while($rowColor = $resultadoColor->fetch_assoc()){
                  echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                }
                ?>
              </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
            <select class="form-select" name="color3" aria-label="Default select example">
                <option value="">Selecciona tercer color (opcional) ...</option>
                <? 
                $sqlColor = "SELECT * FROM color";
                $resultadoColor = $conn->query($sqlColor);
                while($rowColor = $resultadoColor->fetch_assoc()){
                  echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                }
                ?>
              </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
            <select class="form-select" name="color4" aria-label="Default select example">
                <option value="">Selecciona cuarto color (opcional) ...</option>
                <? 
                $sqlColor = "SELECT * FROM color";
                $resultadoColor = $conn->query($sqlColor);
                while($rowColor = $resultadoColor->fetch_assoc()){
                  echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                }
                ?>
              </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-palette-fill"></i></span>
            <select class="form-select" name="color5" aria-label="Default select example">
                <option value="">Selecciona quinto color (opcional) ...</option>
                <? 
                $sqlColor = "SELECT * FROM color";
                $resultadoColor = $conn->query($sqlColor);
                while($rowColor = $resultadoColor->fetch_assoc()){
                  echo '<option value="'.$rowColor['color'].'">'.$rowColor['color'].'</option>';
                }
                ?>
              </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-app-indicator"></i></span>
            <input type="text" name="material" class="form-control" placeholder="Material" aria-label="..." aria-describedby="basic-addon1" required>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text" id="basic-addon1"><i class="bi bi-gender-ambiguous"></i></span>
            <select class="form-select" name="hombre_mujer" aria-label="Default select example" required>
                <option value="" selected>Selecciona género para el calzado ...</option>
                <option value="Hombre">Hombre</option>
                <option value="Mujer">Mujer</option>
                <option value="Unisex">Unisex</option>
            </select>
        </div>
        <div class="input-group mb-3">
            
            <div class="input-group mb-1">
              <label class="input-group-text" for="inputGroupFile01"><i class="bi bi-image"></i></label>
              <input type="file" name="foto" class="form-control" id="inputGroupFile01" required>
            </div>
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