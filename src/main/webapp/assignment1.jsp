<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment 1 - Java Servlet</title>
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
        <span class="tag">ASSIGNMENT 01</span>
        <h2>Java Servlet</h2>
        <p>Enter student details and submit them to the Java Servlet.</p>
    </div>

    <div class="form-card">

        <form action="student" method="post">

            <div class="form-group">
                <label for="name">Student Name</label>
                <input
                    type="text"
                    id="name"
                    name="name"
                    placeholder="Enter student name"
                    required>
            </div>

            <div class="form-group">
                <label for="registerNumber">Register Number</label>
                <input
                    type="text"
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
                <label for="email">Email</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="Enter email address"
                    required>
            </div>

            <button type="submit" class="submit-btn">
                Submit Student Details
            </button>

        </form>

        <a href="index.jsp" class="back-home">← Back to Home</a>

    </div>

</main>

<footer>
    <p>� 2026 My Project � Assignment 1</p>
</footer>

</body>
</html>
