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
    <title>Anime Fans | Configurações</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="icon" href="imagens/img.png">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  </head>
  <body>
    <?php include "includes/menu.php"; ?>
    <div class="col-sm-9 col-md-9 col-lg-8 col-xl-6" id="tx">
      <div class="principal">
        <div class="dados_pessoais col-4">
          <span class="negrito">Nome:</span> <?php print $_SESSION['nome']; ?><br>
          <span class="negrito">E-mail:</span> <?php print $_SESSION['email']; ?>
        </div>
        <div class="conf">
          <br>
          <span class="alterar">Alterar Nome &nbsp; </span><span class="seta">- -></span>
          <br>
          <form action="" method="post"><br>
            <label class="">Novo Nome: </label><br>
            <input type="text" name="nome"  id="nome" class="col-4">
            <br>
            <input type="submit" value="Alterar" class="btn btn-outline-success">
          </form><br>
          <?php
          if (isset($_POST['nome'])) {
            $nome = $_POST['nome'];
            $id_usuario = $_SESSION['id'];
            include "conexao.php";
            $con = conecta_mysql();
            $sql = "UPDATE usuarios SET nome='$nome' where id=$id_usuario";
            $resultado = mysqli_query($con,$sql);
            if ($resultado) {
              $_SESSION["nome"] = $nome;
							header("location:configuracoes.php");
            }
          }
           ?>
           <span class="alterar">Alterar E-mail &nbsp; </span><span class="seta">- -></span>
           <br>
           <form action="" method="post"><br>
             <label class="">Novo E-mail: </label><br>
             <input type="email" name="email"  id="nome" class="col-4">
             <br>
             <input type="submit" value="Alterar" class="btn btn-outline-success">
           </form><br>
           <?php
           if (isset($_POST['email'])) {
             $email = $_POST['email'];
             $id_usuario = $_SESSION['id'];
             include "conexao.php";
             $con = conecta_mysql();
             $sql = "UPDATE usuarios SET email='$email' where id=$id_usuario";
             $resultado = mysqli_query($con,$sql);
             if ($resultado) {
               $_SESSION["email"] = $email;
 							header("location:configuracoes.php");
             }
           }
            ?>
            <span class="alterar">Alterar Senha &nbsp; </span><span class="seta">- -></span>
            <br>
            <form action="" method="post"><br>
              <label class="">Nova Senha: </label><br>
              <input type="password" name="senha"  id="senha" class="col-4">
              <br>
              <label>Repita a Nova Senha: </label><br>
              <input type="password" name="senha2"  id="senha2" class="col-4"><br>
              <input type="submit" value="Alterar" class="btn btn-outline-success">
            </form><br><br>
            <?php
            if (isset($_POST['senha'])) {
              $senha = $_POST['senha'];
              $senha2 = $_POST['senha2'];
              $id_usuario = $_SESSION['id'];
              if ($senha == $senha2) {
                $senha = md5($senha);
                include "conexao.php";
                $con = conecta_mysql();
                $sql = "UPDATE usuarios SET senha='$senha' where id=$id_usuario";
                $resultado = mysqli_query($con,$sql);
                if ($resultado) {
                  $_SESSION["senha"] = $senha;
                  print "<script>
                alert ('A senha foi alterada!');
                </script>";
                }
              }else {
                print "<script>
							alert ('As senhas estão diferentes!');
							</script>";
              }
            }
             ?>
        </div>
        <?php include "includes/rodape.php" ?>
      </div>
    </div>
  </body>
</html>
