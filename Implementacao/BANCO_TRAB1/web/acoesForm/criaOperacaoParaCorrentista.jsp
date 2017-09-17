<%-- 
    Document   : criaOperacaoParaCorrentista
    Created on : 16/09/2017, 16:15:10
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
        <div class="imgcontainer">
            <img src="bank-support/banco.png" id="img">
        </div>
    </center>
    <div class="container2">
        <form action="./operationServlet">
            <center><h1 style="color: cornflowerblue">Qual ação deseja realizar?</h1></center>
            <br><input type="radio" name="acao" value="criacao" checked>Criação de conta com Saldo Inicial
            <br><input type="radio" name="acao" value="saque">Saques
            <br><input type="radio" name="acao" value="deposito">Depositos
            <br><input type="radio" name="acao" value="transferencia">Transferências
            <br><input type="radio" name="acao" value="saldo">Saldo
            <br><input type="radio" name="acao" value="extrato">Extrato 
            <br><br>
            <center><input type="submit" value="Próximo" class="botao1"></center>
        </form>
    </div>
    </body>
</html>
