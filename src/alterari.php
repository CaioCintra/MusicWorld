<?php
 $id = filter_input(INPUT_GET, "id");
    $inst = filter_input(INPUT_GET, "nome");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"update instrumentos set nome='$inst' where id='$id';");
        if($query){
            header("location:index.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>