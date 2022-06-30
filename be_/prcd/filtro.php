
<!DOCTYPE html>
<html>
<head>
<style>
table {
  width: 100%;
  border-collapse: collapse;
}

table, td, th {
  border: 1px solid black;
  padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
// $q = intval($_GET['q']);
$q = $_GET['q'];

// $con = mysqli_connect('localhost','root','','tenis');
// if (!$con) {
//   die('Could not connect: ' . mysqli_error($con));
// }

// mysqli_select_db($con,"tenis");

include('../../query/qconn/qc.php');
echo $q;
$sql="SELECT * FROM producto WHERE color = '$q'";
// $result = mysqli_query($conn,$sql);
$result= $conn->query($sql);

echo "<table>
<tr>
<th>Firstname</th>
<th>Lastname</th>
<th>Age</th>
<th>Hometown</th>
<th>Job</th>
</tr>";
// while($row = mysqli_fetch_assoc($result)) {
while($row = $result->fetch_array()){
  echo "<tr>";
  echo "<td>" . $row['nombre'] . "</td>";
  echo "<td>" . $row['color'] . "</td>";
  echo "<td>" . $row['precio'] . "</td>";
  echo "<td>" . $row['descripcion'] . "</td>";
  echo "<td>" . $row['cantidad'] . "</td>";
  echo "</tr>";
}
echo "</table>";
mysqli_close($conn);
?>
</body>
</html> 

<?php
// $id = $_GET[''];
// if(isset($_POST['filtro'])){
//     if (isset($_POST['marca'])){
//         $marca = $_POST['marca'];
//         $queryMarca = "AND ".$marca."= marca";
//     }
//     elseif{
//         $marca = "";
//         $queryMarca = "";
//     }

//     if (isset($_POST['modelo'])){
//         $modelo = $_POST['modelo'];
//         $queryModelo= "AND ".$modelo."= modelo";
//     }
//     elseif{
//         $modelo = "";
//         $queryModelo = "";
//     }

//     if (isset($_POST['color'])){
//         $color = $_POST['color']; 
//         $queryColor= "AND ".$color."= color";
//     }
//     elseif{
//         $color = "";
//         $queryColor = "";
//     }
//     if (isset($_POST['material'])){
//         $material = $_POST['material'];
//         $queryMaterial= "AND ".$material."= material";
//     }
//     elseif{
//         $material = "";
//         $queryMaterial = "";
//     }
//     if (isset($_POST['talla'])){
//         $talla = $_POST['talla'];
//         $queryTalla= "AND ".$talla."= talla";
//     }
//     elseif{
//         $talla = "";
//         $queryTalla = "";
//     }
//     // $Query = "SELECT * FROM producto WHERE ".$queryMarca." ". $queryModelo." ". $queryColor." ". $queryMaterial." ".$queryTalla." ORDER BY id";
//     $Query = "SELECT * FROM producto WHERE ".$queryTalla." ORDER BY id";
//     $resultado_Query = $conn->query($Query);
//         echo'
//         <table>
//             <tr>
//                 <th>Nombre</th>
//                 <th>Precio</th>
//             </tr>';
//     while($row_sqlTalla = $resultado_Query->fetch_assoc()){
        
//          echo'
//              <tr>
//                 <td>'.$row_sqlTalla['nombre'].'</td>
//                 <td>'.$row_sqlTalla['precio'].'</td>
//             </tr>
//          ';   
        
//       }
//       echo'
//       </table>
//         ';
// }
// elseif{
//     echo "No ya parámetros";
// }

    


?>

<!-- https://www.w3schools.com/php/php_ajax_database.asp -->