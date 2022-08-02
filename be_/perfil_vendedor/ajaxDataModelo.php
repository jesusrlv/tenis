<?php
    if((isset($_POST['uno'])) && (isset($_POST['dos']))){

        echo $_POST['uno'];
        echo $_POST['dos'];
        $id1 = $_POST['uno'];
        $id2 = $_POST['dos'];
        include('query/qconn/qc.php');
        $sqlModelo = "SELECT * FROM producto WHERE nombre = '$id1' AND descripcion = '$id2'";
        $resultadoModelo = $conn->query($sqlModelo);
        echo '<option selected value="">Color predominante</option>';
        echo '<option value="0">Sin categoría</option>';
        $row_sqlModelo = $resultadoModelo->fetch_assoc();
        $valueColor = explode(',',$row_sqlModelo['color']);
        for ($x = 0; $x < count($valueColor); $x++) {    
            echo '<option value="'.$valueColor[$x].'">'.$valueColor[$x].'</option>'.PHP_EOL;
          }

    }
    else{
        echo 'no hay datos';
    }
?>

<!-- se selecciona modelo para sacar el color -->