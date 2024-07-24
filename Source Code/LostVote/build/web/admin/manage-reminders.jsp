<%-- 
    Document   : manage-reminders
    Created on : 21 Jan, 2023, 9:14:26 PM
    Author     : mahin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="function" uri="/WEB-INF/tlds/dao-functions/functions"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>LostVote - Manage Reminders</title>

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

            function generateID() {
                var min = 100000;
                var max = 999999;
                return Math.floor(Math.random() * (max - min + 1)) + min;
            }

            $(document).ready(function () {
                var uniqueID = "RID" + generateID().toString();

                $("#txtreminderId").attr("value", uniqueID);
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
                <h1>Manage Reminders</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Home</a></li>
                        <li class="breadcrumb-item active">Manage Reminders</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <!-- Add Voter Form -->
            <div class="card" id="create-reminder">
                <div class="card-body">
                    <h5 class="card-title">Create New Reminder</h5>

                    <!-- Form -->
                    <form class="row g-3 needs-validation" method="post" action="manage-reminders" novalidate>
                        <div class="col-md-4">
                            <label for="lblreminderId" class="form-label">Auto Generated ID (Read only)</label>
                            <div class="input-group">
                                <span class="input-group-text" id="inputGroupPrepend">Reminder ID</span>
                                <input type="text" class="form-control" name="reminderID" readonly id="txtreminderId" aria-describe1dby="inputGroupPrepend" required>
                                <!-- <div class="invalid-feedback">
                                    Please provide valid employee id !
                                </div>
                                <div class="valid-feedback">
                                    Looks good!
                                </div> -->
                            </div> 
                        </div>
                        <div class="col-md-8">
                            <label for="RTitle" class="form-label">Title of Reminder</label>
                            <input type="text" name="title"pattern="^[a-zA-Z][a-zA-Z0-9 -]{4,64}$" class="form-control" id="RTitle" required>
                            <div class="invalid-feedback">
                                Please provide valid reminder title !
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>                        
                        <div class="col-md-12">
                            <label for="Address" class="form-label">Reminder Description</label>
                            <textarea type="text" name="description" maxlength="255" class="form-control" rows="3" id="Address" required></textarea>
                            <div class="invalid-feedback">
                                Please provide brief reminder description !
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>  
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="reset" class="btn btn btn-outline-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to reset the form.">Reset</button>
                            <button type="submit" class="btn btn-outline-success" id="btn-send" name="send" value="send-data" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to create new reminder.">Create Reminder</button>
                        </div>
                        <div class="col-md-12">
                            <c:if test="${param.send == 'send-data'}">

                                <c:set var="result" value="${function:insertReminder(applicationScope.connection, param.reminderID, param.title, param.description)}"/>

                                <c:choose>
                                    <c:when test="${result == 'Success'}">
                                        <div class="alert alert-success alert-dismissible d-flex align-items-center fade show">
                                            <i class="bi-check-circle-fill"></i>
                                            <strong class="mx-2">Success!</strong> Reminder has been created successfully.
                                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                        </div>
                                    </c:when>
                                    <c:when test="${result == 'title should be unique.'}">
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                            <p>Please check the <b>Title</b> of the reminder it <b>should be unique</b> through each reminder, and must contains <b>alphanumeric</b> value of the maximum length <b>64</b> !</p>
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

            <sql:query dataSource="${applicationScope.connection}" var="Reminders">
                SELECT * FROM reminders;
            </sql:query>
            <!-- Manage Voters Table -->
            <div class="col-12" id="reminder-table">
                <div class="card recent-sales overflow-auto">

                    <div class="card-body">
                        <h5 class="card-title">LostVote |<span> Manage Reminders</span></h5>

                        <table class="table table-striped table-hover caption-top datatable">
                            <caption>You can manage reminders from below table.</caption> 
                            <thead>
                                <tr>
                                    <th scope="col">#RID</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${Reminders.rows}" var="Reminder">    
                                    <tr>
                                        <th scope="row"><a href="#">#${Reminder.reminder_id}</a></th>
                                        <td>${Reminder.title}</td>
                                        <td>${Reminder.description}</td>
                                        <td class="text-center">
                                            <!--<a href="#" title="Edit" data-toggle="tooltip"><i class="bi bi-pen"></i></a>-->
                                            <a href="../deleteReminder?id=${Reminder.reminder_id}" title="Delete" data-toggle="tooltip"><i class="bi bi-trash"></i></a>
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