<%-- 
    Document   : EditarRegistro.jsp
    Created on : 25 de nov. de 2026, 23:02:17
    Author     : renat
--%>

<%@page import="util.ConectarBD"%>
<%@page import="DAO.EditarDAO"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Registro</title>
    </head>
    <body>
        <% String nom = request.getParameter("nome");
        String email="";
        int resp1=0,resp2=0,resp3=0,resp4=0,resp5=0,resp6=0,resp7=0,resp8=0,resp9=0,resp10=0;
        try{
          
           PreparedStatement sql;
           ResultSet lista;
           Connection conexao;
           conexao=ConectarBD.conectar();
           sql=conexao.prepareStatement("select * from Questions where nome=?");
           sql.setString(1, nom);
           lista=sql.executeQuery();
           if (lista.next()){
              email=lista.getString("email");
              resp1=lista.getInt("R1");
              resp2=lista.getInt("R2");
              resp3=lista.getInt("R3");
              resp4=lista.getInt("R4");
              resp5=lista.getInt("R5");
              resp6=lista.getInt("R6");
              resp7=lista.getInt("R7");
              resp8=lista.getInt("R8");
              resp9=lista.getInt("R9");
              resp10=lista.getInt("R10");
            }          
            }catch(Exception e)  {
                 out.println("erro"+e);
            }
             
            %>
            <form method="post" action="EditarReg.jsp">
            Nome: <input type="text" name="nome" value="<%= nom%>" readonly><p>
            Email: <input type="text" name="em" value="<%= email%>"><p>
            Resposta 1: <input type="text" name="r1" value="<%= resp1%>"><p>
            Resposta 2: <input type="text" name="r2" value="<%= resp2%>"><p>
            Resposta 3: <input type="text" name="r3" value="<%= resp3%>"><p>
            Resposta 4: <input type="text" name="r4" value="<%= resp4%>"><p>
            Resposta 5: <input type="text" name="r5" value="<%= resp5%>"><p>
            Resposta 6: <input type="text" name="r6" value="<%= resp6%>"><p> 
            Resposta 7: <input type="text" name="r7" value="<%= resp7%>"><p>                
            Resposta 8: <input type="text" name="r8" value="<%= resp8%>"><p>                
            Resposta 9: <input type="text" name="r9" value="<%= resp9%>"><p>              
            Resposta 10: <input type="text" name="r10" value="<%= resp10%>"><p>                
                
                <button type="submit" >SALVAR ALTERAÇÕES</button><p>
                
                <a href="index.html">Voltar</a>
              
    </body>
</html>

