<%-- 
    Document   : loginFunc
    Created on : 16/09/2017, 09:10:03
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Bancário</title>
    </head>
    <body>
        <form align="center" action="../controleLoginFunc"  method=post>
            <div class="imgcontainer">
                <img src="./bank-support/banco.jpg" class="imgBanco">
            </div>

            <div class="container">
                <label><b>Código</b></label><br>
                <input type="text" placeholder="Digite o seu código" name="codigo" required>
                <br><br>

                <label><b>Senha</b></label><br>
                <input type="password" placeholder="Digite a senha" name="senha" required>
                
                <br><br>
                <button type="submit">Login</button>
                <input type="checkbox" checked="checked"> Lembrar
            </div>
        </form>
    </body>
</html>
