<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h1>Edición de Usuario</h1>

<% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

<form class="user" action="SvEditUsuarios" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                       placeholder="Nombre de usuario" value="<%=usu.getNombreUsuario()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                    placeholder="Contraseña" value="<%=usu.getContrasenia()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="rol" name="rol"
                    placeholder="Rol" value="<%=usu.getRol()%>">
            </div>
            </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Guardar modificación
            </button>
            <hr>
            </form>

<%@include file="bodyfinal.jsp"%>
