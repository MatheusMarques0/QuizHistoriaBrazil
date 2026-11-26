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
        <link rel="stylesheet" href="css/style.css">k
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
        <main>
            <h2>Nome excluído:<%= nome%></h2>
             <div id="botao">
                 <button>
                    <a href="index.html">Voltar a Página Inicial</a>
                         </button>
             </div>
        </main>
        
    </body>
</html>
