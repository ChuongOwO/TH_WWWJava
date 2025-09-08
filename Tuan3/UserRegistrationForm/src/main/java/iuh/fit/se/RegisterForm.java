package iuh.fit.se;

import iuh.fit.se.Model.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "register", value = "/register")
public class RegisterForm extends HttpServlet {
    private List<Account> accounts = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String month = request.getParameter("month");
        String day = request.getParameter("day");
        String year = request.getParameter("year");
        String gender = request.getParameter("gender");

        String birthday = day + "/" + month + "/" + year;

        Account newAccount = new Account(firstName, lastName, email, password, birthday, gender);

        List<Account> accounts = (List<Account>) getServletContext().getAttribute("accounts");
        if (accounts == null) {
            accounts = new ArrayList<>();
        }
        accounts.add(newAccount);

        getServletContext().setAttribute("accounts", accounts);

        request.setAttribute("accounts", accounts);
        request.getRequestDispatcher("listAccounts.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
}