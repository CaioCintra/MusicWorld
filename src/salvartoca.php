<?php
    $int = filter_input(INPUT_GET, "inst");
    $bda = filter_input(INPUT_GET, "mus");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"INSERT INTO `toca` VALUES ('$bda', '$int')");
        if($query){
            header("location:index.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>