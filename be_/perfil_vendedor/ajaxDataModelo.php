<?php
    if((isset($_POST['uno'])) && (isset($_POST['dos']))){

        echo $_POST['uno'];
        echo $_POST['dos'];
        $id1 = $_POST['uno'];
        $id2 = $_POST['dos'];
        include('query/qconn/qc.php');
        $sqlModelo = "SELECT * FROM producto WHERE nombre = '$id1' AND descripcion = '$id2'";
        $resultadoModelo = $conn->query($sqlModelo);
        echo '<option selected value="">Color</option>';
        echo '<option value="0">Sin categoría</option>';
        while ($row_sqlModelo = $resultadoModelo->fetch_assoc()){
            echo '<option value="'.$row_sqlModelo['color'].'">'.$row_sqlModelo['color'].'</option>';
        }
    }
    else{
        echo 'no hay datos';
    }
?>