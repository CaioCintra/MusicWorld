<?php
$pessoa = filter_input (INPUT_GET,"mus");
$instrumento = filter_input (INPUT_GET,"inst");
$link = mysqli_connect("localhost","root","","musicworld");

if($link){
    $query = mysqli_query($link,"delete from toca where pessoa='$pessoa' and instrumento='$instrumento'");
    if($query){
        header("location:index.php");
    }else{
     die("Erro: ". mysqli_error($link));  
    }
}else{
    die("Erro: ". mysqli_error($link));
}
?>