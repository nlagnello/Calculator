/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lab4;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nick
 */
@WebServlet(name = "Controller4", urlPatterns = {"/Controller4"})
public class Controller4 extends HttpServlet {

    private static final String DESTINATION = "lab4.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String type = request.getParameter("type");
        CalculateService4 cs = new CalculateService4();
        String area = "";
        if(type.equals("rectangle")){
            String length = request.getParameter("rLength");
            String width = request.getParameter("rWidth");
        
            request.setAttribute("length", length);
            request.setAttribute("width", width);
            area = cs.calculateAreaOfRectangle(length, width);
        }
        else if(type.equals("circle")){
            String radius = request.getParameter("radius");
            
            request.setAttribute("radius", radius);
            area = cs.calculateAreaOfCircle(radius);
        }
        else if(type.equals("triangle")){
            String length = request.getParameter("tLength");
            String height = request.getParameter("tHeight");
        
            request.setAttribute("length", length);
            request.setAttribute("width", height);
            area = cs.calculateAreaOfTriangle(length, height);
        }
        
        
        request.setAttribute("area", area);
        
        RequestDispatcher view = request.getRequestDispatcher(DESTINATION);
        view.forward(request,response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
