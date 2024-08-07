package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Cirugia;
import logica.Controladora;


@WebServlet(name = "SvCirugias", urlPatterns = {"/SvCirugias"})
public class SvCirugias extends HttpServlet {
    
    Controladora control = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Cirugia> listaCirugias = new ArrayList<Cirugia>();
        
        listaCirugias=control.getCirugias();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("listaCirugias", listaCirugias);
        
        System.out.println("Cirugia " + listaCirugias.get(0));

        
        response.sendRedirect("verCirugias.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
                String pacienteStr = request.getParameter("paciente");
                String tipo = request.getParameter("tipo");
                String fecha_ciru = request.getParameter("fecha_ciru");
                String hora_ciru = request.getParameter("hora_ciru"); 
                
                int paciente = Integer.parseInt(pacienteStr);
                
                control.crearCirugia(paciente, tipo, fecha_ciru, hora_ciru);
        
                response.sendRedirect("SvCirugias");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
