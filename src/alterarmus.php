<?php
 $id = filter_input(INPUT_GET, "id");
    $nome = filter_input(INPUT_GET, "nome");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"update pessoas set nome='$nome' where id='$id';");
        if($query){
            header("location:index.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>