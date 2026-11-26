/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import model.Perguntas;
import util.ConectarBD;
import java.sql.*;

/**
 *
 * @author renat
 */
public class InserirDAO {
    
    Statement executar;
    PreparedStatement sql;
    Connection conexao;
    ResultSet lista;
    
    public boolean Inserir(Perguntas p) throws ClassNotFoundException, SQLException{
      try{  
        conexao=ConectarBD.conectar();
        sql=conexao.prepareStatement("Insert into Questions (nome,email,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10) values (?,?,?,?,?,?,?,?,?,?,?,?)");
        sql.setString(1, p.getNome());
        sql.setString(2, p.getEmail());
        sql.setInt(3,p.getR1());
        sql.setInt(4,p.getR2());
        sql.setInt(5, p.getR3());
        sql.setInt(6,p.getR4());
        sql.setInt(7,p.getR5());
        sql.setInt(8,p.getR6());
        sql.setInt(9,p.getR7());
        sql.setInt(10,p.getR8());
        sql.setInt(11,p.getR9());
        sql.setInt(12,p.getR10());
        sql.executeUpdate();
        return true;
      }
      catch (SQLException e){
          System.out.println("Erro: "+e);
          return false;
      }
    }
}

