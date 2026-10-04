<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Assignment | Web Page Creation</title>

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<header class="top-header">

    <div class="brand">
        <div class="brand-mark">A</div>

        <div>
            <h2>MY ASSIGNMENT</h2>
            <p>Web Page Creation</p>
        </div>
    </div>


</header>


<main>

    <section class="hero">

        <div class="hero-content">

            <div class="small-title">
                WEB PAGE CREATION
            </div>

            <h1>
                Welcome to My
                <span>Assignment</span>
            </h1>

            <p>
                A collection of three web development assignments
                demonstrating Java Servlet, JSP, JavaBean, AJAX and XML.
            </p>

            <a href="#assignments" class="main-button">
                View My Assignments
            </a>

            <aside class="student-details-card" aria-label="Student details">
                <div class="details-avatar" aria-hidden="true">A</div>
                <div class="details-copy">
                    <span class="details-eyebrow">STUDENT DETAILS</span>
                    <strong>Ajay</strong>
                    <div class="details-meta">
                        <span>Register No. 902513</span>
                        <span>AI &amp; Data Science</span>
                        <span>III Year</span>
                    </div>
                </div>
            </aside>

        </div></section>


    <section class="assignments" id="assignments">

        <div class="section-title">

            <div>
                <span>MY ASSIGNMENTS</span>
                <h2>Explore the Work</h2>
            </div>

            <p>
                Choose any assignment below to view the implementation.
            </p>

        </div>


        <div class="assignment-grid">


            <a href="assignment1.jsp" class="assignment-card">

                <div class="card-number">01</div>

                <div class="card-content">

                    <div class="card-tag">
                        JAVA SERVLET
                    </div>

                    <h3>Student Details</h3>

                    <p>
                        Collect student name, register number,
                        department and email using a Java Servlet.
                    </p>

                    <div class="open-link">
                        View Assignment
                        <span>→</span>
                    </div>

                </div>

            </a>


            <a href="assignment2.jsp" class="assignment-card">

                <div class="card-number">02</div>

                <div class="card-content">

                    <div class="card-tag">
                        JSP + JAVABEAN
                    </div>

                    <h3>Student Registration</h3>

                    <p>
                        Create a student registration page using JSP
                        and store details using a JavaBean.
                    </p>

                    <div class="open-link">
                        View Assignment
                        <span>→</span>
                    </div>

                </div>

            </a>


            <a href="assignment3.jsp" class="assignment-card">

                <div class="card-number">03</div>

                <div class="card-content">

                    <div class="card-tag">
                        AJAX + XML
                    </div>

                    <h3>Student Data</h3>

                    <p>
                        Load student information dynamically from an
                        XML file using AJAX without page refresh.
                    </p>

                    <div class="open-link">
                        View Assignment
                        <span>→</span>
                    </div>

                </div>

            </a>


        </div>

    </section>




</main>


<footer class="footer">

    <div>
        <strong>MY ASSIGNMENT</strong>
        <span>Web Page Creation</span>
    </div>


</footer>

</body>
</html>

