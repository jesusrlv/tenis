<?php
session_start();

header("Pragma: public");
header("Expires: 0");
$filename = "SHOESSTOREMX_reporte_inventario.xls";
header("Content-type: application/x-msdownload");
header("Content-Disposition: attachment; filename=$filename");
header("Pragma: no-cache");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Content-type: text/html; charset=utf8");

echo "
    <html xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:x=\"urn:schemas-microsoft-com:office:excel\" xmlns=\"http://www.w3.org/TR/REC-html40\">
    <html>
    <head><meta http-equiv=\"Content-type\" content=\"text/html;charset=utf-8\" /></head>";

// variables de sesión

    $id_sess = $_SESSION['id'];
    $nombre_sess = $_SESSION['usr'];
    $perfil_sess = $_SESSION['perfil'];

    include('../query/query_contar_catalogo.php'); 

    date_default_timezone_set('America/Mexico_City');
    setlocale(LC_TIME, 'es_MX.UTF-8');
    $fecha_sistema = strftime("%Y-%m-%d");
?>

<main>
<h2 class="mb-5 bg-light p-5 text-center featurette-heading" style="margin:18px;">Inventario <span class="text-muted">Productos</span> <? echo $fecha_sistema ?></h2>

    <table class="table  table-light table-striped mb-3 table-hover align-middle">
      <thead class="text-center table-dark align-middle">
        <tr>
          <th scope="col" class="h6">#</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i> Producto</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i> Talla</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i> Inventario</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i> Venta</th>
          <th scope="col" class="h6"><i class="bi bi-card-text"></i> Fecha</th>
        </tr>
      </thead>
      <tbody id="myTable">
        
        <?php
        $x = 0;
          while($row_sqlInv = $sqlResultCatalgo->fetch_assoc()){
            $x++;
            echo'<tr>';
              echo'<td class="text-center">'.$x.'</td>';
              $idProd = $row_sqlInv['producto'];
              $queryProd = "SELECT * FROM tenis WHERE id = '$idProd'";
              $resultProd = $conn->query($queryProd);
              $rowProd = $resultProd->fetch_assoc();
              echo'<td class="text-center">'.$rowProd['marca'].' '.$rowProd['modelo'].'</td>';
              echo'<td class="text-center">'.$row_sqlInv['talla'].'</td>';
              echo'<td class="text-center">'.$row_sqlInv['cantidad'].'</td>';
              echo'<td class="text-center">'.$row_sqlInv['cuentaProd'].'</td>';
              echo'<td class="text-center">'.$row_sqlInv['fecha_venta'].'</td>';
            echo'</tr>';
          }
        ?>
      </tbody>
    </table>