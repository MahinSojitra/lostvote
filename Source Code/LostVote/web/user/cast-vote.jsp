<%-- 
    Document   : cast-vote
    Created on : 30 Jan, 2023, 12:21:41 PM
    Author     : mahin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <title>LostVote - Dashboard</title>

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
                        <li class="breadcrumb-item active">Cast Vote</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <%
                try {
                    int length = 0, i = 0;
                    Connection connection;
                    MysqlDataSource mysqlDataSource = (MysqlDataSource) application.getAttribute("connection");
                    connection = mysqlDataSource.getConnection();

                    PreparedStatement preparedVotedElections = connection.prepareStatement("SELECT election_id FROM votes WHERE voter_id=?");
                    preparedVotedElections.setString(1, String.valueOf(session.getAttribute("voterID")));

                    ResultSet rsVotedElections = preparedVotedElections.executeQuery();

                    while (rsVotedElections.next()) {
                        length = length + 1;
                    }

                    rsVotedElections.beforeFirst();

                    String[] array = new String[length];
                    while (rsVotedElections.next()) {
                        array[i] = "'" + rsVotedElections.getString("election_id") + "'";
                        i = i + 1;
                    }

                    String listOfVotedElection = "";
                    for (String value : array) {
                        if (listOfVotedElection != "") {
                            listOfVotedElection += "," + value;
                        } else {
                            listOfVotedElection += value;
                        }
                    }

                    session.setAttribute("listOfVotedElection", listOfVotedElection);

                } catch (Exception ex) {
                    System.out.println(ex);
                }
            %>

            <c:if test="${sessionScope.listOfVotedElection != ''}" >
                <sql:query dataSource="${applicationScope.connection}" var="Elections">
                    SELECT election_id, name FROM elections WHERE election_id NOT IN (${sessionScope.listOfVotedElection});
                </sql:query>
            </c:if>

            <c:if test="${sessionScope.listOfVotedElection == ''}" >
                <sql:query dataSource="${applicationScope.connection}" var="Elections">
                    SELECT election_id, name FROM elections;
                </sql:query>
            </c:if>

            <!-- Select Election Form -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Choose Election | <span> Choose the election whose candidates you want to see.</span></h5>
                    <!-- Form -->
                    <form class="row g-3 needs-validation" method="post" novalidate>
                        <div class="col-md-4"> <!-- spacing div --> </div>
                        <div class="col-md-4">
                            <label for="selectElection" class="form-label">Choose the Election</label>
                            <select class="form-select" aria-label="Select election" name="selectElection" required>
                                <c:forEach items="${Elections.rows}" var="Election">    
                                    <option value="${Election.election_id}" <c:if test="${param.send == 'send-data'}"><c:if test="${param.selectElection == Election.election_id}">selected</c:if></c:if>>${Election.name}</option>
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
                            <button type="submit" id="btn-send" name="send" value="send-data" class="btn btn-outline-success">Show Candidates</button>
                        </div>
                    </form><!-- End Form -->

                </div>
            </div><!-- End Select Election Form -->

            <section class="section profile">
                <div class="row">
                    <c:if test="${param.send == 'send-data'}">

                        <sql:query dataSource="${applicationScope.connection}" var="Candidates">
                            SELECT * FROM candidates WHERE election_id='${param.selectElection}';
                        </sql:query>

                        <c:forEach items="${Candidates.rows}" var="Candidate">    
                            <div class="col-xl-3">
                                <div class="card">
                                    <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                                        <img src="../GetCandidateImage?id=${Candidate.candidate_id}" alt="Profile" class="rounded-circle">
                                        <h2>${Candidate.firstname} ${Candidate.lastname}</h2>
                                        <div class="social-links mt-2">
                                            <form method="post" action="../CastVote?vid=${sessionScope.voterID}&cid=${Candidate.candidate_id}&eid=${param.selectElection}">
                                                <button type="button" title="View ${Candidate.firstname}'s Infromation." data-toggle="tooltip" data-bs-toggle="modal" data-bs-target="#InfoModal${Candidate.candidate_id}" class="btn btn-outline-success btn-sm"><i class="bi bi-info-circle"></i> Information</button>
                                                <button type="submit" id="btn-cast-vote" name="sendVote" value="send-vote" title="Vote for ${Candidate.firstname} ${Candidate.lastname}." data-toggle="tooltip" class="btn btn-outline-primary btn-sm"><i class="bi bi-hand-index-thumb"></i> Give Vote</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal fade" id="InfoModal${Candidate.candidate_id}" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-scrollable modal-lg">
                                        <div class="modal-content">
                                            <div class="modal-header border border-1 bg-warning-light">
                                                <h5 class="modal-title"><center><i class="bi text-success bi-person-fill"></i> Candidate Information</center></h5>
                                            </div>
                                            <div class="modal-body border border-2 m-3">
                                                <b>Name : </b>${Candidate.firstname} ${Candidate.lastname} <br>
                                                <b>Position : </b>${Candidate.position} <br>
                                                <b>Email : </b>${Candidate.email} <br>
                                                <b>Phone : </b>${Candidate.phone} <br>
                                                <b>City : </b>${Candidate.city} <br>
                                                <b>Birth Date : </b>${Candidate.birth_date} <br>
                                                <b>Gender : </b>${Candidate.gender} <c:if test="${Candidate.gender == 'Male'}"><i class="bi text-success bi-gender-male"></i></c:if><c:if test="${Candidate.gender == 'Female'}"><i class="bi text-success bi-gender-female"></i></c:if> <br><br>
                                                <b class="text-decoration-underline">About ${Candidate.firstname} ${Candidate.lastname} : </b> <br> <p class="text-justify"> &nbsp; &nbsp; &nbsp; &nbsp; ${Candidate.about}</p>
                                            </div>
                                            <div class="modal-footer border border-1 bg-warning-light">
                                                <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- End Large Modal-->
                            </div>
                        </c:forEach>
                    </c:if>
                </div>
            </section>
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
