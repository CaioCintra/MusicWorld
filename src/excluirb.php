<?php
$id = filter_input (INPUT_GET,"id");
$link = mysqli_connect("localhost","root","","musicworld");

if($link){
    $query = mysqli_query($link,"delete from bandas where id='$id'");
    if($query){
        header("location:index.php");
    }else{
     die("Erro: ". mysqli_error($link));  
    }
}else{
    die("Erro: ". mysqli_error($link));
}
?>