<?php
    if((isset($_POST['uno'])) && (isset($_POST['dos']))){

        $id1 = $_POST['uno'];
        $id2 = $_POST['dos'];
        include('query/qconn/qc.php');
        $sqlModelo = "SELECT * FROM producto WHERE nombre = '$id1' AND descripcion = '$id2'";
        $resultadoModelo = $conn->query($sqlModelo);
        echo '<option selected value="">Talla</option>';
        echo '<option value="0">Sin categoría</option>';
        // while ($row_sqlModelo = $resultadoModelo->fetch_assoc()){
        //     echo '<option value="'.$row_sqlModelo['color'].'">'.$row_sqlModelo['color'].'</option>';
        // }
        $row_sqlTalla = $resultadoModelo->fetch_assoc();
        $valueTalla = explode(',',$row_sqlTalla['talla']);
        for ($x = 0; $x < count($valueTalla); $x++) {    
            echo '<option value="'.$valueTalla[$x].'">'.$valueTalla[$x].'</option>'.PHP_EOL;
          }

    }
    else{
        echo 'no hay datos';
    }
?>

<!-- se selecciona modelo para sacar el material -->