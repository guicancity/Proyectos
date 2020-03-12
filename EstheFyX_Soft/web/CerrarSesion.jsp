<%-- 
    Document   : CerrarSesion
    Created on : 11/03/2020, 07:01:54 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
   </head>
   <body>
      <%
     request.getSession().invalidate();
      RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
      rd.forward(request, response);
      
      %>
   </body>
</html>
