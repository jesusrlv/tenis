<?php
    if(isset($_POST['marcaID'])){
        $id = $_POST['marcaID'];
        include('query/qconn/qc.php');
        $sqlMarca = "SELECT * FROM producto WHERE nombre = '$id'";
        $resultadoMarca = $conn->query($sqlMarca);
        echo '<option selected value="">Modelo</option>';
        echo '<option value="0">Sin categoría</option>';
        while ($row_sql = $resultadoMarca->fetch_assoc()){
            echo '<option value="'.$row_sql['descripcion'].'">'.$row_sql['descripcion'].'</option>';
        }
    }
    else{
        echo 'no hay datos';
    }
?>