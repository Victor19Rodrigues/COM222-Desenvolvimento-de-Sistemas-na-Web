<%-- 
    Document   : index
    Created on : 16/09/2017, 08:48:41
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Bancário teste</title>
        
    </head>
    <body>
        <form align="center" action="./controleLoginCorrentista" method="post">
            <div class="imgcontainer">
                <img src="./bank-support/banco.jpg" class="imgBanco">
            </div>

            <div class="container">
                <label><b>Nome</b></label><br>
                <input type="text" placeholder="Digite o seu nome" name="nome" required>
                <br><br>

                <label><b>Número da Conta</b></label><br>
                <input type="text" placeholder="Digite o número da sua conta" name="nroConta" required>
                <br><br>

                <label><b>Senha</b></label><br>
                <input type="password" placeholder="Digite a senha" name="senha" required>

                <br><br>
                <a href="./acoesForm/criaCorrentista.jsp"><input type="button" value="Cadastrar"></a>

                <button type="submit">Login</button>
                <input type="checkbox" checked="checked"> Lembrar

                <br><br>
                <span class="func"><a href="./acoesForm/loginFunc.jsp">Acesso para funcionários</a></span>
            </div>
        </form>
    </body>
</html>
