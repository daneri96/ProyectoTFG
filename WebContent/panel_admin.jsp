<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Panel-Administrador</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="sass/comun/css/header.css" />
    <link rel="stylesheet" type="text/css" href="sass/comun/css/pie.css" />
    <link rel="stylesheet" type="text/css" href="sass/panel_admin/css/panel_admin.css" />
    <link rel="icon" type="favicon/x-icon" href="imagenes/logo.png" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">

</head>

<body>

<div id="contenedor">
	<%@ page
			import="java.util.*, modelo.Producto ,modelo.Categoria"%>
	<%
	//productos
	Producto [] pr = null;
	pr = (Producto[]) request.getAttribute("infoProducto");
	pageContext.setAttribute("producto",pr);
	
	//categorias
	Categoria[] cat = null;
	cat =(Categoria[]) request.getAttribute("categoria");
	pageContext.setAttribute("categoria",cat);
	%>
	 <!--encabezado-->
        <header class="ml-5 mt-4 row ">
            <img src="imagenes/logo.png" alt="logo-tienda" />
            <h2 id="nombre-tienda" class="ml-2 mt-3">KURO SHOP</h2>

            <ul class="row">
                <li class="ml-2 mt-3 col-2 col-md-2">
                    <a href="sesion-usuario.html">
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
               	<li style="display:<%=session.getAttribute("admin") != null && session.getAttribute("admin").equals("admin")%>"><a href="Cerrar">Cerrar-Sesion</a></li>
            </ul>
        </nav>

        <!--SE DEBE CAMBIAR EL COLOR!!!-->
        <div id="menu">
            <!--imagenes para diferenciar los menus del panel del administrador-->
            <div class="row" id="submenu">
                <div id="pr" class="col-md-4">
                    <a href="#">
                        <h4 class="text-black text-uppercase">gestión de productos</h4>
                        <img id="imgPr" src="imagenes/sao.jpg" alt="gestiónProductos" />
                    </a>
                </div>

                <div id="blog" class="col-md-6">
                    <a href="#">
                        <h4 class="text-uppercase">gestión del blog</h4>
                        <img id="imgBlog" src="imagenes/fateAdmin.jpg" alt="gestiónBlog" />
                    </a>
                </div>

            </div>

            <div id="estadisticas" class="col-md-6">
                <a href="#">
                    <h4 class="text-uppercase">datos empresa</h4>
                    <img id="imgEst" src="imagenes/shingeky.jpg" alt="DatosEmpresa" />
                </a>
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
                    <p class="text-uppercase"><a href="contacte.html">contacte con nosotros</a></p>

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


        <!--BOOSTRAP -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</div>




</body>




</html>