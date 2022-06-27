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
    $Query = "SELECT * FROM producto WHERE ".$queryMarca." ". $queryModelo." ". $queryColor." ". $queryMaterial." ".$queryTalla." ORDER BY id";
    $resultado_Query = $conn->query($Query);
}
elseif{
    echo "No ya parámetros";
}

    


?>