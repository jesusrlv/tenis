<?php
session_start();

include('../query/qconn/qc.php');
if (isset($_POST['usr']) && isset($_POST['pwd'])) {
   
    $id = $_POST['usr'];
    $pwd = $_POST['pwd'];

    $sql = "SELECT * FROM usr WHERE usr = '$id' AND pwd ='$pwd'";   
    $resultado_sql = $conn->query($sql);
    if($row_sql=mysqli_fetch_array($resultado_sql)){
   
        $_SESSION['id']=$row_sql['id'];
        $_SESSION['usr']=$row_sql['usr'];
        $_SESSION['pwd']=$row_sql['pwd'];
        $_SESSION['perfil']=$row_sql['perfil'];

        echo json_encode(array('success' => 1));
    }
    else{
        echo json_encode(array('success' => 0));
    }
    
} else {
    echo json_encode(array('success' => 0));
}