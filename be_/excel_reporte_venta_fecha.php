<?php
header("Pragma: public");
header("Expires: 0");
$filename = "SHOESSTOREMX_reporte_ventas_vendedor.xls";
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
    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");

// variables de sesión

    $id_sess = $_SESSION['id'];
    $nombre_sess = $_SESSION['usr'];
    $perfil_sess = $_SESSION['perfil'];
    $idReporte = $_REQUEST['id'];

    include('../query/query_reporte_ventas.php');

    $sqlVendedorBD ="SELECT * FROM usr WHERE id = '$idReporte'";
    $resultadoVendedorBD = $conn->query($sqlVendedorBD);
    $rowSQLBD = $resultadoVendedorBD->fetch_assoc();
    $fecha = $_REQUEST['fecha'];
    $fecha_sistema = strftime("%Y-%m-%d,%H:%M:%S");
?>

<main>
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;">Venta <span class="text-muted">General</span> (<? echo $rowSQLBD['nombre'] ?>) (<?php echo $fechaBusqueda?>)</h2>

    <table class="table table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6"><small>#</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-calendar2-week-fill"></i><br>Fecha<br>venta</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-123"></i><br>Cantidad</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-tag"></i><br>Precio</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-person-circle"></i><br>Nombre</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-card-text"></i><br>Dirección</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-telephone"></i><br>Teléfono</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-envelope"></i><br>Email</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-upc-scan"></i><br>Clave<br>interna<br>de rastreo</small></th>
          <th scope="col" class="h6"><small><i class="bi bi-info-circle"></i><br>Vendedor</small></th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sql = $resultado_sql->fetch_assoc()){
            $x++;
            echo'<tr>';
            echo'<td class="text-center"><small>'.$x.'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['fecha_venta'].'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['cantidad'].'</small></td>';
            echo'<td class="text-center"><small>$'.$row_sql['precio'].'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['nombre'].'</small></td>';
            echo'<td><small>'.$row_sql['direccion'].'</td>';
            echo'<td class="text-center"><small>'.$row_sql['telefono'].'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['email'].'</small></td>';
            echo'<td class="text-center"><small>'.$row_sql['clave_rastreo_int'].'</small></td>';
            $idVendedor = $row_sql['vendedor'];
            $sqlVendedor = "SELECT * FROM usr WHERE id = '$idVendedor'";
            $resultadoVendedor = $conn->query($sqlVendedor);
            $rowVendedor = $resultadoVendedor->fetch_assoc();
            if(!empty($row_sql['vendedor'])){
              echo'<td class="text-center"><small>'.$rowVendedor['usr'].'</small></td>';
            }
            else{
              echo'<td class="text-center"><small>Venta externa</small></td>';
            }
            echo'</tr>';
          }
        ?>
      </tbody>
    </table>