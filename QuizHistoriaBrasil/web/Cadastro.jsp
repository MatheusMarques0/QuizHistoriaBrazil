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
        <link rel="stylesheet" href="css/style.css">
    </head>
    <style>
                button {
            font-family: Arial,
            Helvetica, sans-serif;
            font-size: 18px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 20px;
            text-align: center;
            padding: 10px;
            color: white;
            background-color: #022873;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.203);
            transition: transform 0.25s ease, background-color 0.25s ease;
            margin: 5px;
            margin-top: 40px;
        }

        button a{
            text-decoration: none;
            color: white;
            text-align: center;
        }

        button:hover{
        background-color: #001745;
        transform: translateY(-3px) scale(1.02);
        box-shadow: 0px 0px 20px rgb(5, 249, 224);
        }

        #botao{
            text-align: center;
        }
    </style>
    <body>
        <main>
            <h1>Informações Cadastradas com sucesso!</h1>
            <div id="botao">
                <button>
                    <a href="index.html">Voltar a Página Inicial</a>
                </button>
            </div>
        </main>
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
