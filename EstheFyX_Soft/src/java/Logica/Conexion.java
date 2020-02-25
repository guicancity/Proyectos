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
    String url = "jdbc:mysql://localhost:3306/CLUB";
    String usuario = "root";
    String contraseña = "";
    
    
public Connection conecta(){
    try{
    Class.forName("com.mysql.jdbc.Driver");
    cn = DriverManager.getConnection(url,usuario,contraseña);
    st = cn.createStatement();
    }catch(Exception i){
        
    }
    return cn;   
}
public ResultSet muestra(String sql) throws  SQLException{
    conecta();
    
    rs= st.executeQuery(sql);
   
    return rs;

}
public int insert(String sql) throws  SQLException{
    conecta();
    int agrega = st.executeUpdate(sql);
    return agrega;
   
} 
}
