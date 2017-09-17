<%-- 
    Document   : pagGerente
    Created on : 16/09/2017, 11:30:29
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
    <center>
        <form action="./operationServlet">
            <div class="imgcontainer">
                <center><img src="bank-support/banco.png" class="imgBanco"></center>
            </div>
            <div class="container2" >
                <center>
                    <h1 style="color: cornflowerblue">Escolha a ação</h1>
                    <br><input type="radio" name="acao" value="funcionario">Cadastrar funcionários
                    <br><input type="radio" name="acao" value="OpBancaria">Operações bancárias
                    <br><input type="radio" name="acao" value="correntista">Criar conta 
                    <br><br>
                    <input type="submit" value="Próximo" class="botao1">
                </center>
            </div>
        </form>
    </body>
</html>
