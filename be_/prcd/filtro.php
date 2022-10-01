<?php
if(isset($_POST)){
  include('query/qconn/qc.php');

  $val = $_POST['filter'];
  $pag =1;
  $inicio = 0;
  $limit = 12;

  if(isset($_POST['valorPag'])){
    if($_POST['valorPag'] > 1){
      $inicio = (($_POST['valorPag'] - 1) * $limit);
      $pag = $_POST['valorPag'];
    }
    else{ 
      $inicio = 0;
    }
  }
  
  // 0 - 11
  // 12 -24


if($val == 1){
  
    $marca = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE marca = '$marca'";
  
}
else if($val == 2){
  
    $modelo = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE modelo = '$modelo'";

}
else if($val == 3){
  
    $color = $_POST['filtro']; 
    $Query = "SELECT * FROM tenis WHERE color  = '$color'"; 
  
}
else if($val == 4){
  
    $material = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE material = '$material'";

}
else if($val == 5){
    
    $talla = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE talla = '$talla'";

}
// echo'
//   <script>
//   console.log('.$_POST['valorPag'].');
//   console.log('.$val.');
//   console.log('.$_POST['filtro'].');
  
//   </script>';

      $filtroQuery = $Query . ' LIMIT ' . $inicio . ',' . $limit . '';
      $resultado_FiltroQuery = $conn->query($filtroQuery);
      $resultado_Query = $conn->query($Query);
      $no_resultados = mysqli_num_rows($resultado_Query);
      echo '
      <div class="alert alert-primary text-center" role="alert">
        <strong><i class="bi bi-list-ol"></i> Número de coincidencias de resultados:</strong> ' . $no_resultados . ' tipos de calzado.
      </div>  
      <hr>';
      echo '<br>';
      

      // echo '# de botones  ' . $no_paginacion = ceil($no_resultados/$limit);
      $no_paginacion = ceil($no_resultados/$limit);
      
      if (!isset($_GET['page'])){
        $page = 1;
      }
      else{
        $page = $pag;
      }

      // echo $this_page_first_result = ($page-1)*$no_resultados;
      $this_page_first_result = ($page-1)*$no_resultados;

      echo '
      <nav aria-label="...">
        <ul class="pagination pagination-lg">
      ';
      for($page = 1;$page<=$no_paginacion;$page++){
        echo '<li class="page-item active" aria-current=""><button class="page-link" id="valueAHref'.$page.'" onclick="valorP('.$page.')">'.$page.'</button></li>';
      }
      echo '</ul>
       </nav>';


      if ($no_resultados == 0){
        echo'
          <script>
            alert("No se encontró producto");
            console.log("No se encontró producto");
          </script>
          ';
      }
  
 echo '<div class="row row-cols-2 g-2">';
    // while($row_sql_catalogo = $resultado_Query->fetch_assoc()){
    while($row_sql_catalogo = $resultado_FiltroQuery  ->fetch_assoc()){
        
      $x1 = 1;
      $x2 = $row_sql_catalogo['marca'];
      $idConsultaTalla = $row_sql_catalogo['id'];
    //  <div class="col-lg-4" id="hidden" value="'.$row_sql_catalogo['catalogo'].'">
        echo '
          <div class="col-lg-4" id="hidden" >
          <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_catalogo['id'].'" onclick="escala()">
            <div class="card text-center text-dark" style="width: 100%;" id="card_tamano">
              <div class="card-header bg-primary text-light">
                  <small><i class="bi bi-cart-plus"></i></small>
                </div>
                <img src="assets/brand/img/catalogo/'.$row_sql_catalogo['img'].'" class="card-img-top img-fluid" style="width:100%; max-width: 700px; max-height: 150px; object-fit: cover; object-position:center; background-repeat: no-repeat;" alt="...">
            
                <div class="card-body text-start bg-primary text-light">
                  <span class="card-title" id="titulo_card"><small><strong>Marca: '.$row_sql_catalogo['marca'].'</strong></small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Modelo: </strong>'.$row_sql_catalogo['modelo'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Material: </strong>'.$row_sql_catalogo['material'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Tipo: </strong>'.$row_sql_catalogo['tipo'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Color: </strong>'.$row_sql_catalogo['color'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Talla: </strong>'.$row_sql_catalogo['talla'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Precio general: </strong>'.$row_sql_catalogo['precio_general'].'</small></span><br>
                  ';
                  
                
        echo'
                  
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
            <img src="assets/brand/img/catalogo/'.$row_sql_catalogo['img'].'" class="img-fluid" alt="...">
            <hr>
              <div class="alert alert-primary">
                <p class="mt-2 text-center">Producto: '.$row_sql_catalogo['marca'].'</p>
                <p class="mt-2 text-center">Precio: '.$row_sql_catalogo['precio_general'].'</p>
             
              <p class="mt-1 text-secondary"><small>Talla:</small></p>
              <div class="container">';
              $sqlMedida = "SELECT * FROM talla ORDER BY id ASC";
              $resultadoMedida = $conn->query($sqlMedida);
              echo '
              <script>
                function valor'.$row_sql_catalogo['id'].'(){
                  alert('.$row_sql_catalogo['precio_prov'].');
                }
              </script>
              ';

              echo '
              
              <select class="form-select" id="valor" onchange="valorID(this.value)">
                <option selected>Selecciona una talla</option>
              ';
                while ($rowMedida = $resultadoMedida->fetch_assoc()){
                  echo '<option value="'.$rowMedida['talla'].'">'.$rowMedida['talla'].' '.$rowMedida['tipo'].'</option>';
                }
                  echo '</select>';
                  echo'
                  <script>
                    function valorID(val){
                      window.marks= val;
                   
                    }
                  </script>
                  ';
            
            //   echo consultaTalla($idConsultaTalla);
            //   echo consultaTalla();
            
              echo '</div>
              <p class="mt-3 text-secondary"><small>Descripción:</small></p>
              <p class="mt-1 text-center">'.$row_sql_catalogo['marca'].'</p>
            </div>
            </div> <!--fin div de alert-->
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>';
              ?>
              <button type="button" class="btn btn-primary" onclick="mensajeAgregado(); agregarCarrito(<?php echo $row_sql_catalogo['id']?>,'<?php echo $x2?>',<?php echo $row_sql_catalogo['precio_general']?>, window.marks);" data-bs-dismiss="modal"><i class="bi bi-cart-plus"></i> Agregar al carrito</button>
            <?
              echo'
            </div>
          </div>
        </div>
      </div>
      <!-- modal de descripción del producto -->';
    }
  

    echo '</div>';

}
?>


<!-- https://www.w3schools.com/php/php_ajax_database.asp -->