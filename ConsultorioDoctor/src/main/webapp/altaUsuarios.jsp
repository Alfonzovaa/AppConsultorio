<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h1>Agregar usuario</h1>

<form class="user" action="SvUsuarios" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                    placeholder="Nombre de usuario">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                    placeholder="Contraseña">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="rol" name="rol"
                    placeholder="Rol">
            </div>
            </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Agregar usuario
            </button>
            <hr>
            </form>

<%@include file="bodyfinal.jsp"%>
