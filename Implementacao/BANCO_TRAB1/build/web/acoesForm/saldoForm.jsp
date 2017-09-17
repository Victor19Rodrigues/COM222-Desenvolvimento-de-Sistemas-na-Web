<%-- 
    Document   : saldoForm
    Created on : 16/09/2017, 15:52:39
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Bancário <br><br> Saldo de Conta</title>
        <link href="style_banco.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="imgcontainer">
            <center><img src="bank-support/banco.png" class="imgBanco"></center>
        </div>
    <center>
        <div class="container2" style="width: 400px">
            <h1 style="color: cornflowerblue">Consulte seu saldo</h1>
            <form action="./controleSaldo" method=post>

                <b>Número da conta:</b><br>
                <input type="text" name="nroConta" size=10><br><br>

                <input type="submit" value="Ver Saldo" class="botao1" style="side">

            </form>

            <a href="./pagCorrentista.jsp"> <input type="button" value="Home"></a>
        </div>
    </center>
    <br>
</body>
</html>
