package iuh.fit.se;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "multiLanguage", urlPatterns = "/multiLanguage")
public class MultiLanguage extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String languageCode = request.getParameter("languageCode");
        if (languageCode != null && !languageCode.isEmpty()) {
            request.getSession().setAttribute("languageCode", languageCode);
        }

        request.getRequestDispatcher("multiLanguage.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (session.getAttribute("languageCode") == null) {
            session.setAttribute("languageCode", "vi");
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
