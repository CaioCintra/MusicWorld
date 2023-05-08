<?php
$id = filter_input (INPUT_GET,"id");
$link = mysqli_connect("localhost","root","","musicworld");

if($link){
    $query = mysqli_query($link,"delete from integrantes where id='$id'");
    if($query){
        header("location:admin.php");
    }else{
     die("Erro: ". mysqli_error($link));  
    }
}else{
    die("Erro: ". mysqli_error($link));
}
?>