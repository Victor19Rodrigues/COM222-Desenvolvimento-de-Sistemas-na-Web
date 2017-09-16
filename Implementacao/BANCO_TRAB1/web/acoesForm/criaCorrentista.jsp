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
    </head>
    <body>
        <form align="center" action="../controleCriacaoCorrentista"  method=post>
            <div class="imgcontainer">
                <img src="./bank-support/banco.jpg" class="imgBanco">
            </div>

            <div class="container">
                <label><b>Nome</b></label><br>
                <input type="text" placeholder="Digite o seu nome" name="nome" required>
                <br><br>

                <label><b>CPF</b></label><br>
                <input type="text" placeholder="Digite o seu CPF" name="CPF" required>
                <br><br>

                <label><b>Email</b></label><br>
                <input type="text" placeholder="Digite o seu email" name="email" required>
                <br><br>

                <label><b>Endereço</b></label><br>
                <input type="text" placeholder="Digite a senha" name="endereco" required>
                <br><br>

                <label><b>Senha</b></label><br>
                <input type="password" placeholder="Digite a senha" name="senha" required>

                <br><br>
                <button type="submit">Cadastrar</button>
                <a href="..\index.jsp"> <input type="button" value="Cancelar"></a> 
               
            </div>
        </form>
    </body>
</html>
