<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Contacte con nosotros</title>
	<link rel="stylesheet" type="text/css" href="sass/comun/css/header.css" />
	<link rel="stylesheet" type="text/css" href="sass/comun/css/pie.css"/>
	<link rel="stylesheet" type="text/css" href="sass/contacte/css/contacte.css"/>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
    <link rel="icon" type="favicon/x-icon" href="imagenes/logo.png" />
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
                <li> <a href="Principal"> Inicio          </a> </li>
                <li> <a href="#"> Comics          </a> </li>
                <li> <a href="#"> DVD             </a> </li>
                <li> <a href="#"> Figuras         </a> </li>
                <li> <a href="#"> Sobre Nosotros  </a> </li>
                <li> <a href="#"> Blog            </a> </li>
            </ul>
        </nav>

        <div id="central">
            <!-- INFORMACIÓN Y FORMULARIO PARA CONTACTAR CON LA TIENDA EN CASO DE NECESITARLO-->
            <div class="row-cols-lg-auto mt-5 ml-5 principal">
                <div id="informacion">
                    <p class="titulo text-uppercase text-lg-center">Información tienda</p>

                    <img src="imagenes/alfiler.svg" />
                    <p id="web" class="float-lg-right">kuro-shop.com
                        <br> calle San Juan nº4
                        <br> 11500
                        <br> Cádiz (El Puerto)
                        <br> España
                    </p>
                    <div class="clearfix"></div>
                    <div id="correo">
                        <img src="imagenes/correo.svg" />
                        <p class="float-lg-right">
                            Correo:
                            <br> clienteskuro@gmail.com
                        </p>
                    </div>
                </div>

                <div class="row-cols-lg-auto float-lg-right" id="contacto">
                    <h2>Contacte con nosotros</h2>
                    <p>Contáctenos</p>

                    <form action="Contacte" method="POST">
                    

                        <div class="form-group row mt-1">
                            <label for="staticTema" class="col-sm-2 col-form-label ">Tema</label>

                            <div class="col-sm-10">
                                <select name="cliente" class="form-control form-control-select">
                                    <option value="1">Atención al cliente</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputEmail" class="col-sm-2 col-form-label">Correo electrónico</label>

                            <div class="col-sm-10">
                                <input required type="email" class="form-control" id="inputEmail" placeholder="Correo electrónico" name="correo">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputText" class="col-sm-2 col-form-label">Mensaje</label>

                            <div class="col-sm-10">
                                <textarea class="form-control" rows="3" placeholder="¿Cómo podemos ayudar?" name="mensaje"></textarea>
                            </div>
                        </div>

                        <div class="form-group row boton">
                            <input class="text-white ml-5" type="submit" value="Enviar" name="pagename"/>
                        </div>

                    </form>

                </div>


            </div>

            <!-- PIE DE PÁGINA -->
            <footer id="pie">
                <div class="layout">
                    <div class="mipie">
                        <p id="logito">KURO - SHOP</p>
                        <!-- arreglar cuando se pueda -->
                        <div class="row-cols-auto" id="chat">
                            <img class="mt-1 ml-1" src="imagenes/chatbot.svg" width="50">
                            <p id="help" class="float-lg-right"><a id="link">¿Necesitas ayuda?</a> <a id="cerrar">x</a></p>
                            <div id="subchat">
                                <div class="contenido">
                                    <div id="subcontent">
                                        <!-- parrafo del chat-->
                                        <div id="min-content">
                                            <p> ¡Hola! Soy Kuro, tu agente virtual, y estoy aquí para ayudarte.</p>
                                        </div>

                                    </div>
                                    <div id="s-content">
                                        <!-- parrafo del chat-->
                                        <div id="sb-content">
                                            <p>
                                                Al continuar, aceptas que los datos facilitados sean tratados por Kuro-shop para atender tu solicitud. Puedes ejercer tus derechos en kuro-shop@gmail.com Más info. 👉 <a class="text-warning" href="#">aquí.</a>
                                            </p>
                                        </div>

                                    </div>
                                    <div id="sr-content">
                                        <!-- parrafo del chat-->
                                        <div id="sh-content">
                                            <p>
                                                Elige la opción que más te interese :)
                                            </p>
                                        </div>
                                    </div>
                                    <!-- caja para los botones de opciones -->
                                    <div id="b-botones">
                                        <a id="closed"> <img id="close" src="imagenes/cerrar.svg" alt="abrir" /></a>
                                        <!-- primer boton -->
                                        <div id="b-contacto">
                                            <input type="submit" value="nuestro contacto" />
                                        </div>
                                        <!-- segundo boton -->
                                        <div id="b-informacion">
                                            <input type="submit" value="nuestra tienda" />
                                        </div>

                                    </div>
                                </div>

                                <textarea id="texto" placeholder="Escribe aqui tu comentario..."></textarea>
                            </div>
                            <script src="js/help.js"></script>
                            <script src="js/b-chat.js"></script>
                        </div>
                    </div>
                    <div class="mipie">
                        <h2>datos de contacto</h2>
                        <p class="text-uppercase"><a href="contacte.html">contacte con nosotros</a></p>


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



    </div>










    <!-- BOOSTRAP -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>






</body>
</html>