<?php
    if((isset($_POST['uno'])) && (isset($_POST['dos']))){

        $id1 = $_POST['uno'];
        $id2 = $_POST['dos'];
        include('query/qconn/qc.php');
        $sqlModelo = "SELECT * FROM producto WHERE nombre = '$id1' AND descripcion = '$id2'";
        $resultadoModelo = $conn->query($sqlModelo);
        echo '<option selected value="">Material</option>';
        echo '<option value="0">Sin categoría</option>';
        $row_sqlModelo = $resultadoModelo->fetch_assoc();
        $valueMaterial = explode(',',$row_sqlModelo['material']);
        for ($x = 0; $x < count($valueMaterial); $x++) {    
            echo '<option value="'.$valueMaterial[$x].'">'.$valueMaterial[$x].'</option>'.PHP_EOL;
          }

    }
    else{
        echo 'no hay datos';
    }
?>

<!-- se selecciona modelo para sacar el material -->