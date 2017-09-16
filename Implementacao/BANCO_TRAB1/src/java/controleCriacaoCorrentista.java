
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class controleCriacaoCorrentista extends HttpServlet {

    private ResultSet resultSet;
    private PreparedStatement pstmt;

    public void init() throws ServletException {
        inicializaJdbc();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String address = "";
        Correntista correntista = new Correntista();
        String CPF, nome, email, endereco, senha;
        try {
            CPF = request.getParameter("CPF");
            nome = request.getParameter("nome");
            email = request.getParameter("email");
            endereco = request.getParameter("endereco");
            senha = request.getParameter("senha");
        } catch (Exception e) {
            address = "/resultado/ErroFatal.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
            return;
        }
        try {
            correntista.setCPF(CPF);
            correntista.setNome(nome);
            correntista.setEmail(email);
            correntista.setEndereco(endereco);
            correntista.setSenha(senha);
            request.setAttribute("objCor", correntista);
            InsereCorrentista(CPF, nome, email, endereco, senha);
            address = "/resultado/criarCorrentistaExito.jsp";

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
            pstmt = c.prepareStatement("insert into correntista values (?, ?, ?, ?, ?)");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private boolean InsereCorrentista(String CPF, String nome, String email, String endereco, String senha) throws SQLException {
        pstmt.setString(1, CPF);
        pstmt.setString(2, nome);
        pstmt.setString(3, endereco);
        pstmt.setString(4, senha);
        pstmt.setString(5, email);
        return pstmt.execute();

    }
}
