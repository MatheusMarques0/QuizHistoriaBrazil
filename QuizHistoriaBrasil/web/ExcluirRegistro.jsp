<%-- 
    Document   : ExcluirRegistro.jsp
    Created on : 25 de nov. de 2026, 23:02:35
    Author     : renat
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DAO.ExcluirDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Registro</title>
    </head>
    <body>
       
        <%
        String nome=request.getParameter("nome");
        ExcluirDAO excluir = new ExcluirDAO();
        if (excluir.Excluir(nome)==true){
          JOptionPane.showMessageDialog(null,"Registro excluido com sucesso !!!");
            }
        else{
          JOptionPane.showMessageDialog(null,"Erro na Exclusão/Registro não existe!!!");
        }
            
        %>
        Nome excluído:<%= nome%><p>
         <a href="index.html">Voltar a Página Inicial</a>
        
    </body>
</html>
