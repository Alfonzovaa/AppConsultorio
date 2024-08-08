package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Paciente;

@WebServlet(name = "SvEditPacientes", urlPatterns = {"/SvEditPacientes"})
public class SvEditPacientes extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
                
                Paciente pac = control.traerPaciente(id);
                
                HttpSession misession = request.getSession();
                misession.setAttribute("pacEditar", pac);
                System.out.println("El nombre del paciente es: " + pac.getNombre());
                response.sendRedirect("editarPacientes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String cedula = request.getParameter("cedula");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String fecha_nac = request.getParameter("fecha_nac");
        String tiene_OS = request.getParameter("tiene_OS");
        String tipoSangre = request.getParameter("tipoSangre");
        String condicion = request.getParameter("condicion");
        String fecha_cita = request.getParameter("fecha_cita");
        String requiereCirugia = request.getParameter("requiereCirugia");
        
        Paciente pac = (Paciente) request.getSession().getAttribute("pacEditar");
        pac.setCedula(cedula);
        pac.setNombre(nombre);
        pac.setApellido(apellido);
        pac.setTelefono(telefono);
        pac.setDireccion(direccion);
        pac.setFecha_nac(fecha_nac);
        pac.setTiene_OS(tiene_OS);
        pac.setTipo_sangre(tipoSangre);
        pac.setCondicion(condicion);
        pac.setFecha_cita(fecha_cita);
        pac.setRequiereCirugia(requiereCirugia);
        
        control.editarPaciente(pac);
        
        response.sendRedirect("SvPacientes");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
