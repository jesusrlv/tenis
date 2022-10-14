<?php
if(isset($_POST)){
  include('../perfil_vendedor/query/qconn/qc.php');

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
    $Query = "SELECT * FROM tenis WHERE marca = '$marca' AND estatus = 1";
  
}
else if($val == 2){
  
    $modelo = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE modelo = '$modelo' AND estatus = 1";

}
else if($val == 3){
  
    $color = $_POST['filtro']; 
    $Query = "SELECT * FROM tenis WHERE color  = '$color' AND estatus = 1"; 
  
}
else if($val == 4){
  
    $material = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE material = '$material' AND estatus = 1";

}
else if($val == 5){
    
    $talla = $_POST['filtro'];
    $Query = "SELECT * FROM tenis WHERE talla = '$talla' AND estatus = 1";

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
            <div class="card text-center text-dark" style="width: 100%; border-radius:3px" id="card_tamano">
            
                <img src="../../assets/brand/img/catalogo/'.$row_sql_catalogo['img'].'" class="card-img-top img-fluid" style="width:100%; max-width: 700px; max-height: 150px; object-fit: cover; object-position:center; background-repeat: no-repeat;" alt="...">
            
                <div class="card-body text-center bg-primary text-light">
                  <span class="card-title" id="titulo_card"><small><strong>'.$row_sql_catalogo['marca'].'</strong></small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong></strong>'.$row_sql_catalogo['modelo'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Material: </strong>'.$row_sql_catalogo['material'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Tipo: </strong>'.$row_sql_catalogo['tipo'].'</small></span><br>
                  <span class="card-title" id="titulo_card2"><small><strong>Color: </strong>'.$row_sql_catalogo['color'].'</small></span><br>
                  <hr>
                  <span class="card-title text-center" id="titulo_card2"><small><strong>Precio: </strong>'.$row_sql_catalogo['precio_general'].'</small></span><br>
                  ';
                  
                
        echo'
                </div>
              </div>
              </a>
          </div><!-- /.col-lg-4 -->
        ';
      
      echo '<!-- modal de descripción del producto -->
      <div class="modal fade" id="exampleModal'.$row_sql_catalogo['id'].'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header bg-primary text-light">
              <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-cart-plus"></i> Descripción del producto</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
            <img src="../../assets/brand/img/catalogo/'.$row_sql_catalogo['img'].'" class="img-fluid" alt="...">
            <hr>
            <div class="alert alert-primary">
              
            <p class="mt-1 text-center"><strong>'.$row_sql_catalogo['marca'].'</strong></p>
            <hr>
          <small>
            <p class="mt-1 text-left">Precio: '.$row_sql_catalogo['precio_general'].'</p>
            <p class="text-left"><strong>Descripción del producto</strong></p>
            <p class="text-left">
              <ul class="list-group list-group-flush">
                <li class="list-group-item list-group-item-primary">Modelo: '.$row_sql_catalogo['modelo'].'</li>
                <li class="list-group-item list-group-item-primary">Tipo: '.$row_sql_catalogo['tipo'].'</li>
                <li class="list-group-item list-group-item-primary">Color predominante: '.$row_sql_catalogo['color'].'</li>
                <li class="list-group-item list-group-item-primary">Colores secundarios: '.$row_sql_catalogo['color2'].' '.$row_sql_catalogo['color3'].' '.$row_sql_catalogo['color4'].' '.$row_sql_catalogo['color5'].'</li>
                <li class="list-group-item list-group-item-primary">Material: '.$row_sql_catalogo['precio_general'].'</li>
                <li class="list-group-item list-group-item-primary">Catálogo para: '.$row_sql_catalogo['hombre_mujer'].'</li>
                <li class="list-group-item list-group-item-primary">Formas: '.$row_sql_catalogo['formas'].'</li>
                <li class="list-group-item list-group-item-primary"><a onclick="prov()"><i class="bi bi-info-circle-fill"></i></a></li>
                <script>
                  function prov(){
                  alert('.$row_sql_catalogo['precio_prov'].')
                  }
                </script>

              </ul>
            </p>
          </small>
             
              <p class="mt-1 text-secondary"><small>Talla:</small></p>
              <div class="container">';
              $idTenis = $row_sql_catalogo['id'];
              $sqlMedida = "SELECT * FROM inventario WHERE id_ext_tenis='$idTenis' AND cantidad > 0 ORDER BY id ASC";
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
              
            </div>
            </div> <!--fin div de alert-->

            <div class="alert alert-light" role="alert">
        
            <p class="ms-2"><strong>Modelos similares</strong></p>';

            $modelo = $row_sql_catalogo['modelo'];
            $similares ="SELECT * FROM tenis WHERE modelo ='$modelo' limit 3";
            $resultadoModelo =  $conn->query($similares);
            echo'
            <div class="container-fluid align-items-center mb-2">
            <div class="row row-cols-lg-auto g-2 align-items-center">';
            while ($rowModelo = $resultadoModelo->fetch_assoc()){
              echo '
              <div class="col-4">
                <div class="card" style="width: 8.1rem;">
                  <img src="../../assets/brand/img/catalogo/'.$rowModelo['img'].'" class="card-img-top" alt="...">
                    <div class="card-body bg-primary text-light">
                      <p class="card-text"><small>Marca: '.$rowModelo['marca'].'</small></p>
                      <p class="card-text text-start"><small>Marca: '.$rowModelo['modelo'].'</small></p>
                    </div>
                </div>
              </div>';
            }
            echo'
            </div>
            </div>
            
            </div>';

            
            echo '<div class="modal-footer">
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