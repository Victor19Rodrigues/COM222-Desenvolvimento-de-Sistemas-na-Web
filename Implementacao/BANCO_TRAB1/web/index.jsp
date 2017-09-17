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
        <title>Sistema Bancário</title>
        <link href="style_banco.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div id="principal">
            <form align="center" action="./controleLoginCorrentista" method="post">
                <div class="imgcontainer">
                    <center><img src="bank-support/banco.png" class="imgBanco"></center>
                </div>

                <div class="container">
                    <center>
                    <label><b>Nome</b></label><br>
                    <input type="text" placeholder="Nome..." name="nome" required>
                    <br><br>

                    <label><b>Número da Conta</b></label><br>
                    <input type="text" placeholder="Apenas números..." name="nroConta" required>
                    <br><br>

                    <label><b>Senha</b></label><br>
                    <input type="password" placeholder="Senha..." name="senha" required>

                    <br><br>
                    <a href="./acoesForm/criaCorrentista.jsp"><button type="submit">Cadastrar</button></a>

                    <button type="submit">Login</button>
                    <br><input type="checkbox" checked="checked"> Lembrar

                    <br><br>
                    <span class="func"><a href="./acoesForm/loginFunc.jsp">Acesso para funcionários</a></span>
                    </center>
                </div>
            </form>
        </div>
    </body>
</html>
