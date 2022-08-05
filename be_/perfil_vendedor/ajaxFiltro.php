<?php
    if(isset($_POST['filtro'])){
        $id = $_POST['filtro'];
        include('query/qconn/qc.php');

        if(($id==1) OR ($id==2) OR ($id==3)){
            $sqlFiltro = "SELECT * FROM marca";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Marca</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['marca'].'">'.$row_sql['marca'].'</option>';
            }
        }
        else if(($id==4) OR ($id==5) OR ($id==6)){
            $sqlFiltro = "SELECT * FROM modelo";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Modelo</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['modelo'].'">'.$row_sql['modelo'].'</option>';
            }
        }
        else{
            echo 'no hay datos';
        }
    }
?>