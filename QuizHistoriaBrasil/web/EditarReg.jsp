<%-- 
    Document   : EditarReg
    Created on : 26 de nov. de 2026, 00:11:10
    Author     : renat
--%>

<%@page import="DAO.EditarDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
             <%
                 request.setCharacterEncoding("UTF-8");
                 
                  String nome=request.getParameter("nome");
                  String mail = request.getParameter("em");
                  int pg1=Integer.parseInt(request.getParameter("r1"));
                  int pg2=Integer.parseInt(request.getParameter("r2"));
                  int pg3=Integer.parseInt(request.getParameter("r3"));
                  int pg4=Integer.parseInt(request.getParameter("r4"));
                  int pg5=Integer.parseInt(request.getParameter("r5"));
                  int pg6=Integer.parseInt(request.getParameter("r6"));
                  int pg7=Integer.parseInt(request.getParameter("r7"));
                  int pg8=Integer.parseInt(request.getParameter("r8"));
                  int pg9=Integer.parseInt(request.getParameter("r9"));
                  int pg10=Integer.parseInt(request.getParameter("r10"));
                %>
                <% EditarDAO edit = new EditarDAO(); 
                edit.Editar(nome, mail, pg1, pg2, pg3, pg4, pg5,
                pg6, pg7, pg8, pg9, pg10);
                %>
                 <a href="index.html">Voltar</a>
         
        
    </body>
</html>