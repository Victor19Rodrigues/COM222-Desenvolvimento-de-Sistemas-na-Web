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
    </head>
    <body>
          <form action="./operationServlet">
               <b>Qual ação deseja realizar?</b>
                            <br>
                            <br><input type="radio" name="acao" value="funcionario">Cadastrar funcionários
                            <br><input type="radio" name="acao" value="OpBancaria">Operações bancárias
                            <br><input type="radio" name="acao" value="correntista">Criar conta 
                           <br><br>
                            
                <input type="submit" value="Próximo">
            </form>
    </body>
</html>
