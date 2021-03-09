<!DOCTYPE html>
<?php
session_start();
if ( !isset($_SESSION["id"]) ){
  header("location:index.php?erro=2");
}
include_once "conexao.php";
$con = conecta_mysql();
include_once "includes/funcoes.php";
$id_anime_id = 4;
$id_usuario = $_SESSION['id'];
 ?>
<html lang="pt-br" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Flávio Rodrigo Silveira Santos">
    <meta name="description" content="Anime Fans, o seu site de animes. Assista a alguns dos melhores animes já criados.">
    <meta name="keywords" content="Animes, Dragon Ball, Naruto, Online, Anime_Fans">
    <title>Anime Fans | Avatar</title>
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
          <span class="nome_anime"> Avatar: A Lenda de Aang (Dublado) </span><span><a name="ancora"></a><br><br>
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
            <b>Ano:</b> 2005 <br>
          <div class="sino">
            <b>Sinopse:</b> Preso durante um século dentro de um iceberg, Aang é um menino de 12 anos que agora está livre do gelo. Ele descobre que tem um destino extraordinário: ser o Avatar. Ele é responsável por garantir o equilíbrio entre os mestres dos quarto elementos, que estão divididos em quatro civilizações: as tribos da Água, da Terra, do Fogo e do Ar. Elas estão perdidas no meio de guerras e destruições. Agora, sua missão é restaurar a ordem do universo. Mas antes ele tem que aprender a dominar todos os elementos.
          </div>
          <br>
        </div>
        <div class="eps">
          <div class="lt">Lista de Episódios:</div>
          <?php
          include_once "conexao.php";
        	$con = conecta_mysql();

          $sql = "SELECT * FROM ep_anime where id_anime = 4";
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
                <?php print $anime['nome_ep'] ?> </a>
                <?php $id_anime = $anime['id'];
                $idd_anime = $anime['id_anime'];
                $id_usuario = $_SESSION['id'];
                verificar_favoritos($con,$id_usuario,$id_anime,$idd_anime);
                ?> <br><hr>
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
