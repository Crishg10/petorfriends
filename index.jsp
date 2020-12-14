<%-- 
    Document   : index
    Created on : 07-sep-2020, 20:11:23
    Author     : Cristina Herrojo García
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="login" class="beans.ModeloLogin" scope="page"/>

<c:remove var="usuarioConectado"/>

<c:if test="${!empty param.incUsuario}">
    <c:set var="esUsuario" value="${login.comprobarSiEsUsuario(param.nombreUsuario)}"/>
    <c:if test="${esUsuario}">
        <c:set var="esAdmin" value="${login.comprobarSiEsAdmin(param.nombreUsuario, param.contrasenia)}"/>
        <c:if test="${esAdmin}">
            <c:set var="admin" value="${login.loginClientes(param.nombreUsuario, param.contrasenia)}" scope="session"/>
            <c:redirect url="backend/admin/index.jsp" />
        </c:if>
        <c:if test="${!esAdmin}">
            <c:set var="usuario" value="${login.loginClientes(param.nombreUsuario, param.contrasenia)}"/>
            <c:if test="${usuario != null}">
                <c:set var="usuarioConectado" value="${usuario}" scope="session"/>
                <c:redirect url="backend/users/index.jsp" />
            </c:if>
            <c:if test="${usuario == null}">
                <c:set var="error" value="Datos erróneos"/>
            </c:if>
        </c:if>
    </c:if>
    <c:if test="${!esUsuario}">
        <c:set var="error" value="No existe el usuario"/>
    </c:if>
</c:if>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PETS OR FRIENDS?</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="recursos/bootstrap/bootstrap.min.js">
        <link rel="stylesheet" href="recursos/css/layout/footerStyle.css">
        <link rel="stylesheet" href="recursos/css/layout/headerStyle.css">
        <link rel="stylesheet" href="recursos/css/style.css">
        <link href="https://fonts.googleapis.com/css?family=Copse&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="icon" type="image/png" href="recursos/imagenes/header/logo.png" />
    </head>
    <body class="d-flex flex-column min-vh-100">
        <%@ include file="backend/layout/header.jsp" %> 

        <section class="p-5 w-100 d-flex flex-wrap justify-content-center">
            <h1 class="w-100 text-center text-dark display-1">PETS OR FRIENDS?</h1>
            <div class="border border-dark d-flex w-75 mt-5 p-5 schattig">
                <div class="d-flex align-items-center w-50">
                    <img src="recursos/imagenes/index/index1.jpg" alt="Foto foca" class="w-100 border border-dark p-3 img"/>
                </div>
                <div class="container w-50 ml-5 align-self-center">
                    <h1 class="text-center w-100 mb-5">¿Quiénes somos?</h1>
                    <p>
                        Somos una cooperativa que simplemente quieren poder traer un poco de 
                        felicidad a los animales de este mundo.
                        Esta web la forman todos los centros veterinarios, protectoras y usuarios
                        que quieran formar parte de esta familia y, de esta forma, poder ayudar 
                        de una forma más eficiente y rápida a los animales que necesiten nuestra
                        ayuda.
                    </p>
                    <p>
                        Nuestro objetivo es poder unir a todo el mundo, ya sean veterinarios, protectoras, casas de acogidas,
                        particulares, etc. 
                        A través de esta web, unimos a todas esas personas para poder llegar a ayudar al mayor número de animales que necesitas
                        nuestra ayuda y, además, aquellos que se encuentren en un estado más grave poder ofrecerles una ayuda más inmediata.
                    </p>
                </div>
            </div>
            <div class="d-flex w-100 mt-5 justify-content-between flex-wrap">
                <div class="container border border-dark p-3 schattig" style="width: 45%;">
                    <div>
                        <h1 class="text-center w-100 mb-5">Centros veterinarios</h1>
                        <p class="mt-4">
                        <ul>
                            <li>
                                Añadir facturas de todas las operaciones, tratamientos, etc.
                            </li>
                            <li>
                                Cooperar con protectoras y particulares antes casos graves.
                            </li>
                            <li>
                                Colaborar con protectoras de toda España.
                            </li>
                            <li>
                                Etc.
                            </li>
                        </ul>
                        </p>
                    </div>
                    <div class="d-flex justify-content-end w-100">
                        <img src="recursos/imagenes/index/veterinarios.jpg" alt="Foto veterinarios" class="w-50 border border-dark p-3 img mr-5"/>
                    </div>
                </div>
                <div class="container border border-dark p-3 schattig" style="width: 45%;">
                    <div>
                        <h1 class="text-center w-100 mb-5">Protectoras</h1>
                        <p class="mt-4">
                        <ul>
                            <li>
                                Publicar todos los animales que tengan tanto para adoptar como para acoger y, así, tener 
                                un mayor alcance
                            </li>
                            <li>
                                Publicar las facturas reales que conllevan las operaciones, tratamientos, vacunación... Cuando 
                                se recojen a los animales malheridos.
                            </li>
                            <li>
                                Ayudar, a través de un foro, a particulares ante casos de urgencias.
                            </li>
                            <li>
                                Etc.
                            </li>
                        </ul>
                        </p>
                    </div>
                    <div class="d-flex justify-content-end w-100">
                        <img src="recursos/imagenes/index/protectoras.jpg" alt="Foto protectora" class="w-50 border border-dark p-3 img mr-5"/>
                    </div>
                </div>
                <div class="container border border-dark p-3 w-50 mt-5 schattig">
                    <div>
                        <h1 class="text-center w-100 mb-5">Usuarios</h1>
                        <p class="mt-4">
                        <ul>
                            <li>
                                Buscar centros veterinarios por ciudad, especie que atienden...
                            </li>
                            <li>
                                Posibilidad de adoptar a animales de cualquier protectora directamente desde la web.
                            </li>
                            <li>
                                Poder añadir animales que se encuentran en la calle y, con ello, poder buscarles un hogar.
                            </li>
                            <li>
                                Etc.
                            </li>
                        </ul>
                        </p>
                    </div>
                    <div class="d-flex justify-content-end w-100">
                        <img src="recursos/imagenes/index/perros.jpg" alt="Foto perros" class="border border-dark p-3 img mr-3" style="width: 40%;"/>
                        <img src="recursos/imagenes/index/usuarios.jpg" alt="Foto perros" class="border border-dark p-3 img" style="width: 40%;"/>
                    </div>
                </div>
            </div>
        </section>

        <%@ include file="backend/layout/footer.jsp" %> 

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </body>
</html>
