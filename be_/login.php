<?php
session_start();

include('../query/qconn/qc.php');
if (isset($_POST['usr']) && isset($_POST['pwd'])) {
   
    $id = $_POST['usr'];
    $pwd = $_POST['pwd'];

    $sql = "SELECT * FROM usr WHERE usr = '$id' AND pwd ='$pwd' AND status_e = 1";   
    $resultado_sql = $conn->query($sql);
    if($row_sql=mysqli_fetch_array($resultado_sql)){
   
        $_SESSION['id']=$row_sql['id'];
        $_SESSION['usr']=$row_sql['usr'];
        $_SESSION['pwd']=$row_sql['pwd'];
        $_SESSION['perfil']=$row_sql['perfil'];

        // codigo para ajax
//         if($row_sql['perfil']==1){
//         echo json_encode(array('success' => 1));
//         }
//         if($row_sql['perfil']==2){
//         echo json_encode(array('success' => 2));
//         }
//     }
//     else{
//         echo json_encode(array('success' => 0));
//     }
    
// } else {
//     echo json_encode(array('success' => 0));
// }

if($row_sql['perfil']==1){ //admin
    
    echo "<script type=\"text/javascript\">location.href='dashboard.php';</script>";
    }

elseif($row_sql['perfil']==2){ //entregas

    echo "<script type=\"text/javascript\">location.href='perfil_entrega/venta_gral.php';</script>";
    
}

elseif($row_sql['perfil']==3){ //vendedor

    echo "<script type=\"text/javascript\">location.href='perfil_vendedor/catalogo.php';</script>";
    
}


}



else{

    session_destroy();
    $_SESSION = [];
    echo "<script type=\"text/javascript\">alert('Usuario no válido');location.href='../index.html';</script>";


}
}