<?php

function verificar_email($con,$email){
  $sql = "SELECT email FROM usuarios
  WHERE email='$email'";
  $resultado = mysqli_query($con,$sql);
  $usuario = mysqli_fetch_assoc($resultado);
  // print_r($usuario);
  if(isset($usuario["email"])) {
    // print "Email encontrado";
    return false;
  }
  else {
    // print "Email não encontrado";
    return true;
  }
};

 ?>
 <?php function contar_comentarios($con,$id_anime_id){
   $sql = "SELECT * FROM comentarios where id_anime = $id_anime_id";
   $resultado = mysqli_query($con,$sql);
   if ($resultado) {
     $contar = array();
     while ($linha = mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
       $contar[] = $linha;
   }
 }
 return $contar;
}

  ?>
<?php
function verificar_favoritos($con,$id_usuario,$id_anime,$idd_anime){
  $sql = "SELECT * FROM favoritos
  where id_usuario=$id_usuario and id_ep_anime=$id_anime";
  $resultado = mysqli_query($con,$sql);
  $favi = mysqli_fetch_assoc($resultado);
  if ($favi) {
      print "<span class='es'>
              <a href='remover_favoritos.php?id_ep_anime=$id_anime&id_anime=$idd_anime'> <img src='imagens/img28.jpeg' width='25px'></a>
            </span>";
  }
  else {
    print "<span class='es'>
            <a href='adicionar_favoritos.php?id_ep_anime=$id_anime&id_anime=$idd_anime'><img src='imagens/img29.png' width='25px'></a>
          </span>";
  }
}

 ?>
 <?php
function contar_favoritos($con,$id_usuario){
  $sql = "SELECT * FROM favoritos where id_usuario=$id_usuario";
  $resultado = mysqli_query($con, $sql);
  if ($resultado) {
    $contar = array();
    while ($linha = mysqli_fetch_array($resultado,MYSQLI_ASSOC)){
      $contar[] = $linha;
    }
  }
  return $contar;
}
  ?>

<?php function mostrar_comentarios($con,$id_anime_id){?>
  <?php
    $sql = "SELECT nome, email, comentario, date_format(data_comentario, '%d %b %Y, %T') as data_formatada
    FROM usuarios
    INNER JOIN comentarios
    ON usuarios.id = comentarios.id_usuario
    WHERE id_anime = $id_anime_id";
    $resultado = mysqli_query($con,$sql);
    if ($resultado) {
      $comen = array();
      while ($linha = mysqli_fetch_array($resultado)) {
        $comen[] = $linha;
      }
    }
  ?>

    <?php foreach ($comen as $coment) { ?> <br>
      <div class="hr">
        <br>
        <?php if($id_anime_id == 1 ) { ?> <img src='imagens/img51.png' width='50px' class='igg' id="ph_com"> <?php } ?>
        <?php if($id_anime_id == 2 ) { ?> <img src='imagens/img50.png' width='50px' class='igg' id="ph_com"> <?php } ?>
        <?php if($id_anime_id == 3 ) { ?> <img src='imagens/img3.png' width='50px' class='igg' id="ph_com"> <?php } ?>
        <?php if($id_anime_id == 4 ) { ?> <img src='imagens/img56.png' width='50px' class='igg' id="ph_com"> <?php } ?>
        <?php if($id_anime_id == 5 ) { ?> <img src='imagens/img55.png' width='50px' class='igg' id="ph_com"> <?php } ?>
        <?php if($id_anime_id == 6 ) { ?> <img src='imagens/img54.png' width='50px' class='igg' id="ph_com"> <?php } ?>
        <?php if($id_anime_id == 7 ) { ?> <img src='imagens/img52.png' width='50px' class='igg' id="ph_com"> <?php } ?>
     <div class="nome"><?php print $coment["nome"]."<br> "; ?></div>
     <div class="data"><?php print $coment["data_formatada"]."<br>"; ?></div>
     <div class="comentario"> <?php print $coment["comentario"]; ?> </div> </div>
    <?php } ?> <br> <br>


<?php } ?>
