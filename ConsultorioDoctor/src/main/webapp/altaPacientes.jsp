<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h1>Agregar Pacientes</h1>

<form class="user" action="SvPacientes" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="cedula" name="cedula"
                    placeholder="Cédula">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                    placeholder="Nombre">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                    placeholder="Apellido">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                    placeholder="Teléfono">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                    placeholder="Dirección">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fecha_nac" name="fecha_nac"
                    placeholder="Fecha de nacimiento">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="tiene_OS" name="tiene_OS"
                    placeholder="Tiene obra social?">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="tipo_sangre" name="tipo_sangre"
                    placeholder="Tipo de sangre">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="condicion" name="condicion"
                    placeholder="Condición">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fecha_cita" name="fecha_cita"
                    placeholder="Fecha de la cita">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="requiereCirugia" name="requiereCirugia"
                    placeholder="Requiere cirugía?">
            </div>
            </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Agregar paciente
            </button>
            <hr>
            </form>

<%@include file="bodyfinal.jsp"%>