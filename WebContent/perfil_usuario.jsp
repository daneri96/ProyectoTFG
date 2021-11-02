<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<title>Perfil usuario</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="sass/comun/css/header.css" />
    <link rel="stylesheet" type="text/css" href="sass/comun/css/pie.css" />
    <link rel="stylesheet" type="text/css" href="sass/perfil-usuario/css/perfil-usuario.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
    <link rel="icon" type="favicon/x-icon" href="imagenes/logo.png" />

</head>
<body>
   <%@ page
		import="modelo.Usuario,java.util.* "%>
  <div id="contenedor">

        <!--encabezado-->
        <header class="ml-5 mt-4 row ">
            <img src="imagenes/logo.png" alt="logo-tienda" />
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
                 
                <li> <a href="#"> Comics          </a> </li>
                <li> <a href="#"> DVD             </a> </li>
                <li> <a href="#"> Figuras         </a> </li>
                <li> <a href="#"> Blog            </a> </li>
                <li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="PerfilUsuario">Perfil</a></li>
               	<li style="display:<%=(session.getAttribute("admin") != null) ? "Block" : "None"%>"><a href="Cerrar">Cerrar-Sesion</a></li>
            </ul>
        </nav>


        <!--DATOS DEL PERFIL DEL USUARIO -->
        <div id="central">
            <h3 class="mt-5 text-center text-uppercase">perfil de usuario</h3>

            <div id="formularios" class="row">
                <!-- DATOS DEL PERFIL DEL USUARIO -->
                <%
                Usuario usu =(Usuario)request.getSession().getAttribute("sesion");
                %>
                <!--  
                <c:if test="${sessionScope.modificado !=null }">
                
                	<h4 class="text-succes"><%=session.getAttribute("modificado") %></h4>
                
                </c:if>
                
                -->
                
                <form action="PerfilUsuario" id="datos" class="col-sm-3" method="POST">
                    <p>Nombre:</p>
                    <input type="text" name="nombre" value="<%=usu.getNombre() %>" />
                    <p class="mt-3">Apellidos:</p>
                    <input type="text" name="apellidos" value="<%=usu.getApellidos()%>"/>
                    <p class="mt-3">Correo:</p>
                    <input type="text" name="correo" value="<%=usu.getEmail()%>"/>
                    <p class="mt-3">Direccion:</p>
                    <input type="text" name="direccion" value="<%=usu.getDireccion()%>"/>
                    
                    <!--HAY QUE CAMBIAR EL COLOR DEL BOTON CUANDO PASA POR ENCIMA-->
                    <input class="text-white ml-5 " type="submit" value="Modificar" name="pagename"/>
                </form>


                 <form id="imagen-perfil" class="col-sm-3"  action="subir?codigo=<%=usu.getId() %>" method="post" enctype="multipart/form-data">
                    <h4>Imagen de usuario</h4>
                    <img src="bajarUsuarios?codigo=<%=usu.getId() %>" />
                    <input type=file size=60 name="file" value="Examinar"><br><br>
                    <input class="text-white ml-4" type="submit" value="subir" />
                </form>

            </div>

            <!--PIE DE PÁGINA-->
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


</body>


</html>