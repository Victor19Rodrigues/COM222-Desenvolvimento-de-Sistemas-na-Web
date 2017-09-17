<%-- 
    Document   : criaFunc
    Created on : 16/09/2017, 16:11:27
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
        <form align="center" action="./controleCriacaoFuncionario"  method=post>
            <CENTER>
            <div class="imgcontainer">
                <img src="bank-support/banco.png" class="imgBanco">
            </div>
            </center>

            <div class="container">
                <center>
                
                <label><b>Nome</b></label><br>
                <input type="text" placeholder="Nome..." name="nome" required>
                <br><br>

                <label><b>Email</b></label><br>
                <input type="email" placeholder="E-mail..." name="email" required>
                <br><br>

                <label><b>Função</b></label>
                <br><input type="radio" name="acao" value="GERENTE">Gerente
                <br><input type="radio" name="acao" value="ATENDENTE">Atendente
                <br><input type="radio" name="acao" value="CAIXA">Caixa 
                <br><br>

                <label><b>Senha</b></label><br>
                <input type="password" placeholder="Senha..." name="senha" required>

                <br><br>
                <center><button type="submit">Cadastrar</button></center>
                </center>
                
            </div>
        </form>
    </body>
</html>
