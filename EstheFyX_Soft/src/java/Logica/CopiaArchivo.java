/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 *
 * @author Personal
 */
public class CopiaArchivo {
    
    public void copiaFoto(String foto) throws FileNotFoundException{
        File origen = new File("D:\\imagenesorigen\\"+foto);
        File destino = new File("C:\\Users\\Personal\\Documents\\NetBeansProjects\\ProyectoLdP\\web\\FotosUsuarios\\"+foto);
      try{
   InputStream in= new FileInputStream(origen);
   OutputStream out = new FileOutputStream(destino);
    
   byte[] buf = new byte[1024];
    int lleva;
    while((lleva = in.read(buf))>0){
        out.write(buf,0,lleva);
    }
      
      
      }catch(Exception e){
          
      }  
    
    }
    
}
