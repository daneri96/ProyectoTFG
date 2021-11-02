<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="sass/comun/css/header.css" />
    <link rel="stylesheet" type="text/css" href="sass/comun/css/pie.css"/>
    <link rel="stylesheet" type="text/css" href="sass/index/css/index.css"/>
    <link rel="stylesheet" type="text/css" href="sass/sesion-usuario/css/sesion.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
    <link rel="icon" type="favicon/x-icon" href="imagenes/logo.png" />
<title>Inicio sesion</title>
</head>
<body>
 <div id="contenedor">

        <!--encabezado-->
        <header class="ml-5 mt-4 row ">
              <a href="Principal"><img src="imagenes/logo.png" alt="logo-tienda" /></a> 
            <h2 id="nombre-tienda" class="ml-2 mt-3">KURO SHOP</h2>

            <ul class="row">
                <li class="ml-2 mt-3 col-2 col-md-2">
                    <a href="#">
                        <img id="sesion" src="imagenes/usuario.png" alt="iniciar-sesion" title="iniciar-sesion" />
                    </a>
                </li>
                <script src="./js/efectoImagen.js"></script>
                <li class="ml-2 mt-3 col-2 col-md-2">
                    <a href="#">
                        <img src="imagenes/carrito.svg" />
                    </a>
                </li>
            </ul>
        </header>

        <nav class="row mt-4 " id="menu">
            <ul>
                 
                <li> <a href="#"> Comics          </a> </li>
                <li> <a href="#"> DVD             </a> </li>
                <li> <a href="#"> Figuras         </a> </li>
                <li> <a href="#"> Blog            </a> </li>
                <li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="#">Perfil</a></li>
               	<li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="Cerrar">Cerrar-Sesion</a></li>
            </ul>
        </nav>



        <div id="central">
            <h2 class="text-xl-center text-uppercase mt-lg-5">iniciar sesión con su cuenta</h2>
            <!-- FORMULARIO DE REGISTRO -->

            <form action="#" method="POST">
                <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 col-form-label">Correo electrónico</label>
                    <div class="col-sm-10">
                        <input required type="email" class="form-control" id="inputEmail" placeholder="Correo electrónico" name="correo">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword" class="col-sm-2 col-form-label">Contraseña</label>
                    <div class="col-sm-10">
                        <input required type="password" class="form-control" id="inputPassword" placeholder="Contraseña" name="clave">
                    </div>
                </div>
                <div class="form-group row">
                    <input class="text-white ml-5" type="submit" value="INICIAR SESIÓN"  name="pagename"/>
                </div>
                <div class="form-group row">
                    <a style="margin-left:8.5em;" class=" text-danger text-uppercase" href="#">¿Olvidó su contraseña?</a>
                </div>
            </form>
            <!-- script de validaciones -->
            <script src="js/validaciones.js"></script>
            <button id="reg" class="btn btn-dark"><a class="text-white text-uppercase" href="Registro">¿no tiene una cuenta? cree una aquí</a></button>




        </div>
        
         <!-- PIE DE PÁGINA -->
        <footer id="pie">
            <div class="layout">
                <div class="mipie">
                    <p id="logito">KURO - SHOP</p>

                </div>
                <div class="mipie">
                    <h2>datos de contacto</h2>
                    <p class="text-uppercase"><a href="#">necesitas ayuda</a></p>
                    <p class="text-uppercase"><a href="Contacte">contacte con nosotros</a></p>

                </div>
                <div class="mipie">
                    <h2>novedades</h2>
                    <p class="text-uppercase"><a href="#">comics</a></p>
                    <p class="text-uppercase"><a href="#">figuras</a></p>
                    <p class="text-uppercase"><a href="#">posters</a></p>
                    <p class="text-uppercase"><a href="#">dvd</a></p>

                </div>
                <div class="mipie">
                    <h2>Información</h2>
                    <p class="text-uppercase"><a href="../html/Newsletter/newsletter.html">Newsletter</a></p>
                    <p class="text-uppercase"><a href="../html/nosotros/nosotros.html">Sobre nosotros</a></p>
                </div>
            </div>

        </footer>

    </div>






    <!-- BOOSTRAP -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>