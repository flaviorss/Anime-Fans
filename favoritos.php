<!DOCTYPE html>
<?php
session_start();
if ( !isset($_SESSION["id"]) ){
  header("location:index.php?erro=2");
}
include_once "includes/funcoes.php";
$id_usuario = $_SESSION['id'];
include_once "conexao.php";
$con = conecta_mysql();
 ?>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Flávio Rodrigo Silveira Santos">
    <meta name="description" content="Anime Fans, o seu site de animes. Assista a alguns dos melhores animes já criados.">
    <meta name="keywords" content="Animes, Dragon Ball, Naruto, Online, Anime_Fans">
    <title>Anime Fans | Favoritos</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="icon" href="imagens/img.png">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  </head>
  <body>
    <?php include "includes/menu.php" ?>
    <div class="col-sm-9 col-md-9 col-lg-8 col-xl-6" id="tx">
      <div class="principal">
        <div class="cont">Favoritos</div>
        <div class="coracao">
          <img src="imagens/img28.jpeg" width="35px" >&nbsp;
          <?php $favv = contar_favoritos($con,$id_usuario);
          print count($favv); ?><br><br>
        </div>
        <div class="eps">
          <div class="ep_fav">
            <?php
              $sql = "SELECT ep_anime.id, ep_anime.id_anime, nome_ep, link_ep FROM ep_anime
              INNER JOIN favoritos ON ep_anime.id = favoritos.id_ep_anime
              WHERE favoritos.id_usuario = $id_usuario";
              $resultado = mysqli_query($con,$sql);
              if ($resultado) {
                $animes = array();
                while ($linha = mysqli_fetch_array($resultado)) {
                  $animes[] = $linha;
                }
              }
             ?>
             <div class="listar1">
               <?php foreach ($animes as $anime) { ?>
                 <a href=" <?php print $anime['link_ep'] ?> " class="gs" target="_blank">
                <?php print $anime["nome_ep"] ?> </a>
                <?php
                $id_anime = $anime['id'];
                $idd_anime = 0; ?>
                <div class="nao">
                  <?php verificar_favoritos($con,$id_usuario,$id_anime,$idd_anime); ?>
                </div>
                <hr>
              <?php } ?>
             </div>
          </div>
        </div>
        <?php include_once "includes/rodape.php"; ?>
      </div>
    </div>
  </body>
</html>
