/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.sql.*;
/**
 *
 * @author User
 */
public class Conexion {
 
    Statement st;
    ResultSet rs;
    Connection cn;
    String url = "jdbc:mysql://localhost:3306/EMPRESA";
    String usuario = "root";
    String contraseña = "";
    
    
public Connection conecta() throws ClassNotFoundException{
    try{
    Class.forName("com.mysql.jdbc.Driver");
    cn = DriverManager.getConnection(url,usuario,contraseña);
    st = cn.createStatement();
    
    System.out.println( "Correcto PUTOO");
    }catch(SQLException e){
        System.out.println(e.getMessage() + "Errorrrr PUTOO");
    }
    return cn;   
}
public ResultSet muestra(String sql) throws  SQLException, ClassNotFoundException{
    conecta();
    rs= st.executeQuery(sql);
   
    return rs;

}
public int insert(String sql) throws  SQLException, ClassNotFoundException{
    conecta();
    int agrega = st.executeUpdate(sql);
    return agrega;
   
} 
}
