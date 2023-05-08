<!DOCTYPE html>
<?php 
error_reporting(0);
ini_set(“display_errors”, 0 );
include ("conexao.php");
session_start();
    ?>
    
    <html>
    <title>Music World</title>
    <link href="https://fonts.googleapis.com/css?family=Russo+One" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
    .imglogo{
    margin-top: -87px;
    margin-left: -35px;
    height: 110px;
    width: 340px;    
}
body {
    background-image: url("img/background.png");
    background-repeat: no-repeat;
    background-position: right top;
    background-attachment: fixed;
    background-size: cover;
}
.form{
    background-color: #000000;
    height: 40%;
    width: 70%;
    color: #FFFFFF;
    font-family: 'Russo One';
    border-radius: 25px;
    box-shadow: 10px 10px 5px #330000;
}
.form-field {
    border: 2px solid #bfbfbf;
    background: #1a1a1a;
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
    color: #FFFF;
    -webkit-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(000,000,000,0.7) 0 1px 1px;
    -moz-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(000,000,000,0.7) 0 1px 1px;
    box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(000,000,000,0.7) 0 1px 1px;
    padding:8px;
    margin-bottom:20px;
    width:280px;
    }
 .form-field:focus {
    background: #242424;
    color: #FFFF;
    }
 .submit-button {
    border: 2px solid #850000;
    background: #572020;
    background: -webkit-gradient(linear, left top, left bottom, from(#e62222), to(#572020));
    background: -webkit-linear-gradient(top, #e62222, #572020);
    background: -moz-linear-gradient(top, #e62222, #572020);
    background: -ms-linear-gradient(top, #e62222, #572020);
    background: -o-linear-gradient(top, #e62222, #572020);
    background-image: -ms-linear-gradient(top, #e62222 0%, #572020 100%);
    -webkit-border-radius: 6px;
    -moz-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 0px 0;
    -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 0px 0;
    box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 0px 0;
    text-shadow: #050505 0 1px 0;
    color: #000000;
    font-family: helvetica, serif;
    padding: 8.5px 18px;
    font-size: 14px;
    text-decoration: none;
    vertical-align: middle;
    }
 .submit-button:hover {
    border: 2px solid #850000;
    text-shadow: #050505 0 1px 0;
    background: #572020;
    background: -webkit-gradient(linear, left top, left bottom, from(#e62222), to(#572020));
    background: -webkit-linear-gradient(top, #e62222, #572020);
    background: -moz-linear-gradient(top, #e62222, #572020);
    background: -ms-linear-gradient(top, #e62222, #572020);
    background: -o-linear-gradient(top, #e62222, #572020);
    background-image: -ms-linear-gradient(top, #e62222 0%, #572020 100%);
    color: #ffffff;
    }
 .submit-button:active {
    text-shadow: #050505 0 1px 0;
    border: 2px solid #850000;
    background: #572020;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff0000), to(#572020));
    background: -webkit-linear-gradient(top, #ff0000, #572020);
    background: -moz-linear-gradient(top, #ff0000, #572020);
    background: -ms-linear-gradient(top, #ff0000, #572020);
    background: -o-linear-gradient(top, #ff0000, #572020);
    background-image: -ms-linear-gradient(top, #ff0000 0%, #572020 100%);
    color: #000000;
    }
    textarea {
   resize: none;
}
     </style>
     <link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
<head>
<center>
<div class="header" ><br>
<table border="0px" width="100%" valign="middle">
<th width="35%" align="left">
<th><center><br><br><br><br><img src="img/logo.png" class="imglogo"></center></th>
<th width="20%" align="left">
<th width="15%" align="left"><a href="index.php" style=text-decoration:none;><span style="font-size:40px;cursor:pointer" class="openbtn">Voltar</span></a>&nbsp&nbsp&nbsp
</table>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
</div>
<br><br><br>
<body background="img/background.png" class="bg">
<!--Formulario-->
<div class="form">
<br><h1>Adicione Um Instrumento</h1>
<form action="salvari.php">
Nome:<br>
<input type="text" name="nome" class="form-field">
<br>
  <input type="submit" value="Enviar" class="submit-button">
<br><br>
</form>
</div>
<br>