<?php
	session_start();
	// limpar todas as variáveis globais
 unset($_SESSION["id"]);
 unset($_SESSION["nome"]);
 unset($_SESSION["email"]);
	// depois direcionar para o arquivo index.php
	header("location:index.php");
?>
