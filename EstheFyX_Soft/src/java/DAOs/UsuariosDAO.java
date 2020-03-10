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
    
}
