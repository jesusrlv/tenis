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
        else if(($id==7) OR ($id==8)){
            $sqlFiltro = "SELECT * FROM color";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Color</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['color'].'">'.$row_sql['color'].'</option>';
            }
        }
        else if(($id==9)){
            $sqlFiltro = "SELECT * FROM talla";
            $resultadoFiltro = $conn->query($sqlFiltro);
            echo '<option selected value="">Talla</option>';
            echo '<option value="0">Sin categoría</option>';
            while ($row_sql = $resultadoFiltro->fetch_assoc()){
                echo '<option value="'.$row_sql['talla'].'">'.$row_sql['talla'].'</option>';
            }
        }
        else{
            echo 'no hay datos';
        }
    }
?>