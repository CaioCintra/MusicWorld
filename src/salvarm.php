<?php
    $nome = filter_input(INPUT_GET, "nome");
    $album = filter_input(INPUT_GET, "album");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"INSERT INTO `musicas` (`id`, `nome`, `album`) VALUES ('NULL','$nome', '$album')");
        if($query){
            header("location:admin.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>