<!DOCTYPE html>
<?php
session_start();
if ( !isset($_SESSION["id"]) ){
  header("location:index.php?erro=2");
}
include_once "conexao.php";
$con = conecta_mysql();
include_once "includes/funcoes.php";
$id_anime_id = 5;
$id_usuario = $_SESSION['id'];
 ?>
<html lang="pt-br" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Flávio Rodrigo Silveira Santos">
    <meta name="description" content="Anime Fans, o seu site de animes. Assista a alguns dos melhores animes já criados.">
    <meta name="keywords" content="Animes, Dragon Ball, Naruto, Online, Anime_Fans">
    <title>Anime Fans | Pokémon XY & Z</title>
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
        <span class="nome_anime"> Pokémon XY & Z (Dublado)</span><span><a name="ancora"></a></span><br><br>
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
          <b>Ano:</b> 2015 <br>
          <div class="sino">
            <b>Sinopse:</b> A Aventura de Ash e Pikachu na Região Kalos está atingindo seu ponto alto em Pokémon, a Série: XYZ! Com uma Insígnia de Ginásio faltando para entrar na Liga Kalos, Ash está perseguindo seu sonho de se tornar um Mestre Pokémon, com determinação. Serena está mais perto de alcançar seus sonhos também, quando sua Exibição Pokémon se aproxima cada vez mais e a competição pela coroa de Rainha Kalos. Bonnie tem um novo amigo para cuidar, o adorável, mas misterioso Geleca. Mas logo é evidente que forças sombrias estão se movimentando para separá-los. Será que a sombria Equipe Flare vai conseguir, ou nossos heróis podem proteger o Geleca e toda a Região Kalos das ambições abrasadoras dela?
          </div>
          <br>
        </div>
        <div class="eps">
          <div class="lt">Lista de Episódios:</div>
          <?php
          include_once "conexao.php";
        	$con = conecta_mysql();

          $sql = "SELECT * FROM ep_anime where id_anime = 5";
          $resultado = mysqli_query($con,$sql);
          if ($resultado) {
          	$usuarios = array();
          	while($linha = mysqli_fetch_array($resultado)){
          		$usuarios[] = $linha;
          	}
          }
          ?>
          <div class="listar"><hr>
            <?php foreach ($usuarios as $anime) { ?>
              <a href="<?php print $anime['link_ep'] ?>" class="gs" target="_blank">
                <?php print $anime['nome_ep'] ?></a>
                <?php $id_anime = $anime['id'];
                $idd_anime = $anime['id_anime'];
                $id_usuario = $_SESSION['id'];
                verificar_favoritos($con,$id_usuario,$id_anime,$idd_anime);
                ?>
              <br><hr>
            <?php } ?>
          </div>
          <div id="anco">
            <a href="#ancora"><img src="imagens/img5.png" width="50px"></a> <br><br>
          </div>
          <div class="comentarios"><h4>
            <?php
              $coment = contar_comentarios($con,$id_anime_id);
              print count($coment);
             ?>
             Comentários</h4>
          </div><br><br>
          <div class="comentarios2">
            <?php

            ?>
            <div class="de_co">DEIXE SEU COMENTÁRIO</div><br>
            <div class="princ">
              <img src="imagens/img25.png" width="50px" class="igg">
              <form class="form1" action="" method="post">
                <textarea type="text" name="coment" id="coment" class="col-10" placeholder="Adicione um comentário..." rows="4"></textarea>
                <input type="submit" class="btn btn-success" id="postar" value="Postar">
              </form><br>
              <?php
              if (isset($_POST['coment']) ) {
                $coment = $_POST['coment'];

                $sql = "INSERT INTO comentarios(id_usuario, id_anime, comentario)
                values('$id_usuario','$id_anime_id','$coment')";
                $resultado = mysqli_query($con,$sql);
                if($resultado){
                  print "<script> alert('Comentário Postado');</script>";
                }
              }
               ?>
              <div class="print-coment">
                 <?php mostrar_comentarios($con,$id_anime_id); ?>
              </div>
            </div>
          </div>
        </div>
        <?php include_once "includes/rodape.php"; ?>
      </div>
    </div>
  </body>
</html>
