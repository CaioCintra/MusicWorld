<?php
    $estilo = filter_input(INPUT_GET, "estilo");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"insert into estilo values('','$estilo');");
        if($query){
            header("location:admin.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>