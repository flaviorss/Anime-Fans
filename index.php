<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="author" content="Flávio Rodrigo Silveira Santos">
    <meta name="description" content="Anime Fans, o seu site de animes. Assista a alguns dos melhores animes já criados.">
    <meta name="keywords" content="Animes, Dragon Ball, Naruto, Online, Anime_Fans">
    <title>Anime Fans</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="icon" href="imagens/img.png">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  </head>
  <body>
    <center>
      <div class="col-sm-10 col-md-8 col-lg-6 col-xl-5">
        <div class="inicio">
          <div class="form">
            <form action="" method="post">
              <span class="tt">Entrar</span><br><br>
              <fieldset>
                <p>
                  <input type="email" name="email" class="btn btn-default" id="email" autofocus placeholder="Email">
                </p>
                <p>
                  <input type="password" name="senha" class="btn btn-default" id="senha" placeholder="Senha">
                </p><br>
                <input type="submit" id="buton" class="btn btn-danger" value="Entrar"></input><br><br><br>
                <span class="nn">Novo por Aqui?</span> &nbsp <a href="cadastro.php">Cadastre-se agora</a><br><br><br>
              </fieldset>
            </form>
          </div>

    <?php
    if (isset($_POST["email"]) ) {
      $email = $_POST["email"];
      $senha = $_POST["senha"];
      $senha = md5($senha);
      include_once "conexao.php";
      $con = conecta_mysql();
      $sql = "SELECT * FROM usuarios WHERE email='$email' and senha='$senha'";
      $resultado = mysqli_query($con,$sql);
      if ($resultado) {
        $dados = mysqli_fetch_assoc($resultado);
        if (isset($dados["id"])) {
          session_start();
          $_SESSION["id"] = $dados["id"];
          $_SESSION["nome"] = $dados["nome"];
          $_SESSION["email"] = $dados["email"];
          header("location:animes.php");
        }
        else {
          print "<script> alert('Email ou Senha Incorretos'); </script>";
        }
      }
    }

  if(isset($_GET["erro"])){
    $erro = $_GET["erro"];
    if($erro==1){
      echo "<script> alert('Mensagem do ERRO 1'); </script>";
      print"";
    }
    if($erro==2){
      echo "<script> alert('ATENÇÂO! È NECESSARIOS FAZER O LOGIN'); </script>";
    }
  }


     ?>
   </div>
  </div>
</center>
  </body>
</html>
