<%-- 
    Document   : index
    Created on : 08-dic-2020, 9:48:12
    Author     : Cristina Herrojo García
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty sessionScope.admin}">
    <c:redirect url="../../index.jsp"/>  
</c:if>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PETS OR FRIENDS?</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="../../recursos/bootstrap/bootstrap.min.js">
        <link rel="stylesheet" href="../../recursos/css/layout/headerStyle.css">
        <link rel="stylesheet" href="../../recursos/css/layout/footerStyle.css">
        <link rel="stylesheet" href="../../recursos/css/layout/dropdownStyle.css">
        <link rel="stylesheet" href="../../recursos/css/users/style.css">
        <link href="https://fonts.googleapis.com/css?family=Copse&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="../../recursos/imagenes/header/logo.png" />
    </head>
    <body class="d-flex flex-column min-vh-100">
        <%@ include file="../layout/adminLayout/header.jsp" %> 

        <div id="general" class="flex-fill">
            <div id="menuDesplegable" class="bg-light">
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="veterinaryCenters/index.jsp">Administrar centros veterinarios</a></li>
                    <li><a href="shelter/index.jsp">Administrar protectoras</a></li>
                    <li><a href="abandonedAnimals/index.jsp">Administrar animales abandonados</a></li>
                    <li><a href="users/index.jsp">Administrar usuarios</a></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>

                    <li><a href="../closeSessions/removeAdmin.jsp">Salir</a><i class="fas fa-sign-out-alt ml-2"></i></li>
                </ul>
            </div>
            <div>
                <h1 class="text-center">¿Qué desea hacer?</h1>
                <ol class="list-unstyled p-3">
                    <li class="mb-3">
                        <a href="veterinaryCenters/index.jsp" class="btn btn-block btn-lg btn-primary w-75 m-auto" role="button">Administrar centros veterinarios</a>
                    </li>
                    <li class="mb-3">
                        <a href="shelter/index.jsp" class="btn btn-block btn-lg btn-primary w-75 m-auto" role="button">Administrar protectoras</a>
                    </li>
                    <li class="mb-3">
                        <a href="abandonedAnimals/index.jsp" class="btn btn-block btn-lg btn-primary w-75 m-auto" role="button">Administrar animales abandonados</a>
                    </li>
                    <li class="mb-3">
                        <a href="users/index.jsp" class="btn btn-block btn-lg btn-primary w-75 m-auto" role="button">Administrar usuarios</a>
                    </li>
                </ol>
            </div>
        </div>

        <%@ include file="../layout/footer.jsp" %> 

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </body>
</html>
