<%-- 
    Document   : exibirSaldo
    Created on : 16/09/2017, 19:51:35
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <fieldset>
            <legend><h2>Home Banking</h2></legend>
            <h1>Olá, sr. ${objCliente.getNome()},
                <br>Seu saldo é: R$${objConta.getSaldo()} </h1>


        </fieldset>
        <a href=".\index.jsp"> <input type="button" value="Home"></a> 
    </body>
</html>
