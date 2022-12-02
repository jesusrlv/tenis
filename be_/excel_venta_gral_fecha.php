<?php
header("Pragma: public");
header("Expires: 0");
$filename = "SHOESSTOREMX_reporte_ventas_general.xls";
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

    include('../query/query_ventas.php');

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $fecha_reporte = strftime("%Y-%m-%d");

?>

<main>
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;">Venta <span class="text-muted">General (<?php echo $fechaBusqueda ?>)</span></h2>

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6">#</th>
          <th scope="col" class="h6"><i class="bi bi-calendar2-week-fill"></i><br>Fecha<br>venta</th>
          <th scope="col" class="h6"><i class="bi bi-123"></i><br>Cantidad</th>
          <th scope="col" class="h6"><i class="bi bi-person-circle"></i><br>Nombre</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i><br>Dirección</th>
          <th scope="col" class="h6"><i class="bi bi-telephone"></i><br>Teléfono</th>
          <th scope="col" class="h6"><i class="bi bi-envelope"></i><br>Email</th>
          <th scope="col" class="h6"><i class="bi bi-upc-scan"></i><br>Clave<br>interna<br>de rastreo</th>
          <th scope="col" class="h6"><i class="bi bi-box-seam"></i><br>Estatus<br>apartado</th>
          <th scope="col" class="h6"><i class="bi bi-truck"></i><br>Marcar<br>entrega</th>
          <th scope="col" class="h6"><i class="bi bi-info-circle"></i><br>Vendedor</th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        // echo $fechaBusqueda;
        $x = 0;
          while($row_sql = $resultadoBusquedaExcel->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center">'.$x.'</td>';
            echo'<td class="text-center">'.$row_sql['fecha_venta'].'</td>';
            echo'<td class="text-center">'.$row_sql['cantidad'].'</td>';
            echo'<td class="text-center">'.$row_sql['nombre'].'</td>';
            echo'<td>'.$row_sql['direccion'].'</td>';
            echo'<td class="text-center">'.$row_sql['telefono'].'</td>';
            echo'<td class="text-center">'.$row_sql['email'].'</td>';
            echo'<td class="text-center">'.$row_sql['clave_rastreo_int'].'</td>';
              
              if($row_sql['apartado']==1){
                echo'<td class="text-center">Apartado
                </td>';
              }
              elseif($row_sql['apartado']==2){
                echo'<td class="text-center">Aprobado</td>';
              }
              else{
                echo'<td class="text-center">No aprobado</td>';
              }

              if(!$row_sql['clave_rastreo_ext']){
              echo'<td class="text-center">Sin registro</td>';
              
            }
            else{
              echo'<td class="text-center">Entregado</td>';
            }
            $idVendedor = $row_sql['vendedor'];
            $sqlVendedor = "SELECT * FROM usr WHERE id = '$idVendedor'";
            $resultadoVendedor = $conn->query($sqlVendedor);
            $rowVendedor = $resultadoVendedor->fetch_assoc();
            if(!empty($row_sql['vendedor'])){
              echo'<td class="text-center">'.$rowVendedor['usr'].'</td>';
            }
            else{   
              echo'<td class="text-center">Venta externa</td>';
            }
            echo'</tr>';
          }
        ?>
      </tbody>
    </table>