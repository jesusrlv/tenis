<?php

include('qconn/qc.php');

    $id_catalogo = $_REQUEST['id'];

    // $sql_catalogo = "SELECT * FROM producto WHERE catalogo ='$id_catalogo' AND activo = 1";
    $sql_catalogo = "SELECT * FROM producto WHERE activo = 1";
    $resultado_sql_catalogo= $conn->query($sql_catalogo);
    // $row_sql_catalogo = $resultado_sql_catalogo->fetch_assoc();
   

    while($row_sql_catalogo = $resultado_sql_catalogo->fetch_assoc()){
      // $x1 = $row_sql_catalogo['nombre'];
      $x1 = 1;
      $x2 = $row_sql_catalogo['nombre'];
      $idConsultaTalla = $row_sql_catalogo['id'];
      // echo $x1;
      // echo $x2;
      //<button href="#" class="btn btn-primary btn-sm w-100" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_catalogo['id'].'"><i class="bi bi-cart-plus"></i> Carrito</button>
        echo '
        
          <div class="col-lg-4" id="hidden" value="'.$row_sql_catalogo['catalogo'].'">
          <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_catalogo['id'].'" onclick="escala()">
            <div class="card text-center text-dark" style="width: 100%;">
              <div class="card-header bg-primary text-light">
                  <small><i class="bi bi-cart-plus"></i></small>
                </div>
                <img src="assets/brand/img/catalogo/'.$row_sql_catalogo['imagen'].'" class="card-img-top" style="max-width: 500px; max-height: 150px; object-fit: cover; object-position:center; background-repeat: no-repeat;" alt="...">
            
                <div class="card-body text-start bg-primary text-light">
                  <span class="card-title"><small>'.$row_sql_catalogo['nombre'].'</small></span><br>
                  <span class="card-title text-light"><small>$'.$row_sql_catalogo['precio'].'</small></span>
                  <hr>
                  
                </div>
              </div>
              </a>
          </div><!-- /.col-lg-4 -->
        ';
      
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
              <p class="mt-2 text-center">'.$row_sql_catalogo['nombre'].'</p>
              <p class="mt-1 text-center">$'.$row_sql_catalogo['precio'].'</p>
              <p class="mt-1 text-secondary"><small>Talla:</small></p>
              <div class="container">';

              echo consultaTalla($idConsultaTalla);
            
              echo '</div>
              <p class="mt-3 text-secondary"><small>Descripción:</small></p>
              <p class="mt-1 text-center">'.$row_sql_catalogo['descripcion'].'</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>';
              ?>
              <button type="button" class="btn btn-primary" onclick="mensajeAgregado(); agregarCarrito(<?php echo $row_sql_catalogo['id']?>,'<?php echo $x2?>',<?php echo $row_sql_catalogo['precio']?>, window.marks);" data-bs-dismiss="modal"><i class="bi bi-cart-plus"></i> Agregar al carrito</button>
            <?
              echo'
            </div>
          </div>
        </div>
      </div>
      <!-- modal de descripción del producto -->';
    }
   
  function consultaTalla($idConsultaTalla){
    include('qconn/qc.php');
    $sqlMedida = "SELECT * FROM talla WHERE id_ext = '$idConsultaTalla' ORDER BY talla ASC";
    $resultadoMedida = $conn->query($sqlMedida);
    echo '
    <select class="form-select" id="valor'.$idConsultaTalla.'" onchange="valorID(this.value)">
      <option selected>Selecciona una talla</option>
    ';
      while ($rowMedida = $resultadoMedida->fetch_assoc()){
        echo '<option value="'.$rowMedida['talla'].'">'.$rowMedida['talla'].'</option>';
      }
        echo '</select>';
        echo'
        <script>
          function valorID(val){
            window.marks= val;
         
          }
        </script>
        ';
  }
?>

<!-- trabajar con iframe y js -->
<!-- https://www.codegrepper.com/code-examples/javascript/frameworks/ionic/script+to+iframe -->