<%-- 
    Document   : transferenciaForm
    Created on : 16/09/2017, 15:52:22
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Bancário - Transferência</title>
        <link href="style_banco.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="imgcontainer">
            <center><img src="bank-support/banco.png" class="imgBanco"></center>
        </div>
    <center>
        <div class="container2" style="width: 400px">
            <h1 style="color: cornflowerblue">Realize uma transferência</h1>

            <form action="./controleTransferencia" method=post>      
                <b>Conta de Origem:</b><br>
                <input type="text" name="nroContaorigem" size=15><br><br>

                <b>Conta de Destino:</b><br>
                <input type="text" name="nroContadestino" size=15><br><br>

                <b>Valor:</b><br>
                <input type="text" name="valor" size="15" ><br><br>

                <input type="submit" value="Transferir" class="botao1" style="side">

            </form>
            <a href="./pagCorrentista.jsp"> <button>Voltar</button></a>  
        </div>
    </center>

    <br>
</body>
</html>
