<%-- 
    Document   : ImprimeUsuarios
    Created on : Mar 10, 2020, 8:21:20 AM
    Author     : SENA
--%>

<%@page import="DTOs.UsuariosDTO"%>
<%@page import="java.util.ArrayList"%>
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
        ArrayList<UsuariosDTO> listaUsuarios = new ArrayList<UsuariosDTO>();
        listaUsuarios = usuariosDAO.listaUsuarios();
        System.err.println("algo está mal");
        for(UsuariosDTO ud : listaUsuarios){
            out.print(ud.getId() + " ");
            out.print(ud.getClave() + " ");
            out.print(ud.getRol() + " ");
            out.print(ud.getNombreusuario() + " ");
            out.print(ud.getNombrerol() + "<br>");
            
        }
        
        
        %>
    </body>
</html>
