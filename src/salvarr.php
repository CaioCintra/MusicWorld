<?php
    $idb1 = filter_input(INPUT_GET, "rec");
    $idb2 = filter_input(INPUT_GET, "rec1");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"INSERT INTO `recomendacao` (`idb1`, `idb2`) VALUES ('$idb1', '$idb2')");
        if($query){
            header("location:admin.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>