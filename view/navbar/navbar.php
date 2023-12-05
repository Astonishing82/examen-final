<?php
include_once ($_SERVER['DOCUMENT_ROOT'].'/examen/routes.php');
?>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
   <a class="navbar-brand" href="<?=PROJECT_PATH?>"> 
    <img src="\examen\assets\images\La Parca GYM blanco.png" width="30" height="30" alt="">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="<?=PROJECT_PATH?>view/productos/index.php">Productos </span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=PROJECT_PATH?>view/mensualidad/index.php">Mensualidad</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=PROJECT_PATH?>view/carrito/index.php">Carrito</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?=PROJECT_PATH?>view\usuario\logout.php">Salir</a>
      </li>
    </ul>
  </div>
</nav>  