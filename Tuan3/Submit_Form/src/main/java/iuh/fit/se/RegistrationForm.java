package iuh.fit.se;

import iuh.fit.se.Entity.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "registrationForm", urlPatterns = "/registrationForm")
public class RegistrationForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegistrationForm() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobileNumber");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String pinCode = request.getParameter("pinCode");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String hobbies = request.getParameter("hobbies");
        String course = request.getParameter("course");
        String birthDate = day + "/" + month + "/" + year;

        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setEmail(email);
        student.setGender(gender);
        student.setBirthDate(birthDate);

        request.setAttribute("student", student);

        RequestDispatcher rd = request.getRequestDispatcher("resultForm.jsp");
        rd.forward(request, response);
    }
}
