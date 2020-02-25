<%-- 
    Document   : ReporteArticulos
    Created on : 25/02/2020, 03:30:15 PM
    Author     : GuicanCity
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="Logica.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
   </head>
   <body>
      <%
      //Creación del reporte
      Conexion conexion = new Conexion();
      Connection con = conexion.conecta();
      
File rutaReporte = new File("C:/Users/User/Documents/NetBeansProjects/Prueba_de_subir_repositorio/EstheFyX_Soft/web/Reportes/002ReporteArticulos.jasper");
String nombreReporte = "002ReporteArticulos";
Map parametros = new HashMap();

String sqlConsulta = "SELECT ID, CODIGO, NOMBRE, STOCK FROM ARTICULO";
     parametros.put("SQL", sqlConsulta);
     parametros.put("TITULO", "Puto el que lo lea");
     
byte[] bytes = JasperRunManager.runReportToPdf(rutaReporte.getPath(), parametros,con);
response.setContentType("application/pdf");
response.setHeader("Content-disposition", nombreReporte +".pdf");
response.setContentLength(bytes.length);

ServletOutputStream output = response.getOutputStream();
response.getOutputStream();
output.write(bytes, 0,bytes.length);
output.flush();
output.close();

      %>
   </body>
</html>
