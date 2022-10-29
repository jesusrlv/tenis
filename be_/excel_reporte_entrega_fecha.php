<?php
header("Pragma: public");
header("Expires: 0");
$filename = "SHOESSTOREMX_reporte_entregas.xls";
header("Content-type: application/x-msdownload");
header("Content-Disposition: attachment; filename=$filename");
header("Pragma: no-cache");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Content-type: text/html; charset=utf8");

echo "
    <html xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:x=\"urn:schemas-microsoft-com:office:excel\" xmlns=\"http://www.w3.org/TR/REC-html40\">
    <html>
    <head><meta http-equiv=\"Content-type\" content=\"text/html;charset=utf-8\" /></head>";
session_start();

if (isset($_SESSION['usr']) && isset($_SESSION['pwd'])) {
  if($_SESSION['perfil']==1){

  }
  else{
    echo '<script>
    alert "1";<script>';
    header('Location: prcd/sort.php');
    die();
  }
  
} 
else {
  // En caso contrario redirigimos el visitante a otra página
  echo '<script>
  alert "2";<script>';
  header('Location: prcd/sort.php');
  die();
}

// variables de sesión

    $id_sess = $_SESSION['id'];
    $nombre_sess = $_SESSION['usr'];
    $perfil_sess = $_SESSION['perfil'];
    $idReporte = $_REQUEST['id'];
    
    include('../query/query_reporte_entregas.php'); 

    $sqlEntregas ="SELECT * FROM usr WHERE id = '$idReporte'";
    $resultadoEntregas = $conn->query($sqlEntregas);
    $rowSQLEntregas = $resultadoEntregas->fetch_assoc();

?>

<main>
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;">Reporte <span class="text-muted">Entregas  (<?php echo $rowSQLEntregas['nombre'] ?>)(<?php echo $fechaBusqueda ?>)</span></h2>

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6">#</th>
          <th scope="col" class="h6"><i class="bi bi-person-circle"></i><br>Nombre</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i><br>Dirección</th>
          <th scope="col" class="h6"><i class="bi bi-telephone"></i><br>Teléfono</th>
          <th scope="col" class="h6"><i class="bi bi-upc-scan"></i><br>Clave<br>interna<br>de rastreo</th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $resultadoBusquedaExcel->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql['nombre'].'</td>';
            echo'<td>'.$row_sql['direccion'].'</td>';
            echo'<td class="text-center">'.$row_sql['telefono'].'</td>';
            echo'<td class="text-center">'.$row_sql['clave_rastreo_int'].'</td>';
            
            echo'</tr>';
          }
        ?>
      </tbody>
    </table>
