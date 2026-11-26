
package DAO;
import java.sql.*;
import javax.swing.JOptionPane;
import util.ConectarBD;

/**
 *
 * @author renat
 */
public class EditarDAO {
    
    public EditarDAO(){
        
    }
    
    Connection conexao;
    PreparedStatement sql;
    
    public void Editar(String nm,String mail, int r1, int r2, int r3, int r4, int r5, int r6, int r7, int r8, int r9, int r10){
        
        try{
            conexao=ConectarBD.conectar();
            sql=conexao.prepareStatement("update Questions set email=?,R1=?,R2=?,R3=?,R4=?,R5=?,R6=?,R7=?,R8=?,R9=?,R10=? where nome=?");
            sql.setString(1, mail);
            sql.setInt(2, r1);
            sql.setInt(3, r2);
            sql.setInt(4, r3);
            sql.setInt(5, r4);
            sql.setInt(6, r5);
            sql.setInt(7, r6);
            sql.setInt(8, r7);
            sql.setInt(9, r8);
            sql.setInt(10, r9);
            sql.setInt(11, r10);
            sql.setString(6, nm);
            int verifica=sql.executeUpdate();
            if (verifica>0){
                JOptionPane.showMessageDialog(null,"Alteração Efetuada !!!");
            }
            else{
               JOptionPane.showMessageDialog(null,"Registro não encontrado !!!"); 
            }
            
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"erro: "+e);
        }
    }
    
    
}
