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
                <td class="table-primary">'.$row_sql_envio['fecha_registro'].'</td>
                <td class="table-primary"><a data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-card-list h4"></i></a></td>
                <td class="table-primary">'.$row_sql_envio['codigo_envio_interno'].'</td>';
                if($row_sql_envio['codigo_envio_interno']==1){
                    echo '<td class="table-primary"><i class="bi bi-check-circle-fill text-success"></i> Entregado</td>';
                }
                else{
                    echo '<td class="table-primary"><span class="badge text-bg-warning"><i class="bi bi-exclamation-circle-fill"></i> No entregado</span></td>';
                }
                echo '
                </tr>
            </tbody>';

            echo '<!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Lista de pedido</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">';
                        $idPedido = $row_sql_envio['codigo_envio_interno'];
                        $sqlPedido = "SELECT * FROM venta_individual WHERE venta_gral = '$idPedido'";
                        $resultado_sqlPedido= $conn->query($sqlPedido);
                        while($row_sqlPedido = $resultado_sqlPedido->fetch_assoc()){
                            echo '<p>'.$row_sqlPedido['producto'].' | '.$row_sqlPedido['fecha_venta'].'</p>';
                        }

                    echo '</div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                    </div>
                </div>
                </div>';
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