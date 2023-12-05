<?php
include_once ($_SERVER['DOCUMENT_ROOT'].'/examen/routes.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
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
          <img src="\examen\assets\images\Producto3.png">

            <div class="card-body">
              <h5 class="card-tittle">Proteina 100% Whey Gold Standard </h5>
              <p class="card-text"> ₲ 900000</p>
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
          <img src="\examen\assets\images\Producto4.png">

            <div class="card-body">
              <h5 class="card-tittle">Creatina LanderFit Monohidratada </h5>
              <p class="card-text"> ₲ 250000</p>
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
          <img src="\examen\assets\images\Producto5.png">

            <div class="card-body">
              <h5 class="card-tittle">Trembolona Acetato</h5>
              <p class="card-text"> ₲ 150000</p>
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
          <img src="\examen\assets\images\Producto3.png">

            <div class="card-body">
              <h5 class="card-tittle">Proteina</h5>
              <p class="card-text">₲ 100000</p>
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
          <img src="\examen\assets\images\Producto3.png">

            <div class="card-body">
              <h5 class="card-tittle">Proteina</h5>
              <p class="card-text">₲ 100000</p>
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
          <img src="\examen\assets\images\Producto3.png">

            <div class="card-body">
              <h5 class="card-tittle">Proteina</h5>
              <p class="card-text">₲ 100000</p>
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