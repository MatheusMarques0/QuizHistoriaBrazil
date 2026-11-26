/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.*;
import util.ConectarBD;

/**
 *
 * @author renat
 */
public class ExcluirDAO {
    
    Connection conexao;
    PreparedStatement sql;
    
    public boolean Excluir(String nm) throws ClassNotFoundException{
        try{  
        conexao=ConectarBD.conectar();
        sql=conexao.prepareStatement("delete from Questions where nome= ?");
        sql.setString(1, nm);
        if (sql.executeUpdate()>0){
          return true;
        }
        else{
            return false;
        }
      }
      catch (SQLException e){
          System.out.println("Erro: "+e);
          return false;
      }
    }
    }
    