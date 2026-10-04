<%@ page import="com.myproject.bean.StudentBean" %>

<%
    StudentBean student = new StudentBean();

    String submitted = request.getParameter("submitted");

    if ("true".equals(submitted)) {
        student.setName(request.getParameter("name"));
        student.setRegisterNumber(request.getParameter("registerNumber"));
        student.setDepartment(request.getParameter("department"));
        student.setYear(request.getParameter("year"));
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment 2 - JSP & JavaBean</title>
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<header class="header">
    <div class="logo">
        <span class="logo-icon">MP</span>
        <div>
            <h1>MY PROJECT</h1>
            <p>Web Page Creation</p>
        </div>
    </div>

</header>

<main class="assignment-page">

    <div class="page-title">
        <span class="tag">ASSIGNMENT 02</span>
        <h2>JSP + JavaBean</h2>
        <p>Register a student using JSP and store the information using a JavaBean.</p>
    </div>

    <div class="form-card">

        <form method="post" action="assignment2.jsp">

            <input type="hidden" name="submitted" value="true">

            <div class="form-group">
                <label for="name">Student Name</label>
                <input type="text"
                       id="name"
                       name="name"
                       placeholder="Enter student name"
                       required>
            </div>

            <div class="form-group">
                <label for="registerNumber">Register Number</label>
                <input type="text"
                       id="registerNumber"
                       name="registerNumber"
                       placeholder="Enter register number"
                       required>
            </div>

            <div class="form-group">
                <label for="department">Department</label>
                <select id="department" name="department" required>
                    <option value="">Select Department</option>
                    <option value="AI & Data Science">AI & Data Science</option>
                    <option value="Computer Science Engineering">Computer Science Engineering</option>
                    <option value="Information Technology">Information Technology</option>
                    <option value="Electronics and Communication Engineering">ECE</option>
                </select>
            </div>

            <div class="form-group">
                <label for="year">Year</label>
                <select id="year" name="year" required>
                    <option value="">Select Year</option>
                    <option value="I Year">I Year</option>
                    <option value="II Year">II Year</option>
                    <option value="III Year">III Year</option>
                    <option value="IV Year">IV Year</option>
                </select>
            </div>

            <button type="submit" class="submit-btn">
                Register Student
            </button>

        </form>

    </div>

<% if ("true".equals(submitted)) { %>

    <div class="result-card">

        <div class="result-title">
            <h3>Registration Successful</h3>
            <p>The details have been stored using StudentBean.</p>
        </div>

        <div class="result-row">
            <span class="result-label">Student Name</span>
            <span class="result-value"><%= student.getName() %></span>
        </div>

        <div class="result-row">
            <span class="result-label">Register Number</span>
            <span class="result-value"><%= student.getRegisterNumber() %></span>
        </div>

        <div class="result-row">
            <span class="result-label">Department</span>
            <span class="result-value"><%= student.getDepartment() %></span>
        </div>

        <div class="result-row">
            <span class="result-label">Year</span>
            <span class="result-value"><%= student.getYear() %></span>
        </div>

    </div>

<% } %>

    <a href="index.jsp" class="back-home">← Back to Home</a>

</main>

<footer>
    <p>� 2026 My Project � Assignment 2</p>
</footer>

</body>
</html>
