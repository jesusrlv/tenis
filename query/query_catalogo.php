<?php

include('qconn/qc.php');

    $id_catalogo = $_REQUEST['id'];

    $sql_catalogo = "SELECT * FROM producto WHERE catalogo ='$id_catalogo' AND activo = 1";
    $resultado_sql_catalogo= $conn->query($sql_catalogo);
    // $row_sql_catalogo = $resultado_sql_catalogo->fetch_assoc();

    while($row_sql_catalogo = $resultado_sql_catalogo->fetch_assoc()){
      // $x1 = $row_sql_catalogo['nombre'];
      $x1 = 1;
      $x2 = $row_sql_catalogo['nombre'];
      // echo $x1;
      // echo $x2;
        echo '<div class="col-lg-4">
        <div class="card text-center text-dark bg-warning" style="width: 100%;">
          <img src="assets/brand/img/catalogo/'.$row_sql_catalogo['imagen'].'" class="card-img-top" style="max-width: 100%; max-height: 375px; object-fit: cover; object-position:right; background-repeat: no-repeat;" alt="...">
          <div class="card-body">
            <h5 class="card-title">'.$row_sql_catalogo['nombre'].'</h5>
            <p class="card-text">'.$row_sql_catalogo['descripcion'].'</p>
            <hr>
            <button href="#" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_catalogo['id'].'"><i class="bi bi-cart-plus"></i> Agregar al carrito</button>
          </div>
        </div>
      </div><!-- /.col-lg-4 -->';
      
      echo '<!-- modal de descripción del producto -->
      <div class="modal fade" id="exampleModal'.$row_sql_catalogo['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-cart-plus"></i> Descripción del producto</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <img src="assets/brand/img/catalogo/'.$row_sql_catalogo['imagen'].'" class="img-fluid" alt="...">
            <hr>
              <p class="mt-2"><strong>Nombre:</strong> '.$row_sql_catalogo['nombre'].'</p>
              <p class="mt-1"><strong>Descripción:</strong> '.$row_sql_catalogo['descripcion'].'</p>
              <p class="mt-1"><strong>Precio:</strong> $'.$row_sql_catalogo['precio'].'</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>';
              ?>
              <button type="button" class="btn btn-primary" onclick="mensajeAgregado(); agregarCarrito(<?php echo $row_sql_catalogo['id']?>,'<?php echo $x2?>',<?php echo $row_sql_catalogo['precio']?>);" data-bs-dismiss="modal"><i class="bi bi-cart-plus"></i> Agregar al carrito</button>
            <?
              echo'
            </div>
          </div>
        </div>
      </div>
      <!-- modal de descripción del producto -->';
    }

?>