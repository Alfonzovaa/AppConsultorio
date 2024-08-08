<%@page import="logica.Cirugia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h1>Edición de Cirugía</h1>

<% Cirugia ciru = (Cirugia) request.getSession().getAttribute("ciruEditar");%>

<form class="user" action="SvEditCirugias" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="paciente" name="paciente"
                    placeholder="Id de paciente"value="<%=ciru.getPaciente()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="tipo" name="tipo"
                    placeholder="Tipo" value="<%=ciru.getTipo()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fecha_ciru" name="fecha_ciru"
                    placeholder="Fecha de cirugía" value="<%=ciru.getFecha_ciru()%>">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="hora_ciru" name="hora_ciru"
                    placeholder="Hora de cirugía" value="<%=ciru.getHora_ciru()%>">
            </div>
            </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Guardar modificación
            </button>
            <hr>
            </form>

<%@include file="bodyfinal.jsp"%>