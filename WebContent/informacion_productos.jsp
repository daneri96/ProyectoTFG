<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Productos</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="sass/comun/css/header.css" />
	 <link rel="stylesheet" type="text/css" href="sass/comun/css/pie.css" />
    <link rel="stylesheet" type="text/css" href="sass/index/css/index.css" />
    <link rel="stylesheet" type="text/css" href="sass/info-productos/css/info-productos.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
    <link rel="icon" type="favicon/x-icon" href="imagenes/logo.png" />
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
                <li> <a href="#"> Blog  </a> </li>
                <li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="PerfilUsuario">Perfil</a></li>
               	<li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="Cerrar">Cerrar-Sesion</a></li>
            </ul>
        </nav>
        
        
        
        <div id="general">
	        
	        <div id="producto">
	        	<c:forEach var="product" items="${producto }">
	        		<img src="bajar?codigo=${product.getId() }" alt="${product.getNombre() }" />
	                <div id="info-p">
	                    <h4 class="text-uppercase text-center"> ${product.getNombre() }</h4>
	                    <h4 class="ml-3">Descripción</h4>
	
	                    <p class="ml-3">
	                        Lorem ipsum dol nunc tempus aliquet. Duis eleifend viverra lectus ut molestie. urabitur porttitor ex a dui finibus tempus. Vivamus mollis mi sit amet ante posuere placerat ac nec magna. Donec consectetur, libero in tempor vehicula, lectus est laoreet
	                        metus, ut consectetur est purus at erat. Maecenas pharetra posuere dolor vel lacinia. Maecenas eget est mi. Quisque at tellus vitae lacus lobortis convallis. Donec nec dapibus nulla. Integer imperdiet aliquam mauris, vitae convallis
	                        purus.Maecenas eget est mi. Quisque at tellus vitae lacus lobortis convallis. Donec nec dapibus nulla. Integer imperdiet aliquam mauris, vitae convallis purus.
	                    </p>
	                    <p class="ml-3">Precio : <b>45.6 €</b></p>
	                    <button class="btn btn-danger ml-3"><input class="text-uppercase text-white" type="submit" value="Añadir a la cesta"/></button>
	                    <!-- QUEDA PENDIENTE PONER UNA FICHA TECNICA QUE PUEDA HACER MEJORAR LA APLICACIÓN -->
	                </div>
	        	</c:forEach>
	        	
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



</div>







</body>
</html>