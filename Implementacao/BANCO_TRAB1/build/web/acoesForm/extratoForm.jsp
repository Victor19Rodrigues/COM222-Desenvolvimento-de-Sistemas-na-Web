<%-- 
    Document   : extratoForm
    Created on : 16/09/2017, 15:52:52
    Author     : Victor Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Bancário <br><br>Extrato da Conta</title>
    </head>
    <body>
         <h1>Imprimir Extratos:</h1>

            <form action="../controleExtrato" method=post>

                <table cellpadding=4 cellspacing=2 border=0>

                    <tr>
                        <td  valign=top>
                            <b>Numero da conta:</b>
                            <br>
                            <input type="text" name="nroConta" size=10></td>
                    </tr>

                    <tr>
                        <td  valign=top>
                            <input type="submit" value="Emitir Extrato">
                        </td>
                    </tr>

                </table>

            </form>

            <a href="./pagCorrentista.jsp"> <input type="button" value="Home"></a>   

        <br>
    </body>
</html>
