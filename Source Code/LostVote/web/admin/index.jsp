<%-- 
    Document   : index
    Created on : 19 Jan, 2023, 8:46:32 AM
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
        <title>LostVote - Admin Dashboard</title>

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
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section dashboard">
                <div class="row">

                    <sql:query dataSource="${applicationScope.connection}" var="TotalElections">
                        SELECT COUNT(*) as electionCount FROM elections; 
                    </sql:query>
                    <c:forEach items="${TotalElections.rows}" var="ElectionData" >
                        <c:set var="electionCount" value="${ElectionData.electionCount}" />
                    </c:forEach>    

                    <sql:query dataSource="${applicationScope.connection}" var="TotalCandidates">
                        SELECT COUNT(*) as candidateCount FROM candidates; 
                    </sql:query>
                    <c:forEach items="${TotalCandidates.rows}" var="CandidateData" >
                        <c:set var="candidateCount" value="${CandidateData.candidateCount}" />
                    </c:forEach>

                    <sql:query dataSource="${applicationScope.connection}" var="TotalVoters">
                        SELECT COUNT(*) as voterCount FROM voters; 
                    </sql:query>
                    <c:forEach items="${TotalVoters.rows}" var="VoterData" >
                        <c:set var="voterCount" value="${VoterData.voterCount}" />
                    </c:forEach>

                    <sql:query dataSource="${applicationScope.connection}" var="TotalVotes">
                        SELECT COUNT(*) as voteCount FROM votes; 
                    </sql:query>
                    <c:forEach items="${TotalVotes.rows}" var="VoteData" >
                        <c:set var="voteCount" value="${VoteData.voteCount}" />
                    </c:forEach>

                    <!-- Left side columns -->
                    <div class="col-lg-7">
                        <div class="row">

                            <!-- Election Result Graph -->
                            <div class="card">

                                <div class="card-body pb-0">
                                    <h5 class="card-title">Portal's Data | <span>Refresh the page to see the change.</span></h5>
                                    <div id="trafficChart" style="min-height: 400px;" class="echart"></div>

                                    <script>
                                        document.addEventListener("DOMContentLoaded", () => {
                                            
                                            var electionCount = ${electionCount}
                                            var candidateCount = ${candidateCount}
                                            var voterCount = ${voterCount}
                                            var voteCount = ${voteCount}
                                           
                                            echarts.init(document.querySelector("#trafficChart")).setOption({
                                                tooltip: {
                                                    trigger: 'item'
                                                },
                                                legend: {
                                                    top: '5%',
                                                    left: 'center'
                                                },
                                                series: [{
                                                        name: 'Access from LostVote',
                                                        type: 'pie',
                                                        radius: ['40%', '70%'],
                                                        avoidLabelOverlap: false,
                                                        label: {
                                                            show: false,
                                                            position: 'center'
                                                        },
                                                        emphasis: {
                                                            label: {
                                                                show: true,
                                                                fontSize: '18',
                                                                fontWeight: 'bold'
                                                            }
                                                        },
                                                        labelLine: {
                                                            show: false
                                                        },
                                                        data: [
                                                            {
                                                                value: electionCount,
                                                                name: 'Elections'
                                                            },
                                                            {
                                                                value: candidateCount,
                                                                name: 'Candidates'
                                                            },
                                                            {
                                                                value: voterCount,
                                                                name: 'Voters'
                                                            },
                                                            {
                                                                value: voteCount,
                                                                name: 'Votes'
                                                            }
                                                        ]
                                                    }]
                                            });
                                        });
                                    </script>

                                </div>
                            </div><!-- End Election Result Graph -->
                        </div>
                    </div><!-- End Left side columns -->

                    <sql:query dataSource="${applicationScope.connection}" var="Elections">
                        SELECT * FROM elections ORDER BY start_date ASC;
                    </sql:query>
                    <!-- Right side columns -->
                    <div class="col-lg-5">
                        <!-- Recent Elections -->
                        <div class="card">

                            <div class="card-body">
                                <h5 class="card-title">Elections</h5>

                                <div class="activity">
                                    <c:forEach items="${Elections.rows}" var="Election">    
                                        <div class="activity-item d-flex">
                                            <div class="activite-label">${Election.start_date} &nbsp; </div>
                                            <i class='bi bi-circle-fill activity-badge text-warning align-self-start'></i>
                                            <div class="activity-content">
                                                <b>Name : </b> ${Election.name} <br>
                                                <b>Description : </b> ${Election.description} <br>
                                                <b>Position : </b> ${Election.position} 
                                            </div>
                                        </div><!-- End election item--> 
                                    </c:forEach>
                                </div>

                            </div>
                        </div><!-- End Recent Elections -->
                    </div><!-- End Right side columns -->

                </div>

            </section>
                                            
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
