
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class controleCriacaoFuncionario extends HttpServlet {

    private ResultSet resultSet;
    private PreparedStatement pstmt;

    public void init() throws ServletException {
        inicializaJdbc();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String address = "";
        Funcionario funcionario = new Funcionario();
        String nome, email, funcao, senha;
        try {
            nome = request.getParameter("nome");
            email = request.getParameter("email");
            funcao = request.getParameter("acao");
            senha = request.getParameter("senha");
        } catch (Exception e) {
            address = "/resultado/ErroFatal.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
            return;
        }
        try {
            funcionario.setNome(nome);
            funcionario.setEmail(email);
            funcionario.setFuncao(funcao);
            funcionario.setSenha(senha);
            request.setAttribute("objFunc", funcionario);
            InsereFuncionario(nome, email, funcao, senha);
            address = "/resultado/criarFuncionarioExito.jsp";

        } catch (SQLException ex) {
            address = "/resultado/criarCorrentistaErro.jsp";
            System.err.println("Erro no SQL");;
        } catch (Exception e) {
            address = "/resultado/ErroFatal.jsp";
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
        dispatcher.forward(request, response);

    }

    private void inicializaJdbc() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost/JAVABANK", "root", "");
            pstmt = c.prepareStatement("insert into funcionario (Nome, Email, Senha, Funcao) values (?, ?, ?, ?)");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private boolean InsereFuncionario(String nome, String email, String funcao, String senha) throws SQLException {
        pstmt.setString(1, nome);
        pstmt.setString(2, email);
        pstmt.setString(3, senha);
        pstmt.setString(4, funcao);
        return pstmt.execute();

    }
}
