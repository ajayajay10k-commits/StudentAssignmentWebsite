function loadStudents() {

    const xhr = new XMLHttpRequest();

    xhr.open("GET", "xml/student.xml", true);

    xhr.onreadystatechange = function () {

        if (xhr.readyState === 4 && xhr.status === 200) {

            const xml = xhr.responseXML;
            const students = xml.getElementsByTagName("student");

            const tableBody = document.getElementById("studentTableBody");

            tableBody.innerHTML = "";

            for (let i = 0; i < students.length; i++) {

                const registerNumber =
                    students[i].getElementsByTagName("registerNumber")[0].textContent;

                const name =
                    students[i].getElementsByTagName("name")[0].textContent;

                const department =
                    students[i].getElementsByTagName("department")[0].textContent;

                const year =
                    students[i].getElementsByTagName("year")[0].textContent;

                const email =
                    students[i].getElementsByTagName("email")[0].textContent;

                const row = document.createElement("tr");

                row.innerHTML = `
                    <td>${registerNumber}</td>
                    <td>${name}</td>
                    <td>${department}</td>
                    <td>${year}</td>
                    <td>${email}</td>
                `;

                tableBody.appendChild(row);
            }
        }
    };

    xhr.send();
}
