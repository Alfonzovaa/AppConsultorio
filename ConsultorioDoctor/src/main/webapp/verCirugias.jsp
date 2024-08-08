<%@page import="logica.Cirugia"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h2>Ver cirugías</h2>

    <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista de cirugías</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>IdPaciente</th>
                                            <th>Tipo</th>
                                            <th>Fecha cirugía</th>
                                            <th>Hora cirugía</th>
                                            <th style="width: 210px">Opciones</th>

                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>IdPaciente</th>
                                            <th>Tipo</th>
                                            <th>Fecha cirugía</th>
                                            <th>Hora cirugía</th>
                                            <th style="width: 210px">Opciones</th>

                                        </tr>
                                    </tfoot>
                                    <%
                                        List<Cirugia>listaCirugias = (List) request.getSession().getAttribute("listaCirugias");
                                    %>
                                    <tbody>
                                        <% for (Cirugia ciru : listaCirugias) {%>
                                        <tr>
                                            <td><%= ciru.getPaciente()%></td>
                                            <td><%= ciru.getTipo()%></td>
                                            <td><%= ciru.getFecha_ciru()%></td>
                                            <td><%= ciru.getHora_ciru()%></td>
                                            <td style="display: flex; width: 230px;">
                                                <form name="eliminar" action="SvElimCirugias" method="POST">
                                                    <button type="submit" class = "btn btn-primary btn-user btn-block" style="background-color: black; margin-right: 5px;">
                                                        <i class="fas fa-trash-alt"></i> Eliminar    
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=ciru.getId_Cirugia()%>">
                                                </form>
                                                <form name="editar" action="SvEditCirugias" method="GET">
                                                    <button type="submit" class = "btn btn-primary btn-user btn-block" style="background-color: black; margin-left: 5px;">
                                                        <i class="fas fa-pencil-alt"></i> editar    
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=ciru.getId_Cirugia()%>">
                                                </form>
                                            </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
            
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>        
                
    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>



<%@include file="bodyfinal.jsp"%>