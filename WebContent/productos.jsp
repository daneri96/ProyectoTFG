<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
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
		import="modelo.Categoria,java.util.* , modelo.Producto "%>
	 <div id="contenedor">	
<%
Categoria[] cat = null;
cat =(Categoria[]) request.getAttribute("categoria");
pageContext.setAttribute("categoria",cat);

//titulo de las categorias
Categoria[] cate = null;
cate =(Categoria[]) request.getAttribute("tipoCategoria");
pageContext.setAttribute("titulo",cate);

Producto[] pr = null;
pr = (Producto[]) request.getAttribute("producto");
pageContext.setAttribute("producto",pr);
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
                <li><a href="#"> Blog    </a> </li>
                <li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="PerfilUsuario">Perfil</a></li>
               	<li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="Cerrar">Cerrar-Sesion</a></li>
            </ul>
        </nav>
	 
	 
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
		<c:forEach var="title" items="${titulo }">
			<h2 class="text-center mt-5">${title.getNombre() }</h2>
		</c:forEach>
		<div class="row">
			<c:forEach var="product" items="${producto }">
			
					<div class="producto col-3">
		                    <a href="InfoProducto?id=${product.getId() }">
		                        <img src="bajar?codigo=${product.getId() }" alt="${product.getNombre() }" title="${product.getNombre() }" />
		                    </a>
		                    <h4>${product.getNombre() }</h4>
		                    <input class="text-white btn-danger p-2" type="submit" value="Añadir a la cesta" />
	                </div>
			
			</c:forEach>
		</div>
		
	</div>
	 
	 
	 
	 </div>



</body>
</html>