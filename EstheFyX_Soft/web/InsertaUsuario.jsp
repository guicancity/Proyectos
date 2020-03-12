<%-- 
    Document   : InsertaUsuario
    Created on : 11/03/2020, 08:56:55 PM
    Author     : User
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAOs.UsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
   </head>
   <body>
      <%
   UsuariosDAO usuariosDAO = new UsuariosDAO();
	int Tipocedula = Integer.parseInt(request.getParameter("ddlTipocedula")); 
	String numerodoc = request.getParameter("txtnumerodoc"); 
	String nombre1 = request.getParameter("txtnombre1"); 
	String nombre2 = request.getParameter("txtnombre2"); 
	String apellido1 = request.getParameter("txtapellido1"); 
	String apellido2 = request.getParameter("txtapellido2"); 
	String telefono = request.getParameter("txttelefono"); 
	String usuario = request.getParameter("txtusuario"); 
	String password = request.getParameter("txtpassword"); 
         int insersion = usuariosDAO.nuevoUsuarioPersona(Tipocedula, numerodoc, nombre1, nombre2, apellido1, apellido2, "CLIENTE","", telefono, usuario, password);
         if(insersion == 1){
               RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
               rd.forward(request, response);
            }         

      %>
   </body>
</html>
