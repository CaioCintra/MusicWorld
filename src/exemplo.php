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
             <link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
             <style>
             body {
    background-image: url("img/background.png");
    background-repeat: no-repeat;
    background-position: right top;
    background-attachment: fixed;
    background-size: cover;
}
.imglogo{
    margin-top: -87px;
    margin-left: -35px;
    height: 80px;    
}
    .h1{
        color:white;
        text-shadow: 5px 3px 10px #000000;
        font-family: 'Russo One';
    }

    .imgb{
        width:600px;
    }
    .imgspotify{
        width:200px;
    }
    .bandeira{
        width:100px;
        height:60px;
    }
    html, body {
    max-width: 100%;
    overflow-x: hidden;
}
.form{
    background-color: #000000;
    width: 90%;
    color: #FFFFFF;
    font-family: 'Russo One';
    border-radius: 25px;
    box-shadow: 10px 10px 5px #330000;
}
             </style>
             <div class="header" width="100%"><br><center>
 <table border="0px" height="10px" width="90%">
            <th width="20%" align="left"><br><br><br><img src="img/logo.png" class="imglogo">
            <th><center>
             <h1 class="h1"style="font-size: 45px;">Deep Purple<th><img src="img/bandeiras/inglaterra.png" class="bandeira"></center></th>
<th width="15%" align="left"><a href="index.php" style=text-decoration:none;><span style="font-size:40px;cursor:pointer" class="openbtn">Voltar</span></a>&nbsp&nbsp&nbsp
</table>&nbsp
</div><center>
            <h1 class="h1"style="font-size: 45px;">1968 - Presente<br><br>
             <img src="img/deep-purple.jpg" class="imgb"><br>
             <div class="form">
             <h1 class="h1"style="font-size: 25px;">
             Deep Purple é uma banda britânica de rock formada em Hertford, Hertfordshire, em 1968.
             Juntamente com as bandas Black Sabbath e Led Zeppelin, o Deep Purple é considerado um dos
              pioneiros do heavy metal e do hard rock moderno, embora alguns de seus integrantes tenham
               tentado não se categorizar como apenas um destes gêneros. A banda também incorporou 
               elementos do barroco, da psicodélia, do blues e do rock progressivo ao seu som.
                Foram listados pelo Livro Guiness dos Recordes "como a banda com o som mais alto ao vivo no mundo",
                 e venderam mais de 100 milhões de álbuns ao redor do mundo.
                 </div>
                 <br>
                <a href="https://open.spotify.com/artist/568ZhdwyaiCyOGJRtNYhWf"><img src="img/spotify.png" class="imgspotify" ></a>