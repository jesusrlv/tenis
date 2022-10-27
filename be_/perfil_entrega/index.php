<?php
if($_SESSION['perfil']==2){
}
else{
  header('Location: ../prcd/sort.php');
  die();
}
?>