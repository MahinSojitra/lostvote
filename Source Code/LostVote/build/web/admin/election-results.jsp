<%-- 
    Document   : election-results
    Created on : 28 Jan, 2023, 10:28:24 PM
    Author     : mahin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>LostVote - Election Results</title>

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
                <h1>Dashboard</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Home</a></li>
                        <li class="breadcrumb-item active">Result</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <sql:query dataSource="${applicationScope.connection}" var="Elections">
                SELECT election_id, name FROM elections;
            </sql:query>
            <!-- Select Election Form -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Choose Election | <span> Choose the election whose result you want to see.</span></h5>
                    <!-- Form -->
                    <form class="row g-3 needs-validation" method="post" action="election-results#election-table" novalidate>
                        <div class="col-md-4"> <!-- spacing div --> </div>
                        <div class="col-md-4">
                            <label for="selectElection" class="form-label">Choose the Election</label>
                            <select class="form-select" aria-label="Select election" name="selectElection" required>
                                <c:forEach items="${Elections.rows}" var="Election">    
                                    <option value="${Election.election_id}" <c:if test="${param.send == 'send-data'}"><c:if test="${param.selectElection == Election.election_id}">selected</c:if></c:if> >${Election.name}</option>
                                    <c:set var="hasElections" value="Yes" />
                                </c:forEach>
                                <c:if test="${empty hasElections}">
                                    <option value="NoElections" selected disabled>No elections are avaliable !</option>
                                </c:if>
                            </select>
                            <div class="invalid-feedback">
                                Please choose any election !
                            </div>
                        </div>
                        <div class="col-md-4"> <!-- spacing div --> </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button type="submit" class="btn btn-outline-success" id="btn-send" name="send" value="send-data" data-bs-toggle="tooltip" data-bs-placement="top" title="Click to see the result of selected election.">Show Result</button>
                        </div>
                    </form><!-- End Form -->

                </div>
            </div><!-- End Select Election Form -->
            <c:if test="${param.send == 'send-data'}">
                <sql:query dataSource="${applicationScope.connection}" var="Votes">
                    SELECT * FROM votes where election_id = '${param.selectElection}';
                </sql:query>
            </c:if>
            <!-- Manage Voters Table -->
            <div class="col-12" id="election-table">
                <div class="card recent-sales overflow-auto">

                    <div class="card-body">
                        <h5 class="card-title">LostVote |<span> Votes</span></h5>

                        <table class="table table-striped table-hover caption-top datatable">
                            <caption>You can see votes in below table.</caption> 
                            <thead>
                                <tr>
                                    <th scope="col">#Vote ID</th>
                                    <th scope="col">#Voter ID</th>
                                    <th scope="col">#Candidate ID</th>
                                    <th scope="col">#Election ID</th>
                                    <th scope="col">Vote Cast Timing</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${param.send == 'send-data'}">
                                    <c:forEach items="${Votes.rows}" var="Vote">    
                                        <tr>
                                            <th scope="row"><a href="#">#${Vote.vote_id}</a></th>
                                            <td>#${Vote.voter_id}</td>
                                            <td>#${Vote.candidate_id}</td>
                                            <td>#${Vote.election_id}</td>
                                            <td>${Vote.time_stmp}</td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- End Manage Voters Table -->
        </main>

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
