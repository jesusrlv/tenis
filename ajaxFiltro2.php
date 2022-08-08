<?php
    if(isset($_POST['filtro'])){
        $id = $_POST['filtro'];
        include('query/qconn/qc.php');

        if(($id==1) OR ($id==4)){
            $sqlFiltro = "SELECT * FROM color";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Color</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['color'].'">'.$row_sql['color'].'</option>';
            }
        }
        else if(($id==2) OR ($id==5) OR ($id==8) OR ($id==9)){
            $sqlFiltro = "SELECT * FROM material";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Material</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['material'].'">'.$row_sql['material'].'</option>';
            }
        }
        else if(($id==3) OR ($id==6) OR ($id==7)){
            $sqlFiltro = "SELECT * FROM talla";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Talla</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['talla'].'">'.$row_sql['talla'].'</option>';
            }
        }
        else{
            // echo 'no hay datos';
            echo '<script>alert("No hay datos");';
        }
    }
?>