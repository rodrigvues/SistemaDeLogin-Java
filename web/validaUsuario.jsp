<%-- 
    Document   : validaUsuario
    Created on : 20 de set. de 2024, 12:00:20
    Author     : vitor_rodrigues3
--%>

<%@page import="Usuario.Usuario"%>
<%
    String username = request.getParameter("email");
    String password = request.getParameter("senha");

    Usuario novoUsuario = new Usuario();
    novoUsuario.setEmail(username);
    novoUsuario.setSenha(password);

    novoUsuario = novoUsuario.autenticarUsuario();

    //verifica se usuário realmente já possui conta
    if (novoUsuario != null) {
        response.sendRedirect("login.html");
        //se não redireciona para outra tela
    } else {
        response.sendRedirect("semconta.html");
    }
%>
