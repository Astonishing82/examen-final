<?php
include_once ($_SERVER['DOCUMENT_ROOT'].'/examen/routes.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mensualidad</title>
    <?php include_once (ROOT_PATH . 'header.php') ?>
</head>
<body>
<?php
        require_once('../navbar/navbar.php');      
    ?>
<header>
</header> 
<main>
  <div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-md-4 g-4">
        <div class="col">
          <div class="card shadow-sm">
          <img src="\examen\assets\images\imagen3.png">

            <div class="card-body">
              <h5 class="card-tittle">1 Mes</h5>
              <p class="card-text"> ₲ 120.000</p>
              <div class="d-flex justify-content-between align-items-center">
                
                <div class="btn-group">
                  <a href="" class= "btn btn-primary">Detalles</a>
                  
                </div>
                <a href="" class= "btn btn-success">Agregar</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
          <img src="\examen\assets\images\imagen3.png">

            <div class="card-body">
              <h5 class="card-tittle">1 Mes + Entrenamiento Personalizado</h5>
              <p class="card-text"> ₲ 250.000</p>
              <div class="d-flex justify-content-between align-items-center">
                
                <div class="btn-group">
                  <a href="" class= "btn btn-primary">Detalles</a>
                  
                </div>
                <a href="" class= "btn btn-success">Agregar</a>
              </div>
            </div>
          </div>
        </div>
</main>
</body>
  <?php include_once (ROOT_PATH . 'header.php') ?>

</html>