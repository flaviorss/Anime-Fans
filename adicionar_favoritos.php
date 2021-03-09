<?php
session_start();
if ( !isset($_SESSION["id"]) ){
  header("location:index.php?erro=2");
}
 ?>
<?php
include_once "conexao.php";
$con = conecta_mysql();
$id_usuario = $_SESSION['id'];
if (isset($_GET['id_ep_anime'])) {
  $id_ep_anime = $_GET['id_ep_anime'];
  $id_anime = $_GET['id_anime'];
  $sql = "INSERT INTO favoritos (id_ep_anime, id_usuario)
  values ('$id_ep_anime','$id_usuario')";
  $resultado = mysqli_query($con,$sql);
  if ($id_anime == 7 ) { header("location:SDBH.php"); }
  if ($id_anime == 6 ) { header("location:super_onze.php"); }
  if ($id_anime == 5 ) { header("location:pokemon_xyz.php"); }
  if ($id_anime == 4 ) { header("location:avatar.php"); }
  if ($id_anime == 3 ) { header("location:naruto_shi.php"); }
  if ($id_anime == 2 ) { header("location:DBS.php"); }
  if ($id_anime == 1 ) { header("location:naruto.php"); }
  if ($id_anime == 0 ) { header("location:favoritos.php"); }
}
 ?>
