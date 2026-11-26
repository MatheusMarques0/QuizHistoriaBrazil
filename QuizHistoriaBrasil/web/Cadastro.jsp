<%-- 
    Document   : Cadastro.jsp
    Created on : 25 de nov. de 2026, 23:01:38
    Author     : renat
--%>

<%@page import="DAO.InserirDAO"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="model.Perguntas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="index.html">Voltar a Página Inicial</a>
        <%
            // buscando os dados do formulário
           String nome=request.getParameter("nome");
           String email=request.getParameter("email");
           int r1=Integer.parseInt(request.getParameter("r1"));
           int r2=Integer.parseInt(request.getParameter("r2"));
           int r3=Integer.parseInt(request.getParameter("r3"));
           int r4=Integer.parseInt(request.getParameter("r4"));
           int r5=Integer.parseInt(request.getParameter("r5"));
           int r6=Integer.parseInt(request.getParameter("r6"));
           int r7=Integer.parseInt(request.getParameter("r7"));
           int r8=Integer.parseInt(request.getParameter("r8"));
           int r9=Integer.parseInt(request.getParameter("r9"));
           int r10=Integer.parseInt(request.getParameter("r10"));
           // criando a instância da classe modelo
           Perguntas pesq = new Perguntas();
           // encapsulando
           pesq.setNome(nome);
           pesq.setEmail(email);
           pesq.setR1(r1);
           pesq.setR2(r2);
           pesq.setR3(r3);
           pesq.setR4(r4);
           pesq.setR5(r5);
           pesq.setR6(r6);
           pesq.setR7(r7);
           pesq.setR8(r8);
           pesq.setR9(r9);
           pesq.setR10(r10);
           InserirDAO pesquisa = new InserirDAO();
           if (pesquisa.Inserir(pesq)==true){
               JOptionPane.showMessageDialog(null,"Dados Inseridos com sucesso !!!");
            }
            else{
               JOptionPane.showMessageDialog(null,"Erro no Cadastro !!!");
            }
            
           %>
           
    </body>
</html>
