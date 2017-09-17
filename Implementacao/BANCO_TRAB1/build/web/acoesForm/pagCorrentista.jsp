<%-- 
    Document   : pagCorrentista
    Created on : 16/09/2017, 15:45:33
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
                    <br><input type="radio" name="acao" value="transferencia">Transferências
                    <br><input type="radio" name="acao" value="saldo">Saldo
                    <br><input type="radio" name="acao" value="extrato">Extrato 
                    <br><br>         
                    <input type="submit" value="Próximo" class="botao1">
                </center>
            </div>
        </form>

    </center>
</body>
</html>
