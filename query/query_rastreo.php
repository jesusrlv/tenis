<?php

include('qconn/qc.php');

    if(isset($_POST['busqueda'])){
        $busqueda = "";
        $busqueda = $_POST['busqueda'];

       
        $sql_busqueda = "SELECT * FROM venta_gral WHERE clave_rastreo_int ='$busqueda'";
        $resultado_sql_busqueda= $conn->query($sql_busqueda);

        $resultado_rows = mysqli_num_rows($resultado_sql_busqueda);
        if($resultado_rows == 1){
            while($row_sql_envio = $resultado_sql_busqueda->fetch_assoc()){
                echo '<tbody>
                <tr>
                <td class="table-primary">'.$row_sql_envio['fecha_venta'].'</td>
                <td class="table-primary"><a data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="bi bi-card-list h4"></i></a></td>
                <td class="table-primary">'.$row_sql_envio['clave_rastreo_int'].'</td>';
                if($row_sql_envio['entrega']==1){
                    echo '<td class="table-primary"><span class="badge text-bg-success"><i class="bi bi-check-circle-fill"></i> Entregado</span></td>';
                }
                else{
                    echo '<td class="table-primary"><span class="badge text-bg-warning"><i class="bi bi-send-exclamation-fill"></i> En ruta</span></td>';
                }
                
                echo '
                </tr>
            </tbody>';

            echo '<!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel"><i class="bi bi-card-checklist"></i>     Lista de pedido</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                    <div class="alert alert-primary" role="alert">
                    <ol>
                    ';
                        $idPedido = $row_sql_envio['clave_rastreo_int'];
                        $sqlPedido = "SELECT * FROM venta_individual WHERE venta_gral = '$idPedido'";
                        $resultado_sqlPedido= $conn->query($sqlPedido);
                        $x1 = 0;
                        
                        while($row_sqlPedido = $resultado_sqlPedido->fetch_assoc()){
                            $x1++;
                            $producto = $row_sqlPedido['producto'];
                            $sqlProducto = "SELECT * FROM tenis WHERE id = '$producto'";
                            $resultadoProducto= $conn->query($sqlProducto);
                            $rowProducto = $resultadoProducto->fetch_assoc();

                            echo '<li><small><strong>Marca:</strong> '.$rowProducto['marca'].' | '.$row_sqlPedido['fecha_venta'].'<br>
                            <strong>Modelo</strong>: '.$rowProducto['modelo'].'<br>
                            <strong>Tipo:</strong> '.$rowProducto['tipo'].'<br>
                            <strong>Color Predominante:</strong> '.$rowProducto['color'].'
                            </small>
                            </li>
                                <hr>';
                        }

                    echo '
                    </ol>
                    </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                    </div>
                </div>
                </div>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <script>
                swal("Código localizado", "Revisa el estatus del envío", "success");
                </script>
                ';
            }
        }
        elseif($resultado_rows == 0){
            
            echo '<tbody>
            <tr>
            <th scope="row" class="table-dark">Sin datos</th>
            <td colspan="5" class="table-danger">No hay datos de envío</td>
            
            </tr>
        </tbody>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
        swal("Error!", "No se encuentra el envío en el registro", "error");
        </script>
        ';
    
        }
        
    }
    

?>