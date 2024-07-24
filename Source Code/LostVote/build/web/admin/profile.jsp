<%-- 
    Document   : user-profile
    Created on : 19 Jan, 2023, 8:57:56 AM
    Author     : mahin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="function" uri="/WEB-INF/tlds/dao-functions/functions"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>LostVote - Admin Profile</title>
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
            // insert .active (class) in currently active profile section   
            $(document).ready(function () {

                var current_file = window.location.href.split('/').pop();
                var current_section = current_file.toString().split("#").pop();

                if (current_section === "profile-overview") {
                    $("#btnProfileOverview").attr("class", "nav-link active");
                    $("#btnProfileEdit").attr("class", "nav-link");
                    $("#btnProfileChangePassword").attr("class", "nav-link");

                    $("#profile-overview").attr("class", "tab-pane fade active show profile-overview");
                    $("#profile-edit").attr("class", "tab-pane fade profile-edit pt-3");
                    $("#profile-change-password").attr("class", "tab-pane fade pt-3");

                } else if (current_section === "profile-edit") {
                    $("#btnProfileOverview").attr("class", "nav-link");
                    $("#btnProfileEdit").attr("class", "nav-link active");
                    $("#btnProfileChangePassword").attr("class", "nav-link");

                    $("#profile-overview").attr("class", "tab-pane fade profile-overview");
                    $("#profile-edit").attr("class", "tab-pane fade active show profile-edit pt-3");
                    $("#profile-change-password").attr("class", "tab-pane fade pt-3");

                } else if (current_section === "profile-change-password") {
                    $("#btnProfileOverview").attr("class", "nav-link");
                    $("#btnProfileEdit").attr("class", "nav-link");
                    $("#btnProfileChangePassword").attr("class", "nav-link active");

                    $("#profile-overview").attr("class", "tab-pane fade profile-overview");
                    $("#profile-edit").attr("class", "tab-pane fade profile-edit pt-3");
                    $("#profile-change-password").attr("class", "tab-pane active show fade pt-3");

                } else {
                    $("#btnProfileOverview").attr("class", "nav-link active");
                    $("#btnProfileEdit").attr("class", "nav-link");
                    $("#btnProfileChangePassword").attr("class", "nav-link");

                    $("#profile-overview").attr("class", "tab-pane fade active show profile-overview");
                    $("#profile-edit").attr("class", "tab-pane fade profile-edit pt-3");
                    $("#profile-change-password").attr("class", "tab-pane fade pt-3");
                }
            });
        </script>
    </head>
    <body>

        <!-- ======= Header ======= -->
        <jsp:include page="_header.jsp" />
        <!-- ======= /Header ======= -->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Profile</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Home</a></li>
                        <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section profile">
                <div class="row">

                    <div class="col-xl-12">

                        <div class="card">
                            <div class="card-body pt-3">
                                <!-- Bordered Tabs -->
                                <ul class="nav nav-tabs nav-tabs-bordered">

                                    <li class="nav-item">
                                        <button class="nav-link" id="btnProfileOverview" data-bs-toggle="tab" data-bs-target="#profile-overview">Profile Overview</button>
                                    </li>

                                    <li class="nav-item">
                                        <button class="nav-link" id="btnProfileEdit" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
                                    </li>

                                    <li class="nav-item">
                                        <button class="nav-link" id="btnProfileChangePassword" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
                                    </li>

                                </ul>

                                <sql:query dataSource="${applicationScope.connection}" var="profileDetails">
                                    SELECT * FROM admins WHERE admin_id='${sessionScope.adminID}' 
                                </sql:query>

                                <c:forEach items="${profileDetails.rows}" var="data">
                                    <c:set var="VadminID" value="${data.admin_id}"/>
                                    <c:set var="VuserName" value="${data.username}"/>
                                    <c:set var="VfirstName" value="${data.firstname}"/>
                                    <c:set var="VlastName" value="${data.lastname}"/>
                                    <c:set var="Vemail" value="${data.email}"/>
                                    <c:set var="Vphone" value="${data.phone}"/>
                                    <c:set var="Vgender" value="${data.gender}"/>
                                </c:forEach>

                                <div class="tab-content pt-2">

                                    <div class="tab-pane fade active show profile-overview" id="profile-overview">

                                        <h5 class="card-title">Profile Details</h5>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Admin ID</div>
                                            <div class="col-lg-9 col-md-8"><b>#</b>${VadminID}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Username</div>
                                            <div class="col-lg-9 col-md-8"><b>@</b>${VuserName}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Full Name</div>
                                            <div class="col-lg-9 col-md-8">${VfirstName} ${VlastName}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Email</div>
                                            <div class="col-lg-9 col-md-8">${Vemail}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Phone</div>
                                            <div class="col-lg-9 col-md-8">${Vphone}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Gender</div>
                                            <div class="col-lg-9 col-md-8">${Vgender}</div>
                                        </div>

                                    </div>

                                    <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                        <!-- Profile Edit Form -->
                                        <form class="needs-validation" action="profile#profile-edit" method="post" novalidate>

                                            <div class="row mb-3">
                                                <label for="UName" class="col-md-4 col-lg-3 col-form-label">Username</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="userName" type="text" value="${VuserName}" pattern="^[A-Za-z0-9]{5,64}$" class="form-control" id="UName" required>
                                                    <div class="invalid-feedback">
                                                        Please choose a valid username ! <br>(It should contains alphabets and numbers)
                                                    </div>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="FName" class="col-md-4 col-lg-3 col-form-label">First Name</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="firstName" type="text" pattern="^[a-zA-Z][a-zA-Z ]{2,64}$" value="${VfirstName}" class="form-control" id="FName" required>
                                                    <div class="invalid-feedback">
                                                        Please provide valid first name ! <br>(Only alphabets are allowed)
                                                    </div>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="LName" class="col-md-4 col-lg-3 col-form-label">Last Name</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="lastName" type="text" value="${VlastName}" pattern="^[a-zA-Z][a-zA-Z ]{2,64}$" class="form-control" id="LName" required>
                                                    <div class="invalid-feedback">
                                                        Please provide valid last name ! <br>(Only alphabets are allowed)
                                                    </div>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="emailID" class="col-md-4 col-lg-3 col-form-label">Email Address</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="email" type="email" value="${Vemail}" class="form-control" id="emailID" required>
                                                    <div class="invalid-feedback">
                                                        Please provide valid email !
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="phoneNO" class="col-md-4 col-lg-3 col-form-label">Phone Number</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="phone" type="text" value="${Vphone}" pattern="^[0-9]{10}$" class="form-control" id="phone" maxlength="10" required>
                                                    <div class="invalid-feedback">
                                                        Please provide valid phone no !
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" id="btn-send" name="send" value="send-data" class="btn btn-primary">Save Changes</button>
                                            </div>

                                            <div class="row m-3">
                                                <c:if test="${param.send == 'send-data'}">

                                                    <c:set var="result" value="${function:updateAdmin(applicationScope.connection, sessionScope.adminID, param.userName, param.firstName, param.lastName, param.email, param.phone)}"/>

                                                    <c:choose>
                                                        <c:when test="${result == 'Success'}">
                                                            <div class="alert alert-success alert-dismissible d-flex align-items-center fade show">
                                                                <i class="bi-check-circle-fill"></i>
                                                                <strong class="mx-2">Success!</strong> Your profile changes has been saved. 
                                                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
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
                                                                <p>Please check the <b>Email Address</b> of the admin it <b>should be unique</b> through each admin, Please enter another email !</p>
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
                                        </form><!-- End Profile Edit Form -->

                                    </div>

                                    <div class="tab-pane fade pt-3" id="profile-change-password">
                                        <!-- Change Password Form -->
                                        <form class="needs-validation" action="profile#profile-change-password" method="post" novalidate>
                                            <div class="row mb-3">
                                                <label for="CPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="currentPassword" type="password" maxlength="8" minlength="8" class="form-control" id="CPassword" required>
                                                    <div class="invalid-feedback">
                                                        Please provide current password !
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="NPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="newPassword" type="password" maxlength="8" minlength="8" class="form-control" id="NPassword" required>
                                                    <div class="invalid-feedback">
                                                        Please provide new password !
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="CNFPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="confirmPassword" type="password" maxlength="8" minlength="8" class="form-control" id="CNFPassword" required>
                                                    <div class="invalid-feedback">
                                                        Please re-enter new password !
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" id="btn-send-password" name="sendPassword" value="send-password-data" class="btn btn-primary">Change Password</button>
                                            </div>

                                            <div class="row m-3">
                                                <c:if test="${param.sendPassword == 'send-password-data'}">

                                                    <c:set var="result" value="${function:updateAdminPassword(applicationScope.connection, sessionScope.adminID, param.currentPassword, param.newPassword, param.confirmPassword)}"/>

                                                    <c:choose>
                                                        <c:when test="${result == 'Success'}">
                                                            <div class="alert alert-success alert-dismissible d-flex align-items-center fade show">
                                                                <i class="bi-check-circle-fill"></i>
                                                                <strong class="mx-2">Success!</strong> Your password changed successfully.
                                                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                                            </div>
                                                        </c:when>
                                                        <c:when test="${result == 'newPassword and currentPassword are not match.'}">
                                                            <div class="alert alert-warning alert-dismissible" role="alert">
                                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                                <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                                                <p>Please check the <b>New password and Re-entered Password</b>, they are not match !</p>
                                                                <hr>
                                                                <p class="mb-0">Re-enter details and try again !</p>
                                                            </div>
                                                        </c:when>
                                                        <c:when test="${result == 'password is wrong.'}">
                                                            <div class="alert alert-warning alert-dismissible" role="alert">
                                                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                                                <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                                                <p>Your <b>Current Password</b> is incorrect, Re-enter your current password !</p>
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

                                        </form><!-- End Change Password Form -->

                                    </div>

                                </div><!-- End Bordered Tabs -->

                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <jsp:include page="_footer.jsp" />
        <!-- ======= /Footer ======= -->

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
