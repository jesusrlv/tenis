
<?php
// $q = $_GET['q'];

// include('../../query/qconn/qc.php');
// echo $q;
// $sql="SELECT * FROM producto WHERE color = '$q'";
// $result= $conn->query($sql);

// echo "<table>
// <tr>
// <th>Firstname</th>
// <th>Lastname</th>
// <th>Age</th>
// <th>Hometown</th>
// <th>Job</th>
// </tr>";
// while($row = $result->fetch_array()){
//   echo "<tr>";
//   echo "<td>" . $row['nombre'] . "</td>";
//   echo "<td>" . $row['color'] . "</td>";
//   echo "<td>" . $row['precio'] . "</td>";
//   echo "<td>" . $row['descripcion'] . "</td>";
//   echo "<td>" . $row['cantidad'] . "</td>";
//   echo "</tr>";
// }
// echo "</table>";
// mysqli_close($conn);
?>


<?php
if(isset($_POST['form1'])):
echo "Cargando...";
// $id = $_GET[''];
// $marca = $_POST['marca'];
// $modelo = $_POST['modelo'];
// $color = $_POST['color'];
// $material = $_POST['material'];
// $talla = $_POST['talla'];
include('../../query/qconn/qc.php');
// if(isset($_POST['queryFilter'])){
//   $queryMarca = "Nike";
    // if (isset($_POST['marca'])){
    //     $marca = $_POST['marca'];
    //     $queryMarca = "Nike";
    // }
    // else{
    //     $marca = "";
    //     $queryMarca = "";
    // }

    // if (isset($_POST['modelo'])){
    //     $modelo = $_POST['modelo'];
    //     $queryModelo= "AND ".$modelo."= modelo";
    // }
    // else{
    //     $modelo = "";
    //     $queryModelo = "";
    // }

    // if (isset($_POST['color'])){
    //     $color = $_POST['color']; 
    //     $queryColor= "AND ".$color."= color";
    // }
    // else{
    //     $color = "";
    //     $queryColor = "";
    // }
    // if (isset($_POST['material'])){
    //     $material = $_POST['material'];
    //     $queryMaterial= "AND ".$material."= material";
    // }
    // else{
    //     $material = "";
    //     $queryMaterial = "";
    // }
    // if (isset($_POST['talla'])){
    //     $talla = $_POST['talla'];
    //     $queryTalla= "AND ".$talla."= talla";
    // }
    // else{
    //     $talla = "";
    //     $queryTalla = "";
    // }
    // $Query = "SELECT * FROM producto WHERE ".$queryMarca." ". $queryModelo." ". $queryColor." ". $queryMaterial." ".$queryTalla." ORDER BY id";
    
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];
    $color = $_POST['color']; 
    $material = $_POST['material'];
    $talla = $_POST['talla'];
    
    $Query = "SELECT * FROM producto WHERE modelo = '$modelo' OR marca = '$marca' OR color = '$color' OR material ='$material' OR talla = '$talla' ORDER BY id";
    $resultado_Query = $conn->query($Query);

    // if($resultado_Query = $conn->query($Query)){
    //     echo $resultado_Query;
    //     $row = $resultado_Query->fetch_assoc();
    // } else {
    //    printf("Error: %s\n", $conn->error);
    // }
        echo'
        <table>
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
            </tr>';
    while($row_sqlTalla = $resultado_Query->fetch_assoc()){
        
         echo'
             <tr>
                <td>'.$row_sqlTalla['nombre'].'</td>
                <td>'.$row_sqlTalla['precio'].'</td>
            </tr>
         ';   
        
      }
      echo'
      </table>
        ';
// }
// elseif{
//     echo "No ya parámetros";
// }

else: Echo "No hay datos";


?>


<!-- https://www.w3schools.com/php/php_ajax_database.asp -->