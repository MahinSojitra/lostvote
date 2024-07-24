<%-- 
    Document   : manage-voters
    Created on : 21 Jan, 2023, 8:44:07 AM
    Author     : mahin
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="function" uri="/WEB-INF/tlds/dao-functions/functions"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>LostVote - Manage Voters</title>

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

        <script type="text/javascript">

            function generatePassword() {
                var pass = '';
                var str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' +
                        'abcdefghijklmnopqrstuvwxyz0123456789@#';

                for (let i = 1; i <= 8; i++) {
                    var char = Math.floor(Math.random() * str.length + 1);
                    pass += str.charAt(char);
                }

                return pass;
            }

            function generateID() {
                var min = 100000;
                var max = 999999;
                return Math.floor(Math.random() * (max - min + 1)) + min;
            }

            $(document).ready(function () {
                var uniqueID = "VID" + generateID().toString();
                var uniquePassword = generatePassword();

                $("#txtvoterID").attr("value", uniqueID);
                $("#txtAutoGPassword").attr("value", uniquePassword);
            });
        </script>
        <script>
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
                <h1>Manage Voters</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Home</a></li>
                        <li class="breadcrumb-item active">Manage Voters</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <!-- Add Voter Form -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Register Voter</h5>

                    <!-- Form -->
                    <form class="row g-3 needs-validation" method="post" action="manage-voters" novalidate>
                        <div class="col-md-4">
                            <label for="lblvoterID" class="form-label">Auto Generated ID (Read only)</label>
                            <div class="input-group">
                                <span class="input-group-text" id="inputGroupPrepend">Voter ID</span>
                                <input type="text" class="form-control"  name="voterID" readonly id="txtvoterID" aria-describe1dby="inputGroupPrepend" required>
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
                            <label for="Username" class="form-label">Username</label>
                            <div class="input-group has-validation">
                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                <input type="text" class="form-control" name="userName" pattern="^[A-Za-z0-9]{5,64}$" id="Username" aria-describe1dby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please choose a valid username ! <br> (It should contains alphabets and numbers)
                                </div>
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
                            <input type="text" class="form-control" name="phone" id="PhoneNo" maxlength="10" pattern="^[0-9]{10}$" required>
                            <div class="invalid-feedback">
                                Please provide valid phone number !
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-8">
                            <label for="AadharNumber" class="form-label">Aadhar No</label>
                            <div class="input-group has-validation">
                                <span class="input-group-text" id="inputGroupPrepend">Aadhar</span>
                                <input type="text" class="form-control" name="aadharNO" maxlength="12" pattern="^[0-9]{12}$" id="AadharNumber" aria-describe1dby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Please provide valid aadhar number !
                                </div>
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
                            <label for="lblAutoGPassword" class="form-label">Auto Generated Password (Read only)</label>
                            <div class="input-group">
                                <span class="input-group-text" id="inputGroupPrepend">Password</span>
                                <input type="text" class="form-control" name="password" readonly id="txtAutoGPassword" aria-describe1dby="inputGroupPrepend" required>
                                <!-- <div class="invalid-feedback">
                                    Please provide valid employee id !
                                </div>
                                <div class="valid-feedback">
                                    Looks good!
                                </div> -->
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <label for="GenderLbl" class="form-label">Gender</label>
                            <div class="input-group">
                                <div class="btn-group">
                                    <input type="radio" class="btn-check btn-outline-success" name="gender" value="Male" id="Male" autocomplete="off" checked>
                                    <label class="btn btn-outline-success" for="Male">Male</label>

                                    <input type="radio" class="btn-check btn-outline-success" name="gender" value="Female" id="Female" autocomplete="off">
                                    <label class="btn btn-outline-success" for="Female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="reset" class="btn btn btn-outline-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to reset the form.">Reset</button>
                            <button type="submit" class="btn btn-outline-success" data-bs-toggle="tooltip" id="btn-send" name="send" value="send-data" data-bs-placement="top" title="Click to register new voter.">Register Voter</button>
                        </div>
                        <div class="col-md-12">
                            <c:if test="${param.send == 'send-data'}">

                                <c:set var="result" value="${function:insertVoter(applicationScope.connection, param.voterID, param.firstName, param.lastName, param.userName, param.email, param.phone, param.aadharNO, param.employeeID, param.password, param.gender)}"/>

                                <c:choose>
                                    <c:when test="${result == 'Success'}">
                                        <div class="alert alert-success alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-check-circle-fill"></i> Success!</h4>
                                            <p>Voter has been registered successfully.</p>
                                            <hr>
                                            <p class="mb-0">Credentials has been sent at : <b>${param.email}</b></p>
                                        </div>
                                    </c:when>
                                    <c:when test="${result == 'employeeID should be unique.'}">
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                            <p>Please check the <b>Employee ID</b> of the employee it <b>should be unique</b> through each employee, and must contains <b>alphanumeric</b> values of the maximum length <b>9</b> !</p>
                                            <hr>
                                            <p class="mb-0">Re-enter details and try again !</p>
                                        </div>
                                    </c:when>
                                    <c:when test="${result == 'username should be unique.'}">
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                            <p>Please check the <b>Username</b>, it is already exist !</p>
                                            <hr>
                                            <p class="mb-0">Re-enter details and try again !</p>
                                        </div>
                                    </c:when>
                                    <c:when test="${result == 'email should be unique.'}">
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                            <p>Please check the <b>Email Address</b> of the voter it <b>should be unique</b> through each voter, Please enter another email !</p>
                                            <hr>
                                            <p class="mb-0">Re-enter details and try again !</p>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Error !</h4>
                                            <p>${result}</p>
                                            <hr>
                                            <p class="mb-0">Re-enter details and try again !</p>
                                        </div>
                                    </c:otherwise>
                                </c:choose>    
                            </c:if>
                        </div>
                    </form><!-- End Form -->

                </div>
            </div><!-- End Add Voter Form -->

            <!-- Manage Voters Table -->
            <div class="col-12" id="voter-table">
                <div class="card recent-sales overflow-auto">

                    <div class="card-body">
                        <h5 class="card-title">LostVote |<span> Manage Voters</span></h5>

                        <sql:query dataSource="${applicationScope.connection}" var="Voters">
                            SELECT * FROM voters;
                        </sql:query>
                        <table class="table table-striped table-hover caption-top datatable">
                            <caption>You can manage voters from below table.</caption> 
                            <thead>
                                <tr>
                                    <th scope="col">#VID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">User Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Aadhar No</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${Voters.rows}" var="Voter">    
                                    <tr>
                                        <th scope="row"><a href="#">#${Voter.voter_id}</a></th>
                                        <td>${Voter.firstname} ${Voter.lastname}</td>
                                        <td>${Voter.username}</td>
                                        <td>${Voter.email}</td>
                                        <td>${Voter.phone}</td>
                                        <td>${Voter.aadhar_no}</td>
                                        <td class="text-center">
                                            <!--<a href="#" data-toggle="tooltip" title="Edit"><i class="bi bi-pen"></i></a>-->
                                            <a href="../deleteVoter?id=${Voter.voter_id}" data-toggle="tooltip" title="Delete"><i class="bi bi-trash"></i></a>
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
