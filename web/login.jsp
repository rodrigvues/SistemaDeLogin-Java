<!DOCTYPE html>
<html>
    <head>
        <title>Você efetuou o login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./styles/styles.css" />
    </head>
    <body>
        <%
                String username = (String) session.getAttribute("usuario");
                //redireciona, se não verificado, para tela
                if (username == null) {
                    response.sendRedirect("semconta.html");
                }
        %>
        <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="index.html" class="sign-in-form">
            <h2 class="title">Login Efetuado</h2>
            <input type="submit" value="Tela inicial" class="btn solid" />
          </form>
        </div>
      </div>
      <div class="panels-container">

       

        
      </div>
    </div>

    </body>
</html>

