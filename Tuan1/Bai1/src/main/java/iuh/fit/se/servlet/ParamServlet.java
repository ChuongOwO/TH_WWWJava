package iuh.fit.se.servlet;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ParamServlet", value = "/param")
public class ParamServlet extends HttpServlet {
    private String version;
    private String author;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        version = config.getInitParameter("version");
        author = config.getInitParameter("author");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<h1> Param trong Servlet " + this.getServletConfig().getInitParameter("author") + "</h1>");
        out.println("<h1> Param trong App " + this.getServletContext().getInitParameter("appName") + "</h1>");
        out.println("</body></html>");
    }

}
