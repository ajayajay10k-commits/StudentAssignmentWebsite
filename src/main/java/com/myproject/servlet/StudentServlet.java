package com.myproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/student")
public class StudentServlet extends HttpServlet {

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

        out.println("""
            <!DOCTYPE html>
            <html>
            <head>
                <title>Student Details</title>
                <style>
                    body {
                        margin: 0;
                        font-family: Arial, sans-serif;
                        background: #f4f7fb;
                        color: #172033;
                    }

                    .container {
                        max-width: 650px;
                        margin: 80px auto;
                        padding: 40px;
                        background: white;
                        border-radius: 18px;
                        box-shadow: 0 15px 40px rgba(0,0,0,0.10);
                    }

                    h1 {
                        margin-bottom: 10px;
                    }

                    .subtitle {
                        color: #687389;
                        margin-bottom: 30px;
                    }

                    .detail {
                        display: flex;
                        justify-content: space-between;
                        padding: 16px 0;
                        border-bottom: 1px solid #e6e9ef;
                    }

                    .label {
                        font-weight: bold;
                    }

                    .value {
                        color: #536dfe;
                    }

                    .back {
                        display: inline-block;
                        margin-top: 30px;
                        padding: 12px 20px;
                        background: #172033;
                        color: white;
                        text-decoration: none;
                        border-radius: 8px;
                    }
                </style>
            </head>
            <body>

                <div class="container">
                    <h1>Student Details</h1>
                    <p class="subtitle">Details submitted through Java Servlet</p>

                    <div class="detail">
                        <span class="label">Name</span>
                        <span class="value">
            """);

        out.println(name);

        out.println("""
                        </span>
                    </div>

                    <div class="detail">
                        <span class="label">Register Number</span>
                        <span class="value">
            """);

        out.println(registerNumber);

        out.println("""
                        </span>
                    </div>

                    <div class="detail">
                        <span class="label">Department</span>
                        <span class="value">
            """);

        out.println(department);

        out.println("""
                        </span>
                    </div>

                    <div class="detail">
                        <span class="label">Email</span>
                        <span class="value">
            """);

        out.println(email);

        out.println("""
                        </span>
                    </div>

                    <a class="back" href="assignment1.jsp">? Back to Assignment 1</a>
                </div>

            </body>
            </html>
            """);
    }
}
