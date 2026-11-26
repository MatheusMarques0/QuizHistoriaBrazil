<%-- 
    Document   : Listar.jsp
    Created on : 25 de nov. de 2026, 23:01:51
    Author     : renat
--%>

<%@page import="util.ConectarBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa Cadastrada</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <style>
        body{
            background-image: url(imagens/background.avif);
        }

        #tituloRes{
            color: cornflowerblue;
        }
    </style>
    <body class="w3-light-grey w3-padding-large">
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        %>
        <div class="w3-container w3-white w3-padding-32 w3-card w3-round-large" style="max-width:900px; margin:auto;">
           <h1 class="w3-center w3-text-teal" id="tituloRes">RESULTADOS DOS ENTREVISTADOS</h1>
           <table class="w3-table w3-striped w3-bordered w3-hoverable w3-white">
               <thead>
                   <tr class="w3-teal">
                       <th>Nome</th>
                       <th>Email</th>
                       <th>R1</th>
                       <th>R2</th>
                       <th>R3</th>
                       <th>R4</th>
                       <th>R5</th>
                       <th>R6</th>
                       <th>R7</th>
                       <th>R8</th>
                       <th>R9</th>
                       <th>R10</th>
                       <th>Editar</th>
                       <th>Excluir</th>
                   </tr>
               </thead>  
               <tbody>
                   <%
                     try{  
                       PreparedStatement sql;
                       ResultSet lista;
                       Connection conexao;
                       conexao=ConectarBD.conectar();
                       sql=conexao.prepareStatement("select * from Questions");
                       lista=sql.executeQuery();
                       
                       while (lista.next()){
                       
                          String nome=lista.getString("nome");
                          String email=lista.getString("email");
                          int resp1=lista.getInt("R1");
                          int resp2=lista.getInt("R2");
                          int resp3=lista.getInt("R3");
                          int resp4=lista.getInt("R4");
                          int resp5=lista.getInt("R5");
                          int resp6=lista.getInt("R6");
                          int resp7=lista.getInt("R7");
                          int resp8=lista.getInt("R8");
                          int resp9=lista.getInt("R9");
                          int resp10=lista.getInt("R10");
                       
                       %>
                       <tr>
                           <td><%= nome %></td>
                           <td><%= email %></td>
                           <td><%= resp1 %></td>
                           <td><%= resp2 %></td>
                           <td><%= resp3 %></td>
                           <td><%= resp4 %></td>
                           <td><%= resp5 %></td>
                           <td><%= resp6 %></td>
                           <td><%= resp7 %></td>
                           <td><%= resp8 %></td>
                           <td><%= resp9 %></td>
                           <td><%= resp10 %></td>
                           <td> <a href="EditarRegistro.jsp?nome=<%= nome %>" class="w3-button w3-blue w3-small w3-round">Editar</a></td>
                           <td> <a href="ExcluirRegistro.jsp?nome=<%= nome %>" class="w3-button w3-red w3-small w3-round">Excluir</a></td>
                       </tr>
                       <% 
                           }
                           } catch (Exception e){
                               out.println("<tr><td colspan='6'>Erro: "+ e.getMessage()+ "</td></tr>");
                           }

                       %>
    
               </tbody>
               </table>
            </div>
    </body>
</html>

