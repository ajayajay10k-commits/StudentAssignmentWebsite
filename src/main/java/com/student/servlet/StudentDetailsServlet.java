package com.student.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StudentDetailsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String registerNumber = request.getParameter("registerNumber");
        String department = request.getParameter("department");
        String email = request.getParameter("email");

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Student Details</title>");

        out.println("<style>");
        out.println("body {");
        out.println("font-family: Arial, sans-serif;");
        out.println("background: #f4f7fb;");
        out.println("padding: 40px;");
        out.println("}");
        out.println(".card {");
        out.println("max-width: 600px;");
        out.println("margin: auto;");
        out.println("background: white;");
        out.println("padding: 30px;");
        out.println("border-radius: 15px;");
        out.println("box-shadow: 0 5px 20px rgba(0,0,0,0.1);");
        out.println("}");
        out.println("h1 { color: #2563eb; }");
        out.println("p { font-size: 18px; }");
        out.println("</style>");

        out.println("</head>");

        out.println("<body>");

        out.println("<div class='card'>");
        out.println("<h1>Student Details</h1>");

        out.println("<p><strong>Name:</strong> " + name + "</p>");
        out.println("<p><strong>Register Number:</strong> "
                + registerNumber + "</p>");
        out.println("<p><strong>Department:</strong> "
                + department + "</p>");
        out.println("<p><strong>Email:</strong> "
                + email + "</p>");

        out.println("</div>");

        out.println("</body>");
        out.println("</html>");
    }
}