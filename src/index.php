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
    <?php
    $parametro = filter_input(INPUT_GET,"parametro");
    $mysqllink = mysqli_connect("localhost","root","","musicworld");
    $dados=mysqli_query($mysqllink,"select * from bandas order by nome");
    $linha = mysqli_fetch_assoc($dados);
    $total = mysqli_num_rows($dados);
    ?>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<style>
body {
    background-image: url("img/background.png");
    background-repeat: no-repeat;
    background-position: right top;
    background-attachment: fixed;
    background-size: cover;
}
    ::-webkit-scrollbar {
    width: 10px;
}

::-webkit-scrollbar-track {
    background: rgb(14, 13, 13); 
}
 
::-webkit-scrollbar-thumb {
    background: #888; 
}

::-webkit-scrollbar-thumb:hover {
    background: #555; 
}
.imglogo{
    margin-top: -87px;
    margin-left: -35px;
    height: 110px;
    width: 340px;    
}
.conteudo{
    display:inline-block;
    margin-left: 30px;
    width: 100%;
    text-align: center;
    background-color: #fff;
}
.font{
        font-family: 'Russo One';
        color: white;
        font-size: 200%;
        text-shadow: #050505 0 1px 0;
        text-decoration: none;
    }
    .divbanda {
    height:110px;
    width:600px;
    border-radius: 6px;
    background-color: rgb(48, 48, 48);
    box-shadow: 1px 1px 5px #000;
}
.link{
        text-decoration:none;
        color:white;
    }
</style>
<link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
</head>
<div class="header" id="myHeader">
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
<!--Conteúdo da barra lateral-->
<center>
<a href="lista.php?estilo=4"><img src="img/estilos/classica.png" class="imgestilo"></a>
<a href="lista.php?estilo=5"><img src="img/estilos/funk.png" class="imgestilo"></a>
<a href="lista.php?estilo=6"><img src="img/estilos/jazz.png" class="imgestilo"></a>
<a href="lista.php?estilo=7"><img src="img/estilos/eletronica.png" class="imgestilo"></a>
<a href="lista.php?estilo=8"><img src="img/estilos/metal.png" class="imgestilo"></a>
<a href="lista.php?estilo=9"><img src="img/estilos/pagode.png" class="imgestilo"></a>
<a href="lista.php?estilo=10"><img src="img/estilos/pop.png" class="imgestilo"></a>
<a href="lista.php?estilo=11"><img src="img/estilos/punk.png" class="imgestilo"></a>
<a href="lista.php?estilo=3"><img src="img/estilos/rap.png" class="imgestilo"></a>
<a href="lista.php?estilo=1"><img src="img/estilos/rock.png" class="imgestilo"></a>
<a href="lista.php?estilo=12"><img src="img/estilos/sertanejo.png" class="imgestilo"></a>
<br><br><br><br><br>
</center>
<!---->
</div><br>
<table border="0px" width="100%" valign="middle">
<th width="35%" align="left"><span style="font-size:55px;cursor:pointer" class="openbtn" onclick="openNav()">&nbsp&nbsp&#9776; Estilos</span></th>
<th><center><br><br><br><br><img src="img/logo.png" class="imglogo"></center></th>
<th width="35%" align="right"><a href="admin.php" style=text-decoration:none;><span style="font-size:40px;cursor:pointer" class="openbtn">Admin&nbsp&nbsp&nbsp</span></a><br>&nbsp&nbsp&nbsp
</table></div>
<center><font><br><br><br><br><br><br>
         <?php
         if($total){do{
         ?>
        <div class="divbanda font"><br><a href=<?php echo "banda.php?id=".$linha['id']?> class="link"><?php echo $linha['nome']?></a></div><br>
         <?php 
         }while($linha = mysqli_fetch_assoc($dados));
         mysqli_free_result($dados);}
         mysqli_close($mysqllink);
         ?>
<body background="img/background.png" class="bg">
<center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
</body>
</html> 