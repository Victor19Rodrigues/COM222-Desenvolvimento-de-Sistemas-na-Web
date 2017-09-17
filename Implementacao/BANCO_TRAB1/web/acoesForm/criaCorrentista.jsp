<%-- 
    Document   : criaCorrentista
    Created on : 16/09/2017, 09:56:19
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Bancário</title>
        <link href="../style_banco.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form align="center" action="../controleCriacaoCorrentista"  method=post>
            <div class="imgcontainer">
                <center><img src="../bank-support/banco.jpg" class="imgBanco"></center>
            </div>

            <div class="container">
                <center>
                <label><b>Nome</b></label><br>
                <input type="text" placeholder="Nome..." name="nome" required>
                <br><br>

                <label><b>CPF</b></label><br>
                <input type="text" placeholder="CPF..." name="CPF" required>
                <br><br>

                <label><b>Email</b></label><br>
                <input type="email" placeholder="E-mail..." name="email" required>
                <br><br>

                <label><b>Endereço</b></label><br>
                <input type="text" placeholder="Endereço..." name="endereco" required>
                <br><br>

                <label><b>Senha</b></label><br>
                <input type="password" placeholder="Senha..." name="senha" required>

                <br><br>
                <button type="submit">Cadastrar</button>
                <a href="..\index.jsp"><button>Cancelar</button></a>
                </center>
            </div>
        </form>
    </body>
</html>
