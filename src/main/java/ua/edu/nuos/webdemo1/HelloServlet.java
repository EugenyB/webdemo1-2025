package ua.edu.nuos.webdemo1;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import ua.edu.nuos.webdemo1.logic.Calculator;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        String userName = request.getParameter("name");
//        request.setAttribute("name", userName);
//        request.getRequestDispatcher("/hello.jsp").forward(request, response);

        double start = Double.parseDouble(request.getParameter("start"));
        double end = Double.parseDouble(request.getParameter("end"));
        double step = Double.parseDouble(request.getParameter("step"));

        request.setAttribute("calculator", new Calculator(start, end, step));
        request.getRequestDispatcher("/tab.jsp").forward(request, response);
    }

    public void destroy() {
    }
}