package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Cirugia;
import logica.Controladora;

@WebServlet(name = "SvEditCirugias", urlPatterns = {"/SvEditCirugias"})
public class SvEditCirugias extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
                
        Cirugia ciru = control.traerCirugia(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("ciruEditar", ciru);
        System.out.println("La cirugia es: " + ciru.getTipo());
        response.sendRedirect("editarCirugias.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String pacienteStr = request.getParameter("paciente");
        String tipo = request.getParameter("tipo");
        String fecha_ciru = request.getParameter("fecha_ciru");
        String hora_ciru = request.getParameter("hora_ciru");
        
        int paciente = Integer.parseInt(pacienteStr);

        
        Cirugia ciru = (Cirugia) request.getSession().getAttribute("ciruEditar");
        ciru.setPaciente(paciente);
        ciru.setTipo(tipo);
        ciru.setFecha_ciru(fecha_ciru);
        ciru.setHora_ciru(hora_ciru);
        
        control.editarCirugia(ciru);
        
        response.sendRedirect("SvCirugias");

        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
