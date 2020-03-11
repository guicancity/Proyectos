/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author User
 */
@WebServlet(name = "Sesion", urlPatterns = {"/GeneraInformes"})
public class Sesion extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            Conexion conexion = new Conexion();

            String email = request.getParameter("txtUsuario");
            String clave = request.getParameter("txtPassword");

            int sesionactiva = 1;

            HttpSession sesion = request.getSession();
         
            sesion.setAttribute("nom", email);
            sesion.setAttribute("sesion", sesionactiva);

            String sql ="SELECT USUARIOS.IDPERSONAS, "
                    + "USUARIOS.NOMBREUSUARIO,"
                    + "USUARIOS.CLAVE,"
                    + "USUARIOS.ROL,"
                    + "USUARIOS.NOMBREROL,"
                    + "PERSONAS.NOMBRE1, "
                    + "PERSONAS.NOMBRE2,"
                    + "PERSONAS.APELLIDO1,"
                    + "PERSONAS.APELLIDO2,"
                    + "PERSONAS.TIPO,"
                    + "PERSONAS.CARGO,"
                    + "PERSONAS.NUMERODOCUMENTO "
                    + "FROM USUARIOS INNER JOIN PERSONAS "
                    + "ON PERSONAS.ID = USUARIOS.IDPERSONAS "
                    + "WHERE USUARIOS.NOMBREUSUARIO = '" + email + "' AND USUARIOS.CLAVE = '" + clave + "'";
            ResultSet rr = conexion.muestra(sql);
            String user = "";
            String password = "";
            String rol = "";
            String nombre1 = "";
            String apellido1 = "";
            

            while (rr.next()) {
                user = rr.getString("NOMBREUSUARIO");
                password = rr.getString("CLAVE");
                rol = rr.getString("ROL");
                nombre1 = rr.getString("NOMBRE1");
                apellido1 = rr.getString("APELLIDO1");
            }

            sesion.setAttribute("nombreusuario", nombre1 + " " + apellido1);

            if (email.equals(user) && clave.equals(password)) {
            
                RequestDispatcher rd = request.getRequestDispatcher("inicio.jsp");
                rd.forward(request, response);
            } else {
                sesion.invalidate();
                request.setAttribute("errorMessage", "Correo o clave incorrecta");
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
            }

        }
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

        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
        }

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

        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Sesion.class.getName()).log(Level.SEVERE, null, ex);
        }

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
