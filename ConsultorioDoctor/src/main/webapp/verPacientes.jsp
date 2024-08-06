<%@page import="logica.Paciente"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h2>Ver pacientes</h2>

    <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista de pacientes</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Cédula</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Teléfono</th>
                                            <th>Dirección</th>
                                            <th>FechaNacimiento</th>
                                            <th>TieneOS</th>
                                            <th>TipoSangre</th>
                                            <th>Condición</th>                
                                            <th>FechaCita</th>
                                            <th>RequiereCirugía</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Cédula</th>
                                            <th>Nombre</th>
                                            <th>Apellido</th>
                                            <th>Teléfono</th>
                                            <th>Dirección</th>
                                            <th>FechaNacimiento</th>
                                            <th>TieneOS</th>
                                            <th>TipoSangre</th>
                                            <th>Condición</th>                
                                            <th>FechaCita</th>
                                            <th>RequiereCirugía</th>
                                        </tr>
                                    </tfoot>
                                    <%
                                        List<Paciente>listaPacientes = (List) request.getSession().getAttribute("listaPacientes");
                                    %>
                                    <tbody>
                                        <% for (Paciente pac : listaPacientes) {%>
                                        <tr>
                                            <td><%= pac.getId()%></td>
                                            <td><%= pac.getCedula()%></td>
                                            <td><%= pac.getNombre()%></td>
                                            <td><%= pac.getApellido()%></td>
                                            <td><%= pac.getTelefono()%></td>
                                            <td><%= pac.getDireccion()%></td>
                                            <td><%= pac.getFecha_nac()%></td>
                                            <td><%= pac.getTiene_OS()%></td>
                                            <td><%= pac.getTipo_sangre()%></td>
                                            <td><%= pac.getCondicion()%></td>
                                            <td><%= pac.getFecha_cita()%></td>
                                            <td><%= pac.getRequiereCirugia()%></td>
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