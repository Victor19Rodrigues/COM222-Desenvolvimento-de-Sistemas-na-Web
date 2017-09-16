
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class operationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String address = "";

            if (request.getParameter("acao").equals("transferencia")) {
                address = "/acoesForm/transferenciaForm.jsp";
            } else if (request.getParameter("acao").equals("saldo")) {
                address = "/acoesForm/saldoForm.jsp";
            } else if (request.getParameter("acao").equals("extrato")) {
                address = "/acoesForm/extratoForm.jsp";
            } else if (request.getParameter("acao").equals("funcionario")) {
                address = "/acoesForm/criaFunc.jsp";
            } else if (request.getParameter("acao").equals("OpBancaria")) {
                address = "/acoesForm/criaOperacaoParaCorrentista.jsp";
            } else if (request.getParameter("acao").equals("correntista")) {
                address = "/acoesForm/criaCorrentista.jsp";
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);

        }

    }

}
