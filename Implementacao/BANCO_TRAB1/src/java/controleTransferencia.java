
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class controleTransferencia extends HttpServlet {

    private ResultSet resultSet;
    private PreparedStatement pstmt;
    private PreparedStatement pstmt1;
    private PreparedStatement pstmt2;
    private PreparedStatement pstmt3;

    public void init() throws ServletException {
        inicializaJdbc();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String address = "";

        //recupera cliente com determinado numero de conta
        Correntista clienteO = new Correntista();
        Conta contaO = new Conta();

        Correntista clienteD = new Correntista();
        Conta contaD = new Conta();

        try {
            String nroContaDestino = request.getParameter("nroContadestino");
            String nroContaOrigem = request.getParameter("nroContaorigem");
            double valor = Double.parseDouble(request.getParameter("valor"));
          
            consultaConta(nroContaDestino, clienteD.getNome(), clienteD.getSenha());
            if (!resultSet.next()) {
                address = "/resultado/clienteInvalido.jsp";
            }
            clienteD.setNome(resultSet.getString("Nome"));
            contaD.setNroConta(resultSet.getInt("Numero"));
            contaD.setSaldo(resultSet.getDouble("Saldo"));
          
            consultaConta(nroContaOrigem, clienteO.getNome(), clienteO.getSenha());
            if (!resultSet.next()) {
                address = "/resultado/clienteInvalido.jsp";
            }
            clienteO.setNome(resultSet.getString("Nome"));
            contaO.setNroConta(resultSet.getInt("Numero"));
            contaO.setSaldo(resultSet.getDouble("Saldo"));

            if (contaO.getSaldo() < valor) {
                address = "/resultado/saldoInsuficiente.jsp";
                request.setAttribute("objCliente", clienteO);
                request.setAttribute("objConta", contaO);
                request.setAttribute("valor", valor);
            } else {
                double valorcliente = contaO.getSaldo();
                double saldoAtual = valorcliente - valor;
                contaO.setSaldo(saldoAtual);

                atualizaSaldo(contaO.getNroConta(), saldoAtual);

                valorcliente = contaD.getSaldo();
                saldoAtual = valorcliente + valor;
                contaD.setSaldo(saldoAtual);

                atualizaSaldo(contaD.getNroConta(), saldoAtual);

                contaNum();
                resultSet.last();

                MemorizaTransf(contaO.getNroConta(), contaD.getNroConta(), "transf", valor);
                request.setAttribute("objClienteO", clienteO);
                request.setAttribute("objClienteD", clienteD);
                request.setAttribute("valor", valor);
                
            }
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
            pstmt = c.prepareStatement("select * from correntista as cor, conta as cont where cor.Nome "
                    + "= ? and cor.Senha = ? and cont.Numero = ?");
            pstmt1 = c.prepareStatement("UPDATE conta set Saldo = ? WHERE Numero = ?");
            pstmt2 = c.prepareStatement("insert into transacao (Tipo, Nro_Conta, Nro_Conta_Transf, Valor) values (?, ?, ?, ?)");
            pstmt3 = c.prepareStatement("SELECT * from transacao");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void consultaConta(String conta, String nome, String senha) throws SQLException {
        pstmt.setInt(1, Integer.parseInt(conta));
        resultSet = pstmt.executeQuery();
    }

    private void atualizaSaldo(int conta, double deposito) throws SQLException {
        pstmt1.setDouble(1, deposito);
        pstmt1.setInt(2, conta);
        pstmt1.executeUpdate();
    }

    private void MemorizaTransf(int contaO, int contaD, String tipo, double valor) throws SQLException {
        pstmt2.setString(1, tipo);
        pstmt2.setInt(2, contaO);
        pstmt2.setInt(3, contaD);
        pstmt2.setDouble(4, valor);
        pstmt2.execute();
    }

    private void contaNum() throws SQLException {
        resultSet = pstmt3.executeQuery();
    }

}
