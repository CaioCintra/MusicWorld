<?php
 $id = filter_input(INPUT_GET, "id");
    $estilo = filter_input(INPUT_GET, "estilo");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"update estilo set nome='$estilo'where id='$id';");
        if($query){
            header("location:index.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>
