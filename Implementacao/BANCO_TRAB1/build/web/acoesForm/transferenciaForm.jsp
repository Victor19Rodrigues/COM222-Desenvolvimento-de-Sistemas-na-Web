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
        <title>Sistema Bancário <br><br> Transferência</title>
    </head>
    <body>
        <h1>Realize uma transferência:</h1>
        <form action="./controleTransferencia" method=post>

            <table cellpadding=4 cellspacing=2 border=0>        

                <tr>
                    <td  valign=top>
                        <b>Numero da conta de Origem:</b>
                        <br>
                        <input type="text" name="nroContaorigem" size=15></td>
                </tr>            
                <tr>
                    <td  valign=top>
                        <b>Numero da conta de Destino:</b>
                        <br>
                        <input type="text" name="nroContadestino" size=15></td>
                </tr>            
                <tr>
                    <td  valign=top>
                        <b>Valor a ser transferido:</b>
                        <br>
                        <input type="text" name="valor" size="15" ></td>
                </tr>
                <tr>
                    <td  valign=top>
                        <input type="submit" value="Transferir">
                    </td>
                </tr>            
            </table>    
        </form>

        <a href="./pagCorrentista.jsp"> <input type="button" value="Home"></a>   

        <br>
    </body>
</html>
