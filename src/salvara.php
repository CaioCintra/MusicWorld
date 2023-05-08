<?php
    $nome = filter_input(INPUT_GET, "nome");
    $banda = filter_input(INPUT_GET, "banda");
    $link = mysqli_connect("localhost","root","","musicworld");
    if($link){
        $query = mysqli_query($link,"INSERT INTO `albums` (`id`, `nome`, `banda`) VALUES ('NULL','$nome', '$banda')");
        if($query){
            header("location:admin.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>