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
        <link href="../style_banco.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form align="center" action="../controleLoginFunc"  method=post>
            <div class="imgcontainer">
                <center><img src="../bank-support/banco.jpg" class="imgBanco"></center>
            </div>

            <div class="container">
                <center>
                <label><b>Código</b></label><br>
                <input type="text" placeholder="Código..." name="codigo" required>
                <br><br>

                <label><b>Senha</b></label><br>
                <input type="password" placeholder="Senha..." name="senha" required>
                
                <br><br>
                <button type="submit">Login</button>
                <input type="checkbox" checked="checked"> Lembrar
                </center>
            </div>
        </form>
    </body>
</html>
