<!DOCTYPE html> <!--Flávio Rodrigo-->
<?php
  session_start();
  if ( !isset($_SESSION["id"]) ){
    header("location:index.php?erro=2");
  }

$id_usuario = $_SESSION["id"];
include_once "conexao.php";
$con = conecta_mysql();
?>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Flávio Rodrigo Silveira Santos">
    <meta name="description" content="Anime Fans, o seu site de animes. Assista a alguns dos melhores animes já criados.">
    <meta name="keywords" content="Animes, Dragon Ball, Naruto, Online, Anime_Fans">
    <title>Anime Fans | Animes</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="icon" href="imagens/img.png">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  </head>
  <body>
    <?php include "includes/menu.php" ?>
      <div class="col-sm-9 col-md-9 col-lg-8 col-xl-6" id="tx">
        <div class="principal">
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime">Naruto Clássico (Dublado)</span><br><br>
            <img src="imagens/img2.jpg" width="210px" height="310px" class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b> Naruto Clássico <br>
              <b>Gênero:</b> Ação, Artes Marciais, Aventura <br>
              <b>Autor:</b> Masashi Kishimoto <br>
              <b>Estúdio:</b> Studio Pierrot <br>
              <b>Áudio:</b> Português <br>
              <b>Legenda:</b> Sem Legenda <br>
              <b>N° de Episódios:</b> 220 <br>
              <b>Status:</b> Incompleto <br>
              <b>Ano:</b> 2002
          </div><br>
          <a href="naruto.php"><img src="imagens/img20.png"></a>
          <br><br>
          <hr>
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime">Dragon Ball Super (Dublado)</span><br><br>
            <img src="imagens/img4.jpg" width="210px" height="327px;" class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b> Dragon Ball Super <br>
              <b>Gênero:</b> Ação, Artes Marciais, Aventura, Comédia, Fantasia Científica <br>
              <b>Autor:</b> Akira Toriyama <br>
              <b>Estúdio:</b> Toei Animation <br>
              <b>Áudio:</b> Português <br>
              <b>Legenda:</b> Sem Legenda <br>
              <b>N° de Episódios:</b> 131 <br>
              <b>Status:</b> Completo <br>
              <b>Ano:</b> 2015
          </div><br>
          <a href="DBS.php"><img src="imagens/img20.png"></a>
          <br><br>
          <hr>
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime"> Naruto Shippuden (Dublado)</span><br><br>
            <img src="imagens/img6.jpg" width="210px" height="310px; "class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b> Naruto Shippuden <br>
              <b>Gênero:</b> Ação, Artes Marciais, Aventura <br>
              <b>Autor:</b> Masashi Kishimoto <br>
              <b>Estúdio:</b> Studio Pierrot <br>
              <b>Áudio:</b> Português <br>
              <b>Legenda:</b> Sem Legenda <br>
              <b>N° de Episódios:</b> 112 <br>
              <b>Status:</b> Completo <br>
              <b>Ano:</b> 2007
          </div><br>
          <a href="naruto_shi.php"><img src="imagens/img20.png"></a>
          <br><br>
          <hr>
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime"> Avatar: A Lenda de Aang (Dublado) </span><br><br>
            <img src="imagens/img48.jpg" width="210px" height="310px" class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b> Avatar: A Lenda de Aang <br>
              <b>Gênero:</b> Aventura, Fantasia, Comédia, Ação <br>
              <b>Autor:</b> Aaron Ehasz  <br>
              <b>Estúdio:</b> JM Animation <br>
              <b>Áudio:</b> Português <br>
              <b>Legenda:</b> Sem Legenda <br>
              <b>N° de Episódios:</b> 61 <br>
              <b>Status:</b> Completo <br>
              <b>Ano:</b> 2005
          </div><br>
          <a href="avatar.php"><img src="imagens/img20.png"></a>
          <br><br>
          <hr>
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime"> Pokémon XY & Z (Dublado)</span><br><br>
            <img src="imagens/img10.jpg" width="210px" height="310px" class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b> Pokémon XY & Z<br>
              <b>Gênero:</b> Aventura, Fantasia <br>
              <b>Autor:</b> Kunihiko Yuyama <br>
              <b>Estúdio:</b> OLM <br>
              <b>Áudio:</b> Português <br>
              <b>Legenda:</b> Sem Legenda <br>
              <b>N° de Episódios:</b> 49 <br>
              <b>Status:</b> Incompleto <br>
              <b>Ano:</b> 2015
          </div><br>
          <a href="pokemon_xyz.php"> <img src="imagens/img20.png"> </a>
          <br><br>
          <hr>
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime"> Super Onze (Dublado)</span><br><br>
            <img src="imagens/img8.jpg" width="210px" height="310px" class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b> Super Onze <br>
              <b>Gênero:</b> Esportes, Aventura, Fantasia <br>
              <b>Autor:</b> Tenya Yabuno <br>
              <b>Estúdio:</b> OLM <br>
              <b>Áudio:</b> Português <br>
              <b>Legenda:</b> Sem Legenda <br>
              <b>N° de Episódios:</b> 78 <br>
              <b>Status:</b> Incompleto <br>
              <b>Ano:</b> 2008
          </div><br>
          <a href="super_onze.php"><img src="imagens/img20.png"></a>
          <br><br>
          <hr>
          <div class="anime">
            <img src="imagens/img14.png" width="22px">
            <span class="nome_anime"> Super Dragon Ball Heroes (Legendado)</span><br><br>
            <img src="imagens/img9.jpg" width="210px" height="310px" class="pxp">
            <span class="informacoes"> >>INFORMAÇÕES<< </span><br><br>
            <b>Título:</b>Super Dragon Ball Heroes<br>
              <b>Gênero:</b> Ação, Artes Marciais, Aventura, Fantasia <br>
              <b>Autor:</b> Yoshitaka Nagayama <br>
              <b>Estúdio:</b> Toei Animation <br>
              <b>Áudio:</b> Japonês <br>
              <b>Legenda:</b> Português <br>
              <b>N° de Episódios:</b> 16 <br>
              <b>Status:</b> Completo <br>
              <b>Ano:</b> 2018
          </div><br>
          <a href="SDBH.php"> <img src="imagens/img20.png"> </a>
          <br><br>

        <?php include_once "includes/rodape.php"; ?>

      </div>
    </div>
  </body>
</html>
