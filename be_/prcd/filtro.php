<?php
if(isset($_POST)){
  include('../../query/qconn/qc.php');

  $val=0;
  foreach ( $_POST['count'] as $value ) {
    $val++;
}
echo $val;

if($val == 1){
  if(isset($_POST['marca'])){

    $marca = $_POST['marca'];

    $Query = "SELECT * FROM producto WHERE (nombre = '$marca') " ;

  }
}
else if($val == 2){
  if((isset($_POST['marca'])) && (isset($_POST['modelo']))){
    
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];

    $Query = "SELECT * FROM producto WHERE (nombre = '$marca' AND descripcion = '$modelo') " ;

  }
}
else if($val == 3){
  if((isset($_POST['marca'])) && (isset($_POST['modelo'])) && (isset($_POST['color']))){
    
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];
    $color = $_POST['color']; 
    echo $color;
   

    $Query = "SELECT * FROM producto WHERE (nombre = '$marca' AND descripcion = '$modelo' AND color LIKE ('%$color%'))";
    // $Query = "SELECT * FROM producto WHERE (nombre = '$marca' AND descripcion = '$modelo' AND color LIKE '%".$color."%')";
    echo $Query;
//     if(!$Query)
// {
//    die("database query fail!" . mysqli_error($conn));
// }
  }
}
else if($val == 4){
  if((isset($_POST['marca'])) && (isset($_POST['modelo'])) && (isset($_POST['color'])) && (isset($_POST['material']))){
  
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];
    $color = $_POST['color']; 
    $material = $_POST['material'];

    $Query = "SELECT * FROM producto WHERE (nombre = '$marca' AND descripcion = '$modelo' AND color LIKE '%$color%' AND material LIKE '%$material%')";
    // $Query = "SELECT * FROM producto WHERE (nombre = '$marca' AND descripcion = '$modelo' AND color LIKE '%".$color."%' AND material LIKE '%$material%') " ;

    echo $Query;

  } 
}
else if($val == 5){
  if((isset($_POST['marca'])) && (isset($_POST['modelo'])) && (isset($_POST['color'])) && (isset($_POST['material'])) && (isset($_POST['talla']))){
    
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];
    $color = $_POST['color']; 
    $material = $_POST['material'];
    $talla = $_POST['talla'];

    $Query = "SELECT * FROM producto WHERE (nombre = '$marca' AND descripcion = '$modelo' AND color LIKE '%$color%' AND material LIKE '%$material%' AND talla LIKE '%$talla%') " ;

  }
}



    // $Query = "SELECT * FROM producto WHERE (nombre = '$marca' OR modelo = '$modelo' OR color LIKE '$color' OR material LIKE '$material' OR talla LIKE '$talla') " ;
    $resultado_Query = $conn->query($Query);

    if($resultado_Query = $conn->query($Query)){
  // echo $resultado_Query;
   $row = $resultado_Query->fetch_assoc();
  //  echo $row['talla'];
  } else {
     printf("Error: %s\n", $conn->error);
 }
 echo '<div class="row row-cols-2 g-2">';
    while($row_sql_catalogo = $resultado_Query->fetch_assoc()){
        
      $x1 = 1;
      $x2 = $row_sql_catalogo['nombre'];
      $idConsultaTalla = $row_sql_catalogo['id'];
     
        echo '
          <div class="col-lg-4" id="hidden" value="'.$row_sql_catalogo['catalogo'].'">
          <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal'.$row_sql_catalogo['id'].'" onclick="escala()">
            <div class="card text-center text-dark" style="width: 100%;" id="card_tamano">
              <div class="card-header bg-primary text-light">
                  <small><i class="bi bi-cart-plus"></i></small>
                </div>
                <img src="../../assets/brand/img/catalogo/'.$row_sql_catalogo['imagen'].'" class="card-img-top img-fluid" style="width:100%; max-width: 700px; max-height: 150px; object-fit: cover; object-position:center; background-repeat: no-repeat;" alt="...">
            
                <div class="card-body text-start bg-primary text-light">
                  <span class="card-title" id="titulo_card"><small><strong>'.$row_sql_catalogo['nombre'].'</strong></small></span><br>
                  <span class="card-title" id="titulo_card2"><small>'.$row_sql_catalogo['descripcion'].'</small></span><br>
                  ';
                  // explode
                    $valueColores = explode(',',$row_sql_catalogo['color']);
                    for ($x = 0; $x < count($valueColores); $x++) {    
                        echo '<span class="badge text-bg-light" id="titulo_card3">'.$valueColores[$x].'</span> '.PHP_EOL;
                      }
                  // explode
          
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
            <img src="../../assets/brand/img/catalogo/'.$row_sql_catalogo['imagen'].'" class="img-fluid" alt="...">
            <hr>
              <div class="alert alert-primary">
                <p class="mt-2 text-center">'.$row_sql_catalogo['nombre'].'</p>
                <p class="mt-1 text-center"><a onclick="valor'.$row_sql_catalogo['id'].'()"><i class="bi bi-exclamation-circle-fill"></i></a></p>
             
              <p class="mt-1 text-secondary"><small>Talla:</small></p>
              <div class="container">';
              $sqlMedida = "SELECT * FROM talla_catalogo ORDER BY id ASC";
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
              <p class="mt-1 text-center">'.$row_sql_catalogo['descripcion'].'</p>
            </div>
            </div> <!--fin div de alert-->
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

    echo '</div>';
  
  // function consultaTalla(){
  //   include('../../query/qconn/qc.php');
    
  //   $sqlMedida = "SELECT * FROM talla_catalogo ORDER BY id ASC";
  //   $resultadoMedida = $conn->query($sqlMedida);
  //   echo '
    
  //   <select class="form-select" id="valor" onchange="valorID(this.value)">
  //     <option selected>Selecciona una talla</option>
  //   ';
  //     while ($rowMedida = $resultadoMedida->fetch_assoc()){
  //       echo '<option value="'.$rowMedida['talla'].'"> '.$rowMedida['tipo'].'</option>';
  //     }
  //       echo '</select>';
  //       echo'
  //       <script>
  //         function valorID(val){
  //           window.marks= val;
         
  //         }
  //       </script>
  //       ';
  // }

}
?>


<!-- https://www.w3schools.com/php/php_ajax_database.asp -->