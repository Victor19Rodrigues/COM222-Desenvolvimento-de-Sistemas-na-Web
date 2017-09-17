<%-- 
    Document   : criarFuncionarioExito
    Created on : 16/09/2017, 17:45:10
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
    <center>
        <div class="imgcontainer">
            <img src="bank-support/ok.png" id="img">
        </div>
        
        <div class="container2">
            <h2>Seja bem vindo, Sr. ${objFunc.getNome()}!</h2> <br>
            <a href=".\index.jsp"> <button>Página inicial</button></a>   
            <br>
        </div>
    </center>
</html>
