
import java.io.*;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class controleLoginCorrentista extends HttpServlet {

    private ResultSet resultSet;
    private PreparedStatement pstmt;

    public void init() throws ServletException {
        inicializaJdbc();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Correntista correntista = new Correntista();
        Conta conta = new Conta();
        String address = "";
        try {
            String nome = request.getParameter("nome");
            String nroConta = request.getParameter("nroConta");
            String senha = request.getParameter("senha");
            consultaCorrentista(nome, nroConta, senha);
            if (!resultSet.next()) {
                address = "/resultado/clienteInvalido.jsp";
            } else {
                correntista.setNome(resultSet.getString("Nome"));
                correntista.setCPF(resultSet.getString("CPF"));
                correntista.setSenha(resultSet.getString("Senha"));
                correntista.setEndereco(resultSet.getString("Endereco"));
                correntista.setEmail(resultSet.getString("Email"));
                conta.setNroConta(resultSet.getInt("Numero"));
                request.setAttribute("objCorrentista", correntista);
              
                address = "/acoesForm/pagCorrentista.jsp";
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
            pstmt = c.prepareStatement("select * from correntista as cor, conta as cont where cor.Nome "
                    + "                 = ? and cor.Senha = ? and cont.Numero = ?");
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }

    private void consultaCorrentista(String nome, String nroConta, String senha) throws SQLException {

        pstmt.setString(1, nome);
        pstmt.setString(2, senha);
        pstmt.setString(3, nroConta);

        resultSet = pstmt.executeQuery();
    }   
}
