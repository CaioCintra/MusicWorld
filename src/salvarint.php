<?php
    $int = filter_input(INPUT_GET, "int");
    $bda = filter_input(INPUT_GET, "bda");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"INSERT INTO `integrantes` VALUES ('','$int', '$bda')");
        if($query){
            header("location:admin.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>