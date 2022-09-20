<?php

    $servername="localhost";
    $database="tenis"; //solo se quitó para conexión remota
    $username="root";
    $password="";

    // $servername="localhost";
    // $database="shoessto_tenis"; //solo se quitó para conexión remota
    // $username="shoessto_tenis";
    // $password="Hs0QthqT=C[n";

    $conn= new mysqli ($servername,$username,$password,$database); //solo se quitó para conexión remota
    $conn->set_charset("utf8");
?>