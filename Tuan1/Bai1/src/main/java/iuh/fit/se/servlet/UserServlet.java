package iuh.fit.se.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import iuh.fit.se.model.User;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name = "userServlet", value = "/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, java.io.IOException {
        response.setContentType("application/json");

        User user = new User("chuong", "chuongpro315@gmail.com");

        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(user);

        response.getWriter().write(json);

    }
}
