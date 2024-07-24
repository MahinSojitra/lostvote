<%-- 
    Document   : manage-candidates
    Created on : 21 Jan, 2023, 6:39:00 PM
    Author     : mahin
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="function" uri="/WEB-INF/tlds/dao-functions/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>LostVote - Manage Candidates</title>

        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- google font for ubuntu -->
        <style> @import url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap'); </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <script>

            function generateID() {
                var min = 100000;
                var max = 999999;
                return Math.floor(Math.random() * (max - min + 1)) + min;
            }

            $(document).ready(function () {
                var uniqueID = "CID" + generateID().toString();

                $("#txtcandidateID").attr("value", uniqueID);
            });

            $(function () {
                $("[data-toggle = 'tooltip']").tooltip();
            });
        </script>
    </head>
    <body>
        <!-- ======= Header ======= -->
        <jsp:include page="_header.jsp" />
        <!-- ======= /Header ======= -->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Manage Candidates</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Home</a></li>
                        <li class="breadcrumb-item active">Manage Candidates</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <sql:query dataSource="${applicationScope.connection}" var="Elections">
                SELECT election_id, name FROM elections;
            </sql:query>
            <!-- Add Candidate Form -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Register Candidate</h5>

                    <!-- Form -->
                    <form class="row g-3 needs-validation" method="post" enctype="multipart/form-data" novalidate>
                        <div class="col-md-4">
                            <label for="lblcandidateID" class="form-label">Auto Generated ID (Read only)</label>
                            <div class="input-group">
                                <span class="input-group-text" id="inputGroupPrepend">Candidate ID</span>
                                <input type="text" class="form-control" name="candidateID" readonly id="txtcandidateID" aria-describe1dby="inputGroupPrepend" required>
                                <!-- <div class="invalid-feedback">
                                    Please provide valid employee id !
                                </div>
                                <div class="valid-feedback">
                                    Looks good!
                                </div> -->
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <label for="Fname" class="form-label">First name</label>
                            <input type="text" class="form-control" pattern="^[a-zA-Z][a-zA-Z ]{2,64}$" name="firstName" id="Fname" required>
                            <div class="invalid-feedback">
                                Please provide valid first name ! <br>(Only alphabets are allowed)
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="Lname" class="form-label">Last name</label>
                            <input type="text" class="form-control" pattern="^[a-zA-Z][a-zA-Z ]{2,64}$" name="lastName" id="Lname" required>
                            <div class="invalid-feedback">
                                Please provide valid last name ! <br>(Only alphabets are allowed)
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="Username" class="form-label">City</label>
                            <div class="input-group">
                                <select class="form-select" aria-label="Select City" name="city" required>
                                    <option value="Rajkot" selected>Rajkot</option>
                                    <option value="Surat">Surat</option>
                                    <option value="Gandhinagar">Gandhinagar</option>
                                    <option value="Gondal">Gondal</option>
                                    <option value="Ahmedabad">Ahmedabad</option>
                                    <option value="Vadodara">Vadodara</option>
                                    <option value="Junagadh">Junagadh</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="Email" class="form-label">Email Address</label>
                            <input type="email" class="form-control" name="email" id="Email" required>
                            <div class="invalid-feedback">
                                Please provide a valid email !
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="PhoneNo" class="form-label">Phone No </label>
                            <input type="text" class="form-control" maxlength="10" minlength="10" pattern="^[0-9]{10}$" name="phone" id="PhoneNo" required>
                            <div class="invalid-feedback">
                                Please provide valid phone number !
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="ElectionName" class="form-label">Election Name</label>
                            <div class="input-group">
                                <select class="form-select" id="ElectionName" aria-label="Select Election Name" name="electionName" required>
                                    <c:forEach items="${Elections.rows}" var="Election">    
                                        <option value="${Election.election_id}">${Election.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="BirthDate" class="form-label">Birth Date</label>
                            <input type="date" class="form-control" name="birthDate" required>
                            <div class="invalid-feedback">
                                Please select birth date !
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="EmployeeId" class="form-label">Employee Id</label>
                            <div class="input-group has-validation">
                                <span class="input-group-text" id="inputGroupPrepend">#EMP</span>
                                <input type="text" class="form-control" name="employeeID" id="EmployeeId" maxlength="6" pattern="^[0-9]{6}$" aria-describe1dby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please provide valid employee id !
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <label for="ProfilPhoto" class="form-label">Upload Profile Photo</label>
                            <input class="form-control" accept=".jpg, .jpeg" type="file" name="profilePhoto" id="ProfilePhoto" required>
                            <div class="invalid-feedback">
                                Please choose profile photo !
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="GenderLbl" class="form-label">Gender</label>
                            <div class="input-group">
                                <div class="btn-group">
                                    <input type="radio" class="btn-check btn-outline-success" name="gender" id="Male" value="Male" autocomplete="off" checked>
                                    <label class="btn btn-outline-success" for="Male">Male</label>

                                    <input type="radio" class="btn-check btn-outline-success" name="gender" id="Female" value="Female" autocomplete="off">
                                    <label class="btn btn-outline-success" for="Female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="Address" class="form-label">About Candiate</label>
                            <textarea type="text" class="form-control" rows="3" maxlength="255" name="about" id="Address" required></textarea>
                            <div class="invalid-feedback">
                                Please provide brief introduction about candidate ! <br>
                                Like Slogans, Goals or Vision.
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>  
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="reset" class="btn btn btn-outline-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to reset the form.">Reset</button>
                            <button type="submit" class="btn btn-outline-success" data-bs-toggle="tooltip" id="btn-send" name="send" value="send-data" data-bs-placement="top" title="Click to register new candidate.">Register Candidate</button>
                        </div>
                        <div class="col-md-12">

                            <c:if test="${param.send == 'send-data'}">

                                <%
                                    Connection connection;
                                    PreparedStatement selectPosition;
                                    PreparedStatement preparedStatement;
                                    InputStream photoInput = null;
                                    Part part = null;
                                    
                                    part = request.getPart("profilePhoto");
                                    
                                    if (part != null) {
                                        photoInput = part.getInputStream();
                                    }
                                    
                                    try {

                                        MysqlDataSource mysqlDataSource = (MysqlDataSource) request.getServletContext().getAttribute("connection");
                                        connection = mysqlDataSource.getConnection();
                                        String query = "INSERT INTO candidates (candidate_id, election_id, employee_id, firstname, lastname, email, photo, phone, birth_date, gender, city, position, about) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                                        String position_name = "";

                                        // select position according to election_id
                                        selectPosition = connection.prepareStatement("SELECT position FROM elections WHERE election_id=?");
                                        selectPosition.setString(1, String.valueOf(request.getParameter("electionName")));
                                        ResultSet resultSet = selectPosition.executeQuery();
                                        while (resultSet.next()) {
                                            position_name = resultSet.getString("position");
                                        }

                                        if (photoInput != null && (photoInput.available() > 1000 && photoInput.available() < 1000000)) {

                                            preparedStatement = connection.prepareStatement(query);

                                            preparedStatement.setString(1, String.valueOf(request.getParameter("candidateID")));
                                            preparedStatement.setString(2, String.valueOf(request.getParameter("electionName")));
                                            preparedStatement.setString(3, "EMP" + String.valueOf(request.getParameter("employeeID")));
                                            preparedStatement.setString(4, String.valueOf(request.getParameter("firstName")));
                                            preparedStatement.setString(5, String.valueOf(request.getParameter("lastName")));
                                            preparedStatement.setString(6, String.valueOf(request.getParameter("email")));
                                            preparedStatement.setBlob(7, photoInput);
                                            preparedStatement.setString(8, String.valueOf(request.getParameter("phone")));
                                            preparedStatement.setString(9, String.valueOf(request.getParameter("birthDate")));
                                            preparedStatement.setString(10, String.valueOf(request.getParameter("gender")));
                                            preparedStatement.setString(11, String.valueOf(request.getParameter("city")));
                                            preparedStatement.setString(12, position_name);
                                            preparedStatement.setString(13, String.valueOf(request.getParameter("about")));

                                            if (preparedStatement.executeUpdate() > 0) {
                                                out.print("<div class='alert alert-success alert-dismissible d-flex align-items-center fade show'>"
                                                        + "<i class='bi-check-circle-fill'></i>"
                                                        + "<strong class='mx-2'>Success!</strong> Candidate has been registered successfully."
                                                        + "<button type='button' class='btn-close' data-bs-dismiss='alert'></button>"
                                                        + "</div>");
                                            } 
                                        } else {
                                            out.print("<div class='alert alert-warning alert-dismissible' role='alert'>"
                                                + "<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
                                                + "<h4 class='alert-heading'><i class='bi bi-exclamation-triangle-fill'></i> Oops, Something Went Wrong !</h4>"
                                                + "<p>File size must be between 10KB to 1MB !</p>"
                                                + "<hr>"
                                                + "<p class='mb-0'>Re-enter details and try again !</p>"
                                                + "</div>");
                                        }
                                    } catch (Exception ex) {
                                        out.print("<div class='alert alert-warning alert-dismissible' role='alert'>"
                                                + "<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>"
                                                + "<h4 class='alert-heading'> <i class='bi bi-exclamation-triangle-fill'></i> Oops, Something Went Wrong !</h4>"
                                                + "<p>" + ex + "</p>"
                                                + "<hr>"
                                                + "<p class='mb-0'>Re-enter details and try again !</p>"
                                                + "</div>");
                                    }
                                %>

                            </c:if>
                        </div>
                    </form><!-- End Form -->

                </div>
            </div><!-- End Add Voter Form -->

            <!-- Manage Voters Table -->
            <div class="col-12" id="candidate-table">
                <div class="card recent-sales overflow-auto">

                    <div class="card-body">
                        <h5 class="card-title">LostVote |<span> Manage Candidates</span></h5>

                        <sql:query dataSource="${applicationScope.connection}" var="Candidates">
                            SELECT * FROM candidates;
                        </sql:query>
                        <table class="table table-striped table-hover caption-top datatable">
                            <caption>You can manage candidates from below table.</caption> 
                            <thead>
                                <tr>
                                    <th scope="col">#CID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Birth Date</th>
                                    <th scope="col">Position</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${Candidates.rows}" var="Candidate">    
                                    <tr>
                                        <th scope="row"><a href="#">#${Candidate.candidate_id}</a></th>
                                        <td>${Candidate.firstname} ${Candidate.lastname}</td>
                                        <td>${Candidate.email}</td>
                                        <td>${Candidate.phone}</td>
                                        <td>${Candidate.birth_date}</td>
                                        <td>${Candidate.position}</td>
                                        <td class="text-center">
                                            <!--<a href="#" title="Edit" data-toggle="tooltip"><i class="bi bi-pen"></i></a>-->
                                            <a href="../deleteCandidate?id=${Candidate.candidate_id}" title="Delete" data-toggle="tooltip"><i class="bi bi-trash"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- End Manage Voters Table -->

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <jsp:include page="_footer.jsp" />
        <!-- ======= /Footer ======= -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>
</html>
