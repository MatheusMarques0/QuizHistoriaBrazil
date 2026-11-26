package util;

import java.sql.*;


public class ConectarBD {
    
     public static Connection conectar() throws ClassNotFoundException{
        Connection conexao=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");                 
            conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/QuizDB","root","");
            return conexao;
        }catch( SQLException ex){
            System.out.println("error: " + ex);
        }
        return conexao;
    }
     
}
    