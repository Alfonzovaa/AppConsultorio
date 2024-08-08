<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h1>Edición de Paciente</h1>

<% Paciente pac = (Paciente) request.getSession().getAttribute("pacEditar");%>

<form class="user" action="SvEditPacientes" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="cedula" name="cedula"
                    placeholder="Cédula" value="<%=pac.getCedula()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                    placeholder="Nombre" value="<%=pac.getNombre()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                    placeholder="Apellido" value="<%=pac.getApellido()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                    placeholder="Teléfono" value="<%=pac.getTelefono()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                    placeholder="Dirección" value="<%=pac.getDireccion()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fecha_nac" name="fecha_nac"
                    placeholder="Fecha de nacimiento" value="<%=pac.getFecha_nac()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="tiene_OS" name="tiene_OS"
                    placeholder="Tiene obra social?" value="<%=pac.getTiene_OS()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="tipo_sangre" name="tipo_sangre"
                    placeholder="Tipo de sangre" value="<%=pac.getTipo_sangre()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="condicion" name="condicion"
                    placeholder="Condición" value="<%=pac.getCondicion()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fecha_cita" name="fecha_cita"
                    placeholder="Fecha de la cita" value="<%=pac.getFecha_cita()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="requiereCirugia" name="requiereCirugia"
                    placeholder="Requiere cirugía?" value="<%=pac.getRequiereCirugia()%>">
            </div>
            </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Guardar modificación
            </button>
            <hr>
            </form>

<%@include file="bodyfinal.jsp"%>