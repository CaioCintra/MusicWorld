<?php
    $id = filter_input(INPUT_GET, "id");
    $nome = filter_input(INPUT_GET, "nome");
    $estilo = filter_input(INPUT_GET, "estilo");
    $pais = filter_input(INPUT_GET, "pais");
    $descricao = filter_input(INPUT_GET, "descricao");
    $inicio = filter_input(INPUT_GET, "inicio");
    $fim = filter_input(INPUT_GET, "fim");
    $spotify = filter_input(INPUT_GET, "spotify");
    $link = mysqli_connect("localhost","root","","musicworld");

    if($link){
        $query = mysqli_query($link,"update bandas set nome='$nome', estilo='$estilo', pais='$pais', inicio='$inicio', fim='$fim', spotify='$spotify', descricao='$descricao' where id='$id';");
        if($query){
            header("location:index.php");
        }else{
         die("Erro: ". mysqli_error($link));  
        }
    }else{
        die("Erro: ". mysqli_error($link));
    }
?>