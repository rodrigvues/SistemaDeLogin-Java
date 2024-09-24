<%-- 
    Document   : cadastraUsuario
    Created on : 24 de set. de 2024, 09:13:32
    Author     : vitor_rodrigues3
--%>

<%@page import="Usuario.Usuario"%>
<%
    String username = request.getParameter("email");
    String password = request.getParameter("senha");
    
    //função para incluir novo usuario
    Usuario usuario = new Usuario();
    usuario.setEmail(username);
    usuario.setSenha(password);

    //if para cadastrar e redirecionar para tela de login
    if (usuario.incluirUsuario()) {
        response.sendRedirect("index.html");
    } 
%>
