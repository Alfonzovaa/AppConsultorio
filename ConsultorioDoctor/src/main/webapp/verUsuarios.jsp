<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="bodyprimeraparte.jsp"%>

<h2>Ver usuarios</h2>

    <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista de usuarios</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre de usuario</th>
                                            <th>Rol</th>
                                            <th style="width: 210px">Opciones</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre de usuario</th>
                                            <th>Rol</th>
                                            <th style="width: 210px">Opciones</th>
                                        </tr>
                                    </tfoot>                                       
                                    <%
                                        List<Usuario>listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                                    %>
                                    <tbody>
                                    <%for (Usuario usu : listaUsuarios){%>
                                        <tr>
                                            <td><%= usu.getIdUsuario()%></td>
                                            <td><%= usu.getNombreUsuario()%></td>
                                            <td><%= usu.getRol()%></td>
                                            <td style="display: flex; width: 230px;">
                                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                                    <button type="submit" class = "btn btn-primary btn-user btn-block" style="background-color: black; margin-right: 15px;">
                                                        <i class="fas fa-trash-alt"></i> Eliminar    
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getIdUsuario()%>">

                                                </form>
                                                <form name="editar" action="SvEditUsuarios" method="GET">
                                                    <button type="submit" class = "btn btn-primary btn-user btn-block" style="background-color: black; margin-left: 13px;">
                                                        <i class="fas fa-pencil-alt"></i> editar    
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getIdUsuario()%>">
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