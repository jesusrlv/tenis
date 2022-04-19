<?php

include('qconn/qc.php');

    if(isset($_POST['busqueda'])){
        $busqueda = "";
        $busqueda = $_POST['busqueda'];

        $sql_busqueda = "SELECT * FROM envios WHERE codigo_envio_interno ='$busqueda'";
        $resultado_sql_busqueda= $conn->query($sql_busqueda);
        // if ($resultado_sql_busqueda= $conn->query($sql_busqueda)){
            $resultado_rows = mysqli_num_rows($resultado_sql_busqueda);
        if($resultado_rows == 1){
            while($row_sql_envio = $resultado_sql_busqueda->fetch_assoc()){
                echo '<tbody>
                <tr>
                <th scope="row" class="table-danger">'.$row_sql_envio['compania'].'</th>
                <td class="table-primary">'.$row_sql_envio['fecha_llegada'].'</td>
                <td class="table-primary">$ '.$row_sql_envio['costo_envio'].'</td>
                <td class="table-primary">'.$row_sql_envio['codigo_envio_interno'].'</td>
                <td class="table-primary">'.$row_sql_envio['codigo_envio_externo'].'</td>
                </tr>
            </tbody>';
            }
        }
        elseif($resultado_rows == 0){
            
            echo '<tbody>
            <tr>
            <th scope="row" class="table-dark">Sin datos</th>
            <td colspan="5" class="table-danger">Sin datos de envío</td>
            
            </tr>
        </tbody>
        ';
    
        }
        
    }
    

?>