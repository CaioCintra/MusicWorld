<?php
    $nome = filter_input(INPUT_GET, "nome");
    $estilo = filter_input(INPUT_GET, "estilo");
    $pais = filter_input(INPUT_GET, "pais");
    $descricao = filter_input(INPUT_GET, "descricao");
    $inicio = filter_input(INPUT_GET, "inicio");
    $fim = filter_input(INPUT_GET, "fim");
    $spotify = filter_input(INPUT_GET, "spotify");
    $link = mysqli_connect("localhost","root","","musicworld");

    if($link){
        $query = mysqli_query($link,"INSERT INTO `bandas` (`id`, `nome`, `estilo`, `pais`, `inicio`, `fim`, `spotify`, `descricao`) VALUES (NULL, '$nome', '$estilo', '$pais', '$inicio', '$fim', '$spotify', '$descricao')");
        if($query){
            header("location:admin.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>