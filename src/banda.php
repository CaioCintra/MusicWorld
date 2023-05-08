<!DOCTYPE html>
<?php 
session_start();
$mysqllink = mysqli_connect("localhost","root","","musicworld");
$id = filter_input(INPUT_GET, "id");
$dados=mysqli_query($mysqllink,"select * from bandas where id='$id'");
$linha = mysqli_fetch_assoc($dados);
$dados1=mysqli_query($mysqllink,"select * from albums where banda='$id' order by nome");
$linha2 = mysqli_fetch_assoc($dados1);
$total = mysqli_num_rows($dados);

$recomendados = mysqli_query($mysqllink,"select * from recomendacao where idb1='$id'");
$linha1 = mysqli_fetch_assoc($recomendados);

$integrantes = mysqli_query($mysqllink,"select * from integrantes where banda='$id'");
$linha3 = mysqli_fetch_assoc($integrantes);
$inte = mysqli_num_rows($integrantes);
    ?>
    
    <html>
    <title>Music World</title>
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
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
.link{
        text-decoration:none;
        color:white;
    }
.imglogo{
    margin-top: -87px;
    margin-left: -35px;
    height: 80px;    
}
    .h1{
        color:white;
        text-shadow: 5px 3px 10px #000000;
        font-family: 'Arial';
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
.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 500px;
    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;

    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}
             </style>
             <div class="header" width="100%"><br><center>
 <table border="0px" height="10px" width="90%">
            <th width="20%" align="left"><br><br><br><img src="img/logo.png" class="imglogo">
            <th><center>
             <h1 class="h1"style="font-size: 45px;"><?php print $linha['nome'];?><th><img src=<?php echo "img/bandeiras/" .$linha['pais'] . ".png";?> class="bandeira"></center></th>
<th width="15%" align="left"><a href="index.php" style=text-decoration:none;><span style="font-size:40px;cursor:pointer" class="openbtn">Voltar</span></a>&nbsp&nbsp&nbsp
</table>&nbsp
</div><center>
            <h1 class="h1"style="font-size: 45px;"><?php print $linha['inicio']?> - <?php print $linha['fim']?><br><br>
            <img src=<?php echo "img/bandas/" .$linha['id'] . ".png";?> class="imgb"><br>
            <?php if($inte){
            Echo "Integrantes:"; ?><br>
            <?php
            foreach($integrantes as $linha3){
                $integrantes = mysqli_query($mysqllink,"select * from pessoas where id='".$linha3['pessoa']."'");
                $linha4 = mysqli_fetch_assoc($integrantes);
               echo $linha4['nome'];?>(<?php
                $instrumentos = mysqli_query($mysqllink,"select * from toca where pessoa='".$linha3['pessoa']."'");
                $linha5 = mysqli_fetch_assoc($instrumentos);
                echo "\x20";
               foreach($instrumentos as $linha5){
                $instrumentos = mysqli_query($mysqllink,"select * from instrumentos where id='".$linha5['instrumento']."'");
                $linha6 = mysqli_fetch_assoc($instrumentos);
                echo $linha6['nome'];
                echo "\x20";}
               ?>)<br>
               <?php }}
            ?>
             <div class="form">
             <h1 class="h1"style="font-size: 25px;">
             <?php print $linha['descricao'];?>
                 </div>
                 <br>
                 Albums:<br><br>
                 <?php
         if($total){do{
         ?>
        <div class="divbanda tooltip font" style="font-size: 35px;"><br><?php echo $linha2['nome']?>
        <span class="tooltiptext" style="font-size: 25px;">Músicas:<br>
        <?php
        $connect = mysqli_connect("localhost","root","","musicworld");
        $query = "SELECT * FROM `musicas` where album='" .$linha2['id']. "' order by nome";
        $result = mysqli_query($connect, $query);
        while($row2 = mysqli_fetch_array($result)):;
        echo $row2[1];?><br><?php
        endwhile;
        ?>
    </span>
    </div>
        <br>
        <br>
         <?php 
         }while($linha2 = mysqli_fetch_assoc($dados1));
         mysqli_free_result($dados1);}
         mysqli_close($mysqllink);
         ?>
                 
                <a href=<?php echo "https://open.spotify.com/artist/" .$linha['spotify'];?>><img src="img/spotify.png" class="imgspotify" ></a>
                <br>
                <h1 class="h1"style="font-size: 25px;">Se você gosta de <?php print $linha['nome'];?>, pode tambem gostar de:</h1><br>
                <?php
                $mysqllink = mysqli_connect("localhost","root","","musicworld");
                $recom = mysqli_query($mysqllink,"select * from bandas where id='".$linha1['idb2']."'");
                $reco = mysqli_fetch_assoc($recom);
    
         ?>
        <div class="divbanda font link" style="font-size: 30px;"><br><br><a href=<?php echo "banda.php?id=".$reco['id']?> class="link"><?php echo $reco['nome']?></a></div><br>
     