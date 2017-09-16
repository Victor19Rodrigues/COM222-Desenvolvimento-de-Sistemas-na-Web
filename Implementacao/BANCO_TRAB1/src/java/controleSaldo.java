/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;;

public class controleSaldo extends HttpServlet {
    
    private ResultSet resultSet;
    private PreparedStatement pstmt;
    
    public void init() throws ServletException {
        inicializaJdbc();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Correntista cliente = new Correntista();
        Conta conta = new Conta();
        String address = "";
        try {
            String nroConta = request.getParameter("nroConta");
            consultaConta(nroConta);
            if (!resultSet.next()) {
                address = "/resultado/clienteInvalido.jsp";
            } else {
                cliente.setNome(resultSet.getString("Nome"));
                conta.setNroConta(resultSet.getInt("Numero"));
                conta.setSaldo(resultSet.getDouble("Saldo"));
                request.setAttribute("objCliente", cliente);
                request.setAttribute("ObjConta", conta);
                address = "/resultado/exibirSaldo.jsp"; 
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);

        } catch (Exception ex) {
            address = "/resultado/ErroFatal.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
            out.println("Error: " + ex.getMessage());
            return;
        }
         RequestDispatcher dispatcher = request.getRequestDispatcher(address);
         dispatcher.forward(request, response);
    }
    
    private void inicializaJdbc() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost/JAVABANK", "root", "");
            pstmt = c.prepareStatement("select Numero, Saldo from conta where Numero = ?");
        } catch (Exception ex) {
            System.out.println(ex);
        }
       
    }
    
    private void consultaConta(String conta) throws SQLException {

        pstmt.setInt(1, Integer.parseInt(conta));
        resultSet = pstmt.executeQuery();
    }


}
