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
    </head>
    <body>
        <form action="./operationServlet">
               <b>Qual ação deseja realizar no seu HomeBanking?</b>
                            <br>
                            <br><input type="radio" name="acao" value="transferencia">Transferências
                            <br><input type="radio" name="acao" value="saldo">Saldo
                            <br><input type="radio" name="acao" value="extrato">Extrato 
                           <br><br>
                            
                <input type="submit" value="Next">
            </form>
    </body>
</html>
