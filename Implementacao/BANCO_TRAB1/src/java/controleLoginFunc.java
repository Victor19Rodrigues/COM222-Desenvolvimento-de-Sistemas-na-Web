
import java.io.*;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class controleLoginFunc extends HttpServlet {

    private ResultSet resultSet;
    private PreparedStatement pstmt;

    public void init() throws ServletException {
        inicializaJdbc();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Funcionario funcionario = new Funcionario();
        String address = "";
        try {
            String codigo = request.getParameter("codigo");
            String senha = request.getParameter("senha");
            consultaFunc(codigo, senha);
            if (!resultSet.next()) {
                address = "/resultado/clienteInvalido.jsp";
            } else {
                funcionario.setNome(resultSet.getString("Nome"));
                funcionario.setCodigo(resultSet.getInt("Codigo"));
                funcionario.setSenha(resultSet.getString("Senha"));
                funcionario.setFuncao(resultSet.getString("Funcao"));
                funcionario.setEmail(resultSet.getString("Email"));
                request.setAttribute("objFunc", funcionario);

                if (funcionario.getFuncao().equals("GERENTE")) {
                    address = "/acoesForm/pagGerente.jsp";
                } else if (funcionario.getFuncao().equals("ATENDENTE")) {
                    address = "/acoesForm/pagAtendente.jsp";
                } else {
                    address = "/acoesForm/pagCaixa.jsp";
                }
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
            pstmt = c.prepareStatement("select * from funcionario where Codigo = ? and Senha = ?");
        } catch (Exception ex) {
            System.out.println(ex);
        }

    }

    private void consultaFunc(String codigo, String senha) throws SQLException {

        pstmt.setInt(1, Integer.parseInt(codigo));
        pstmt.setString(2, senha);

        resultSet = pstmt.executeQuery();
    }

}
