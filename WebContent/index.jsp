<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kuro - Shop</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="sass/comun/css/header.css" />
    <link rel="stylesheet" type="text/css" href="sass/comun/css/pie.css"/>
    <link rel="stylesheet" type="text/css" href="sass/index/css/index.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
    <link rel="icon" type="favicon/x-icon" href="imagenes/logo.png" />
</head>
<body>
<%@ page
		import="modelo.Categoria,java.util.*, modelo.Producto "%>
	 <div id="contenedor">
<%
	Categoria[] cat = null;
	cat =(Categoria[]) request.getAttribute("categoria");
	pageContext.setAttribute("categoria",cat);
%>

        <!--encabezado-->
        <header class="ml-5 mt-4 row ">
            <a href="Principal"><img src="imagenes/logo.png" alt="logo-tienda" /></a> 
            <h2 id="nombre-tienda" class="ml-2 mt-3">KURO SHOP</h2>

            <ul class="row">
                <li class="ml-2 mt-3 col-2 col-md-2">
                    <a href="Sesion">
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
            	<c:forEach var="categorias" items="${categoria }">
            		<li><a href="Producto?id=${categorias.getId()}"> ${categorias.getNombre() }</a></li>
            	</c:forEach>
                <li> <a href="#"> Blog     </a> </li>
                <li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="PerfilUsuario">Perfil</a></li>
               	<li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="Cerrar">Cerrar-Sesion</a></li>
            </ul>
        </nav>

 <!-- PASAR TODA LA INFORMACIÓN DE ESTILOS AL CSS EN EL VS CODE -->
	<div style="margin-left:1em;" id="central">
	
			<c:choose>
		
			<c:when test="${sessionScope.inicio != null }">
				<div style="width: 10%;position: absolute;top: 11em;
					left: 3em;" class="bg-warning" id="usuario">
					<a class ="text-uppercase  ml-5 text-white"><%=session.getAttribute("inicio") %></a>
				</div>
			</c:when>
			
			<c:when test="${sessionScope.inicio == null }">
				<h3></h3>
			</c:when>
			
		</c:choose>
		
		
		
	</div>
	
	<div id="general">
		  <!-- imagenes de selección en la web -->
            <div id="images">
                <a href="#">
                    <!-- imagen se puede modificar para realizar otro tipo de presentación -->
                    <img id="boku" src="imagenes/boku.png" alt="boku no hero" />
                </a>
                <div id="carrusel" class="row-cols-lg-auto">

                    <a id="fat" href="#">
                        <img id="fate" src="imagenes/fate.jpg" alt="fate" />
                        <h3 class="text-uppercase">figuras</h3>
                    </a>

                    <a id="ble" class="col-2" href="#">
                        <img id="bleach" src="imagenes/bleach.jpg" alt="bleach" />
                        <h3 class="text-uppercase">comics</h3>
                    </a>

                    <a id="kim" class="col-2" href="#">
                        <img id="kimetsu" src="imagenes/kimetsu.jpg" alt="kimetsu" />
                        <h3 class="text-uppercase">DVD Y BLU RAY</h3>
                    </a>


                </div>
                
                
               
                
                
                
            </div>

            <!--CAJA PARA EL TITULO DE LAS FIGURAS-->
            
            <div class="color-figuras">
                <h3 class="text-uppercase text-dark ml-5 mt-5">figuras</h3>
            </div>

            <!-- FIGURAS (PARTE A RETOCAR CON PROGRAMACIÓN)-->
            <div class="row" id="figuras">

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/fate.jpeg" alt="fate-stay" title="fate-stay night" />
                    </a>
                    <h4>Figura Fate-stay</h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>
                
                
           

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/kimetsu-figura.jpg" alt="kimetsu" title="kimetsu no yaiba" />
                    </a>
                    <h4>Figura Kimetsu </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>
                

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/figura-shingeky.jpg" alt="shingeky" title="shingeky" />
                    </a>
                    <h4>Figura Shingeky </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>


                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/figura-bleac.jpg" alt="bleach" title="bleach" />
                    </a>
                    <h4>Figura Bleach </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>


            </div>

            <!-- CAJA PARA LOS COMICS -->
            <div class="color-comics">
                <h3 class="text-uppercase text-dark ml-5 mt-5">comics</h3>
            </div>

            <!--CAJA PARA LOS COMICS-->
            <div class="row" id="comics">

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/nisekoi-02.jpg" alt="nisekoi" title="nisekoi" />
                    </a>
                    <h4>Nisekoi tomo-2</h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/bleach-20.png" alt="bleach" title="bleach" />
                    </a>
                    <h4>Bleach tomo - 20 </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/boku-1.jpg" alt="boku no hero" title="boku no hero n2" />
                    </a>
                    <h4>Boku no hero #1 </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/haruhi-14.png" alt="haruhi" title="haruhi #1" />
                    </a>
                    <h4>Haruhi #1 </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

            </div>

            <!--CAJA PARA EL TITULO DE DVD Y BLU RAY-->
            <div class="color-dvd">
                <h3 class="text-uppercase text-dark ml-5 mt-5">dvd</h3>
            </div>

            <div class="row" id="dvd">

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/black-clover.jpg" alt="black clover" title="black clover" />
                    </a>
                    <h4>Black clover 1</h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/dvd-digimon.jpg" alt="digimon" title="digimon pelicula" />
                    </a>
                    <h4>Digimon adventure </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/no game.jpg" alt="no game no life" title="no game no life" />
                    </a>
                    <h4>No game no life </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

                <div class="producto col-3">
                    <a href="#">
                        <img src="imagenes/re zero.jpg" alt="re zero" title="re zero" />
                    </a>
                    <h4>Re zero </h4>
                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
                </div>

            </div>
            
     

<!-- aqui acabqa -->
            </div>




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
                   <c:forEach var="categorias" items="${categoria }">
                		<p class="text-uppercase"><a href="Producto?id=${categorias.getId()}">${categorias.getNombre() }</a></p>
                   </c:forEach>

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