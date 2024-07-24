<%-- 
    Document   : manage-elections
    Created on : 21 Jan, 2023, 8:41:44 PM
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
        <title>LostVote - Manage Elections</title>

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
                var uniqueID = "EID" + generateID().toString();

                $("#txtelectionID").attr("value", uniqueID);
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
                <h1>Manage Elections</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Home</a></li>
                        <li class="breadcrumb-item active">Manage Elections</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <!-- Add Voter Form -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Create New Election</h5>

                    <!-- Form -->
                    <form class="row g-3 needs-validation" method="post" action="manage-elections" novalidate>
                        <div class="col-md-4">
                            <label for="lblelectionID" class="form-label">Auto Generated ID (Read only)</label>
                            <div class="input-group">
                                <span class="input-group-text" id="inputGroupPrepend">Election ID</span>
                                <input type="text" class="form-control" name="electionID" readonly id="txtelectionID" aria-describe1dby="inputGroupPrepend" required>
                                <!-- <div class="invalid-feedback">
                                    Please provide valid employee id !
                                </div>
                                <div class="valid-feedback">
                                    Looks good!
                                </div> -->
                            </div> 
                        </div>
                        <div class="col-md-8">
                            <label for="Elename" class="form-label">Election Name</label>
                            <input type="text" class="form-control" pattern="^[a-zA-Z][a-zA-Z0-9 -]{4,64}$" name="name" id="Elename" required>
                            <div class="invalid-feedback">
                                Please provide valid election name !
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="electionSDate" class="form-label">Election starting date</label>
                            <input type="date" class="form-control" name="startDate" id="electionSDate" required>
                            <div class="invalid-feedback">
                                Please select election starting date !
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="electionEDate" class="form-label">Election ending date</label>
                            <input type="date" class="form-control" name="endDate" id="electionEDate" required>
                            <div class="invalid-feedback">
                                Please select election ending date !
                            </div>
                        </div>                        
                        <div class="col-md-4">
                            <label for="ElectPosition" class="form-label">Election Position</label>
                            <div class="input-group">
                                <select class="form-select" aria-label="Select Position" name="position" required>
                                    <option value="Chief Technology Officer" selected>Chief Technology Officer</option>
                                    <option value="Senior Manager">Senior Manager</option>
                                    <option value="Chief Operating Officer">Chief Operating Officer</option>
                                    <option value="Chief Financial Officer">Chief Financial Officer</option>
                                    <option value="Chief Marketing Officer">Chief Marketing Officer</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="Address" class="form-label">Description</label>
                            <textarea type="text" class="form-control" rows="3" name="description" maxlength="255" id="electionDesc" required></textarea>
                            <div class="invalid-feedback">
                                Please provide brief description about election ! <br>
                            </div>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>  
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="reset" class="btn btn btn-outline-secondary" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to reset the form.">Reset</button>
                            <button type="submit" class="btn btn-outline-success" data-bs-toggle="tooltip" id="btn-send" name="send" value="send-data" data-bs-placement="top" title="Click to create new election.">Create Election</button>
                        </div>
                        <div class="col-md-12">
                            <c:if test="${param.send == 'send-data'}">

                                <c:set var="result" value="${function:insertElection(applicationScope.connection, param.electionID, param.startDate, param.endDate, param.description, param.name, param.position)}"/>

                                <c:choose>
                                    <c:when test="${result == 'Success'}">
                                        <div class="alert alert-success alert-dismissible d-flex align-items-center fade show">
                                            <i class="bi-check-circle-fill"></i>
                                            <strong class="mx-2">Success!</strong> Election has been created successfully.
                                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                        </div>
                                    </c:when>
                                    <c:when test="${result == 'name should be unique.'}">
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                            <p>Please check the <b>Name</b> of the election it <b>should be unique</b> through each election, and must contains <b>alphabets</b> of the maximum length <b>64</b> !</p>
                                            <hr>
                                            <p class="mb-0">Re-enter details and try again !</p>
                                        </div>
                                    </c:when>
                                    <c:when test="${result == 'position should be unique.'}">
                                        <div class="alert alert-warning alert-dismissible" role="alert">
                                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                            <h4 class="alert-heading"> <i class="bi bi-exclamation-triangle-fill"></i> Oops, Something Went Wrong !</h4>
                                            <p>Please check the <b>Position</b> of the election it <b>should be unique</b> through each election, Please select another position !</p>
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

            <sql:query dataSource="${applicationScope.connection}" var="Elections">
                SELECT * FROM elections;
            </sql:query>
            <!-- Manage Voters Table -->
            <div class="col-12" id="election-table">
                <div class="card recent-sales overflow-auto">

                    <div class="card-body">
                        <h5 class="card-title">LostVote |<span> Manage Elections</span></h5>

                        <table class="table table-striped table-hover caption-top datatable">
                            <caption>You can manage elections from below table.</caption> 
                            <thead>
                                <tr>
                                    <th scope="col">#EID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Start Date</th>
                                    <th scope="col">End Date</th>
                                    <th scope="col">Position</th>
                                    <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${Elections.rows}" var="Election">    
                                    <tr>
                                        <th scope="row"><a href="#">#${Election.election_id}</a></th>
                                        <td>${Election.name}</td>
                                        <td>${Election.start_date}</td>
                                        <td>${Election.end_date}</td>
                                        <td>${Election.position}</td>
                                        <td class="text-center">
                                            <!--<a href="#" title="Edit" data-toggle="tooltip"><i class="bi bi-pen"></i></a>-->
                                            <a href="../deleteElection?id=${Election.election_id}" title="Delete" data-toggle="tooltip"><i class="bi bi-trash"></i></a>
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
