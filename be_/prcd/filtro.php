<?php
if(isset($_POST['filtro'])){
    if (isset($_POST['marca'])){
        $marca = $_POST['marca'];
        $queryMarca = "AND ".$marca."= marca";
    }
    elseif{
        $marca = "";
        $queryMarca = "";
    }

    if (isset($_POST['modelo'])){
        $modelo = $_POST['modelo'];
        $queryModelo= "AND ".$modelo."= modelo";
    }
    elseif{
        $modelo = "";
        $queryModelo = "";
    }

    if (isset($_POST['color'])){
        $color = $_POST['color']; 
        $queryColor= "AND ".$color."= color";
    }
    elseif{
        $color = "";
        $queryColor = "";
    }
    if (isset($_POST['material'])){
        $material = $_POST['material'];
        $queryMaterial= "AND ".$material."= material";
    }
    elseif{
        $material = "";
        $queryMaterial = "";
    }
    if (isset($_POST['talla'])){
        $talla = $_POST['talla'];
        $queryTalla= "AND ".$talla."= talla";
    }
    elseif{
        $talla = "";
        $queryTalla = "";
    }
    // $Query = "SELECT * FROM producto WHERE ".$queryMarca." ". $queryModelo." ". $queryColor." ". $queryMaterial." ".$queryTalla." ORDER BY id";
    $Query = "SELECT * FROM producto WHERE ".$queryTalla." ORDER BY id";
    $resultado_Query = $conn->query($Query);
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
}
elseif{
    echo "No ya parámetros";
}

    


?>