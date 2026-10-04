<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Assignment 3 | AJAX + XML</title>

    <link rel="stylesheet" href="css/style.css">

    <style>

        /* ================= ASSIGNMENT 3 ================= */

        .ajax-page {
            min-height: 100vh;
            background:
                radial-gradient(circle at 10% 10%, rgba(14,165,164,0.10), transparent 28%),
                radial-gradient(circle at 90% 20%, rgba(83,109,254,0.10), transparent 28%),
                #f5f8fa;
        }

        .ajax-header {
            background: #111827;
            color: white;
            padding: 22px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 3px solid #0ea5a4;
        }

        .ajax-brand {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .ajax-logo {
            width: 48px;
            height: 48px;
            border-radius: 13px;
            background: #0ea5a4;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: "Courier New", monospace;
            font-weight: 900;
            font-size: 13px;
        }

        .ajax-brand h2 {
            font-size: 17px;
            letter-spacing: 1px;
        }

        .ajax-brand p {
            color: #9ca8bb;
            font-size: 11px;
            margin-top: 3px;
        }

        .ajax-student {
            text-align: right;
        }

        .ajax-student strong {
            display: block;
            font-size: 13px;
        }

        .ajax-student span {
            color: #9ca8bb;
            font-size: 11px;
        }

        .ajax-container {
            max-width: 1200px;
            margin: auto;
            padding: 55px 5%;
        }

        .ajax-title-row {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 30px;
            margin-bottom: 35px;
        }

        .assignment-label {
            display: inline-block;
            color: #0ea5a4;
            font-family: "Courier New", monospace;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 2px;
            margin-bottom: 12px;
        }

        .ajax-title h1 {
            font-size: 48px;
            line-height: 1.05;
            letter-spacing: -1.5px;
            color: #172033;
        }

        .ajax-title h1 span {
            color: #0ea5a4;
        }

        .ajax-title p {
            max-width: 650px;
            color: #717b8e;
            line-height: 1.7;
            font-size: 14px;
            margin-top: 14px;
        }

        .xml-status {
            padding: 14px 18px;
            background: white;
            border: 1px solid #dce8e8;
            border-radius: 12px;
            min-width: 180px;
            box-shadow: 0 8px 25px rgba(20,40,50,0.06);
        }

        .xml-status-top {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 11px;
            font-weight: 800;
            color: #172033;
        }

        .live-dot {
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: #16a085;
            box-shadow: 0 0 0 5px rgba(22,160,133,0.12);
        }

        .xml-status small {
            display: block;
            color: #8791a3;
            margin-top: 7px;
            font-size: 10px;
        }

        /* Technical cards */

        .tech-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 16px;
            margin-bottom: 30px;
        }

        .tech-card {
            position: relative;
            overflow: hidden;
            background: #111827;
            color: white;
            padding: 22px;
            border-radius: 15px;
            min-height: 110px;
        }

        .tech-card::after {
            content: "</>";
            position: absolute;
            right: 15px;
            bottom: 5px;
            font-family: "Courier New", monospace;
            font-size: 50px;
            font-weight: 900;
            color: rgba(255,255,255,0.04);
        }

        .tech-card:nth-child(2)::after {
            content: "XML";
        }

        .tech-card:nth-child(3)::after {
            content: "HTTP";
        }

        .tech-icon {
            color: #42d5cc;
            font-family: "Courier New", monospace;
            font-weight: 900;
            font-size: 15px;
            margin-bottom: 12px;
        }

        .tech-card h3 {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .tech-card p {
            color: #9ca8bb;
            font-size: 11px;
        }

        /* Main data panel */

        .data-panel {
            background: white;
            border-radius: 20px;
            border: 1px solid #e3e8ed;
            box-shadow: 0 15px 45px rgba(20,40,50,0.08);
            overflow: hidden;
        }

        .data-panel-header {
            padding: 22px 25px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid #edf0f3;
        }

        .data-heading {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .data-icon {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: #e5f8f7;
            color: #0ea5a4;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: "Courier New", monospace;
            font-weight: 900;
        }

        .data-heading h2 {
            font-size: 16px;
        }

        .data-heading p {
            color: #8a93a4;
            font-size: 10px;
            margin-top: 3px;
        }

        .load-btn {
            border: none;
            cursor: pointer;
            padding: 12px 19px;
            border-radius: 9px;
            background: #0ea5a4;
            color: white;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 0.4px;
            box-shadow: 0 8px 18px rgba(14,165,164,0.20);
            transition: 0.25s;
        }

        .load-btn:hover {
            background: #087f7e;
            transform: translateY(-2px);
        }

        /* Table */

        .table-wrapper {
            overflow-x: auto;
            padding: 8px 18px 22px;
        }

        .student-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 7px;
            min-width: 760px;
        }

        .student-table th {
            padding: 14px 15px;
            text-align: left;
            color: #8a93a4;
            font-size: 10px;
            letter-spacing: 0.7px;
            text-transform: uppercase;
        }

        .student-table tbody tr {
            background: #f8fafb;
            transition: 0.2s;
        }

        .student-table tbody tr:hover {
            background: #edfafa;
            transform: scale(1.002);
        }

        .student-table td {
            padding: 15px;
            color: #3e485a;
            font-size: 12px;
            border-top: 1px solid #eef1f3;
            border-bottom: 1px solid #eef1f3;
        }

        .student-table td:first-child {
            border-left: 1px solid #eef1f3;
            border-radius: 9px 0 0 9px;
            color: #0ea5a4;
            font-family: "Courier New", monospace;
            font-weight: 800;
        }

        .student-table td:last-child {
            border-right: 1px solid #eef1f3;
            border-radius: 0 9px 9px 0;
        }

        .student-table tbody td:nth-child(2) {
            font-weight: 700;
            color: #172033;
        }

        /* Navigation */

        .ajax-navigation {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 25px;
        }

        .back-home {
            display: inline-block;
            padding: 11px 18px;
            background: #172033;
            color: white;
            border-radius: 8px;
            font-size: 11px;
            font-weight: 700;
            transition: 0.25s;
        }

        .back-home:hover {
            background: #0ea5a4;
        }

        .ajax-note {
            color: #8a93a4;
            font-family: "Courier New", monospace;
            font-size: 10px;
        }

        .ajax-footer {
            padding: 22px 8%;
            background: #111827;
            color: #9ca8bb;
            text-align: center;
            font-size: 10px;
            letter-spacing: 0.5px;
        }

        /* Responsive */

        @media (max-width: 800px) {

            .ajax-header {
                padding: 18px 5%;
            }

            .ajax-title-row {
                flex-direction: column;
                align-items: flex-start;
            }

            .xml-status {
                width: 100%;
            }

            .ajax-title h1 {
                font-size: 38px;
            }

            .tech-grid {
                grid-template-columns: 1fr;
            }

            .data-panel-header {
                align-items: flex-start;
                gap: 15px;
                flex-direction: column;
            }

            .load-btn {
                width: 100%;
            }

            .ajax-navigation {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }
        }

    </style>

    <script src="js/ajax.js"></script>

</head>

<body>

<div class="ajax-page">

    <header class="ajax-header">

        <div class="ajax-brand">

            <div class="ajax-logo">
                A/X
            </div>

            <div>
                <h2>AJAX + XML</h2>
                <p>WEB PAGE CREATION - ASSIGNMENT 03</p>
            </div>

        </div>

    </header>


    <main class="ajax-container">


        <section class="ajax-title-row">

            <div class="ajax-title">

                <span class="assignment-label">
                    ASSIGNMENT 03 / DYNAMIC DATA
                </span>

                <h1>
                    AJAX <span>+</span> XML
                </h1>

                <p>
                    Student information is retrieved from an XML data source
                    using an asynchronous AJAX request and displayed
                    dynamically without refreshing the web page.
                </p>

            </div>


            <div class="xml-status">

                <div class="xml-status-top">
                    <span class="live-dot"></span>
                    XML DATA SOURCE
                </div>

                <small>student.xml / Ready</small>

            </div>

        </section>


        <section class="tech-grid">

            <div class="tech-card">

                <div class="tech-icon">
                    XMLHttpRequest()
                </div>

                <h3>AJAX Request</h3>

                <p>
                    Sends an asynchronous request to the XML resource.
                </p>

            </div>


            <div class="tech-card">

                <div class="tech-icon">
                    &lt;student&gt;
                </div>

                <h3>XML Structure</h3>

                <p>
                    Stores structured student information in XML format.
                </p>

            </div>


            <div class="tech-card">

                <div class="tech-icon">
                    responseXML
                </div>

                <h3>Dynamic Display</h3>

                <p>
                    Reads XML data and updates the HTML table instantly.
                </p>

            </div>

        </section>


        <section class="data-panel">


            <div class="data-panel-header">

                <div class="data-heading">

                    <div class="data-icon">
                        XML
                    </div>

                    <div>
                        <h2>Student Information</h2>
                        <p>Data loaded dynamically from student.xml</p>
                    </div>

                </div>


                <button class="load-btn" onclick="loadStudents()">
                    LOAD STUDENT DATA
                </button>

            </div>


            <div class="table-wrapper">

                <table class="student-table">

                    <thead>

                        <tr>
                            <th>Register Number</th>
                            <th>Name</th>
                            <th>Department</th>
                            <th>Year</th>
                            <th>Email</th>
                        </tr>

                    </thead>


                    <tbody id="studentTableBody">

                        <tr>

                            <td colspan="5" style="text-align:center; color:#8a93a4; padding:30px;">
                                Click "LOAD STUDENT DATA" to retrieve information from XML.
                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>

        </section>


        <div class="ajax-navigation">

            <a href="index.jsp" class="back-home">
                ← Back to Home
            </a>

            <span class="ajax-note">
                AJAX REQUEST -> XML -> DOM -> HTML TABLE
            </span>

        </div>


    </main>


    <footer class="ajax-footer">
        Web Page Creation · Assignment 03
    </footer>

</div>

</body>
</html>
