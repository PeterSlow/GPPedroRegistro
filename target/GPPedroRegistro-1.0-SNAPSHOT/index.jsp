<%-- 
    Document   : index
    Created on : 19-may-2022, 21:01:05
    Author     : Sofia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registro de usuarios</title>
        <!-- Aquí declaramos las variables que usaremos con ámbito de aplicación, es decir, no tendré que volver a declararla, sólo usarla -->
        <%-- <c:url var="comienzo" value="/JSP/peticionDigitos.jsp" /> --%>
        <c:url var="estilo" value="/CSS/estilos.css" scope="application" />
        <c:url var="normalize" value="/CSS/normalize.css" scope="application" />
        <c:url var="bootstrap" value="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" scope="application" />
        <c:url var="contexto" value="${pageContext.request.contextPath}" scope="application" />

        <jsp:include page="/INC/metas.inc"/> 
        <!-- Usamos las variables creadas, esto es lo que pondremos en el resto de jsp o html de esta aplicación donde se requiera -->
        <link href="${bootstrap}" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${applicationScope.estilo}" /> 
        <link rel="stylesheet" type="text/css" href="${normalize}" /> 
        
    </head>
    <body>
        <div class="container-fluid">
            <!--HEADER--> 
            <jsp:include page="/INC/cabecera.inc"/>         
            
            <!-- MAIN -->
            <div id="main" class="row">
                <div class="col-12 col-md-5">
                    <!-- <input type="hidden" name="primeraEntrada" value="true"> -->
                    <h2>Acceso a la aplicaci&oacute;n</h2><br>
                    <form action="OpcionesIniciales" method="post"> <!-- Es mejor poner rutas completas por problemas de redireccionamiento al ir y venir de otro jsp -->  
                        <div class="row">
                            <div class="col-12 datos datosPersonales">
                                <c:catch var="errorTexto">${error}</c:catch>
                                <c:if test="${error}!=null">
                                    <c:out value="${error}"/>
                                </c:if>
                                <label for="user" class="campo">Usuario:</label>     
                                <input type="text" id="user" name="usuario" placeholder="Ej. miIdentificacion" class="inputCampo" value ="${cookie.cookieUserRecordar.value}"> 
                                <br> 
                                <label for="pass" class="campo">Contrase&ntilde;a:</label>
                                <input type="password" id="pass" name="password" placeholder="Ej. miPassword" class="inputCampo">
                                <br>                       
                                <label class="opcionesLabel"><input type="checkbox" name="recordar" value="Recordar usuario">  Recordar usuario</label>
                            </div>
                                
                        </div>
                        
                        <br> 
                        <input type="submit" value="Entrar" name="entrar" class="boton">
                        <input type="submit" value="Nuevo usuario" name="nuevoUsuario" class="boton">
                        <input type="reset" value="Limpiar" name="limpiar" class="boton">
                    </form> <!-- -->
                </div> 
            </div><!-- fin main -->
            
           <!--FOOTER  y SCRIPTS--> 
            <jsp:include page="/INC/pie.inc"/> 
    </body>
</html>
