<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Assignment 1 - Student Details</title>

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <div class="container">

        <h1>Assignment 1</h1>

        <p>Student Details using Java Servlet</p>

        <form action="../student-details" method="post">

            <label>Student Name</label>
            <input type="text" name="name" placeholder="Enter your name" required>

            <label>Register Number</label>
            <input type="text" name="registerNumber" placeholder="Enter register number" required>

            <label>Department</label>
            <input type="text" name="department" placeholder="Enter department" required>

            <label>Email</label>
            <input type="email" name="email" placeholder="Enter email" required>

            <button type="submit">
                Submit Details
            </button>

        </form>

    </div>

</body>

</html>