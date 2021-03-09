<!DOCTYPE html>
<?php
session_start();
if ( !isset($_SESSION["id"]) ){
  header("location:index.php?erro=2");
}
 ?>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Flávio Rodrigo Silveira Santos">
    <meta name="description" content="Anime Fans, o seu site de animes. Assista a alguns dos melhores animes já criados.">
    <meta name="keywords" content="Animes, Dragon Ball, Naruto, Online, Anime_Fans">
    <title>Anime Fans | Contato</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="icon" href="imagens/img.png">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  </head>
  <body>
    <?php include "includes/menu.php" ?>
    <div class="col-sm-9 col-md-9 col-lg-8 col-xl-6" id="tx">
      <div class="principal">
        <div class="cont">Contato</div>
        <div class="prob">Problemas? Entre em contato conosco.</div><br>
          <form action="" method="post">
            <div class="conf">
              <label>Nome:</label><br>
              <input type="text" name="nome" id="nome" class="col-4" autofocus><br>
              <label>E-mail:</label><br>
              <input type="email" name="email" id="email" class="col-4"><br>
              <label>Mensagem:</label><br>
              <textarea type="text" name="mensagem" id="mensagem" class="col-5" rows="5"></textarea><br><br>
              <input type="submit" value="Enviar" class="btn btn-outline-success">
              <br><br><br><br><br><br><br><br><br><br><br>
              <?php
              if (isset($_POST["nome"])) {
                $nome = $_POST["nome"];
                $email = $_POST["email"];
                $mensagem = $_POST["mensagem"];
                include "conexao.php";
                $con = conecta_mysql();
                $sql = "INSERT INTO opinioes (nome, email, mensagem)
                values('$nome','$email','$mensagem')";
                $resultado = mysqli_query($con,$sql);
                if ($resultado) {
                  print "<script> alert('Mensagem Enviada!');</script>";
                }
              }
               ?>
            </div>
          </form>
          <?php include "includes/rodape.php" ?>
      </div>
    </div>
  </body>
</html>
