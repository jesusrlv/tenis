<?php
if($_SESSION['perfil']==3){
}
else{
  header('Location: ../prcd/sort.php');
  die();
}
?>