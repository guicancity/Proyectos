/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTOs;

/**
 *
 * @author SENA
 */
public class UsuariosDTO {
    String nombreusuario,clave,nombrerol;
    int id,rol;
public UsuariosDTO(){
    
}
    public UsuariosDTO(int id, String nombreusuario, String clave, int rol, String nombrerol) {
        this.id = id;
        this.nombreusuario = nombreusuario;
        this.clave = clave;
        this.rol = rol;
        this.nombrerol = nombrerol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public String getNombrerol() {
        return nombrerol;
    }

    public void setNombrerol(String nombrerol) {
        this.nombrerol = nombrerol;
    }
    
    
}
