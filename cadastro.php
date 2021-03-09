<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Anime Fans | Cadastro</title>
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
              <span class="tt">Cadastro</span><br><br>
              <fieldset>
                <p>
                  <input type="text" name="nome" class="btn btn-default" id="nome" autofocus placeholder="Nome">
                </p>
                <p>
                  <input type="email" name="email" class="btn btn-default" id="email" placeholder="Email">
                </p>
                <p>
                  <input type="password" name="senha" class="btn btn-default" id="senha" placeholder="Senha">
                </p>
                <p>
                  <input type="password" name="senha2" class="btn btn-default" id="senha" placeholder="Confirmar Senha">
                </p><br>
                <input type="submit" id="buton" class="btn btn-danger" value="Cadastrar"></input>
                <a href="index.php"> <input type="button" class="btn btn-secondary" value="Entrar"></a><br><br><br>
              </fieldset>
            </form>
          </div>
        </div>
      </div>
    </center>

  <?php
    if (isset($_POST["nome"]) ) {
      $nome = $_POST["nome"];
      $email = $_POST["email"];
      $senha = $_POST["senha"];
      $senha2 = $_POST["senha2"];

      if ($senha == $senha2) {
        $senha = md5($senha);
        include_once "conexao.php";
        $con = conecta_mysql();

        if ($con) {
          include "includes/funcoes.php";
          if (verificar_email($con,$email)) {
            $sql = "INSERT INTO usuarios (nome, email, senha)
            values('$nome', '$email', '$senha')";
            $resultado = mysqli_query($con,$sql);
            if ($resultado) {
              print "<script> alert('Usuário Inserido');</script>";
            }else {
              print "<script> alert('Erro de SQL');</script>";
            }
          }//verificar email
          else {
            print "<script> alert('O E-mail já existe!');</script>";
          }
        } //con
      } //verificar senha
      else {
        print "<script> alert('Suas senhas são diferentes!');</script>";
      }
    } //isset
  ?>
  </body>
</html>
