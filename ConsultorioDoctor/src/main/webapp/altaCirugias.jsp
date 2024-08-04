<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h1>Agregar Cirugías</h1>

<form class="user" action="SvCirugias" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="paciente" name="paciente"
                    placeholder="Id de paciente">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="tipo" name="tipo"
                    placeholder="Tipo">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="fecha_ciru" name="fecha_ciru"
                    placeholder="Fecha de cirugía">
            </div>
            <div class="col-sm-6 mb-3">
                <input type="text" class="form-control form-control-user" id="hora_ciru" name="hora_ciru"
                    placeholder="Hora de cirugía">
            </div>
            </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Agregar cirugía
            </button>
            <hr>
            </form>

<%@include file="bodyfinal.jsp"%>