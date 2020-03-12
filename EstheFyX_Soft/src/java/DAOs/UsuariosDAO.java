/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAOs;

import DTOs.UsuariosDTO;
import Logica.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author SENA
 */
public class UsuariosDAO {
    Conexion conexion = new Conexion();
    
    public ArrayList<UsuariosDTO> listaUsuarios() throws SQLException, ClassNotFoundException{
        ArrayList<UsuariosDTO> lista = new ArrayList<UsuariosDTO>();
        String sql = "SELECT ID,NOMBREUSUARIO,CLAVE,NOMBREROL,ROL FROM USUARIOS";
       ResultSet rs = conexion.muestra(sql);
       
       while(rs.next()){
           UsuariosDTO usuariosDTO = new UsuariosDTO();
           usuariosDTO.setId(rs.getInt("ID"));
           usuariosDTO.setNombreusuario(rs.getString("NOMBREUSUARIO"));
           usuariosDTO.setClave(rs.getString("CLAVE"));
           usuariosDTO.setNombrerol(rs.getString("NOMBREROL"));           
           usuariosDTO.setRol(rs.getInt("ROL"));
           lista.add(usuariosDTO);
       }
       
      return lista;
    }
    
    
    public int nuevoUsuarioPersona(int tipoDocumento,String numeroDocumento,String nombre1,String nombre2,String apellido1,String apellido2 ,String tipo ,String cargo,String telefono,String usuario,String password) throws SQLException, ClassNotFoundException{
    
       Conexion conexion = new Conexion();
       int insertaUsuario = 0;
       int insertaPersona = 0;
       String sqlPersona = "INSERT INTO "
            + "PERSONAS("
                     + "IDTIPODOCUMENTO,"
                     + "NUMERODOCUMENTO,"
                     + "NOMBRE1,"
                     + "NOMBRE2,"
                     + "APELLIDO1,"
                     + "APELLIDO2,"
                     + "TIPO,"
                     + "CARGO,"
                     + "TELEFONO) "
            + "VALUES("+tipoDocumento+",'"
                       +numeroDocumento +"','"
                       +nombre1+"','"
                       +nombre2+"','"
                       +apellido1+"','"
                       +apellido2+"','"
                       +tipo+"','"
                       +cargo+"','"
                       +telefono+"')";
    
   String sqlUsuario =  "insert INTO USUARIOS(IDPERSONAS,NOMBREUSUARIO,CLAVE,ROL,NOMBREROL) VALUES ((SELECT ID FROM PERSONAS WHERE NUMERODOCUMENTO = '"+ numeroDocumento +"'),'"+usuario+"','"+password+"',3,'CLIENTE')";
       
    insertaPersona = conexion.insert(sqlPersona);
   if(insertaPersona == 1){
     insertaUsuario = conexion.insert(sqlUsuario);
   }    
   
   return insertaUsuario;   
    }
    
}
