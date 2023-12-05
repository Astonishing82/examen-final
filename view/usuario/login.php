<?php
  include_once ($_SERVER['DOCUMENT_ROOT'].'/examen/routes.php');
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ingrese su Usuario</title>
    <?php include_once (ROOT_PATH . 'header.php') ?>
</head>
<body>
<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="../../assets/images/La Parca GYM.png"
                    style="width: 185px;" alt="logo">
                  <h4 class="mt-1 mb-5 pb-1">Te damos la bienvenida en LA PARCA GYM</h4>
                </div>
                <form id="formLogin" action="" method="post" autocomplete="off">
                  <p>Unete a esta gran familia</p>

                  <div class="form-outline mb-4">
                  <label class="form-label" for="usuario">Usuario</label>
                    <input type="usuario" name ="usuario"id="usuario" class="form-control"
                      placeholder="Ingrese su Usuario" />
                    
                  </div>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="clave">Contraseña</label>
                    <input type="password" name= "clave" id="clave" class="form-control" 
                        placeholder="Ingrese una contraseña" />
                    
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <button type="submit" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" >Ingresar
                      </button>
                  </div>

                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Todavía no tienes una cuenta? </p>
                    <button type="button" class="btn btn-outline-danger">Crea Uno</button>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                            <div class="carousel">
                    <div id="carouselDestacados" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="../../assets/images/1.png" alt="Producto 1">
                            </div>
                            <div class="carousel-item">
                                <img src="../../assets/images/2.png" alt="Producto 2">
                            </div>
                            <div class="carousel-item">
                                <img src="../../assets/images/3.png" alt="Producto 3">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
    <?php include_once (ROOT_PATH . 'footer.php') ?>
    <?php include_once (VIEW_PATH .'carousel/scriptcarousel.php') ?>
</html>