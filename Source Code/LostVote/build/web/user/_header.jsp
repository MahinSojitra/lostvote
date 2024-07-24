<%-- 
    Document   : _header
    Created on : 19 Jan, 2023, 8:39:20 AM
    Author     : mahin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">

    // insert .active (class) in currently active li according to url   
    $(document).ready(function () {

        var current_file = window.location.pathname.split('/').pop();
        var href = new Array();
        $("#sidebar-nav .nav-item a").each(function (i, a) {
            href.push($(a));
        });

        for (var i = 0; i < href.length; i++) {

            var currentElement = href[i];
            if (($(currentElement).attr("href") === current_file) || ($(currentElement).attr("href") + ".jsp" === current_file)) {
                $(currentElement).attr("class", "nav-link active");

                /* for debugging purpose
                 * console.log("hello", href[i]); */
            } else {
                $(currentElement).attr("class", "nav-link collapsed");

                /* for debugging purpose 
                 * console.log("hello!!!", current_file_name, href[i], $(this)); */
            }
        }
    });
</script>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index" class="logo d-flex align-items-center">
            <img class="logo-size" src="assets/img/logo.png" alt="LostVote">
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

            <!-- for counting reminders -->
            <sql:query dataSource="${applicationScope.connection}" var="countReminders" >
                select COUNT(*) as NOfRows from reminders;
            </sql:query>

            <!-- for fetching all reminders -->
            <sql:query dataSource="${applicationScope.connection}" var="Reminders" >
                select * from reminders;
            </sql:query>

            <!-- store number of reminders in NOFReminders variable -->    
            <c:forEach items="${countReminders.rows}" var="data" >
                <c:set value="${data.NOfRows}" var="NOFReminders" scope="page" />
            </c:forEach>

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number">${NOFReminders}</span>
                </a><!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">

                    <c:if test="${NOFReminders > 0}" >
                        <li class="dropdown-header">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>All reminders are shown here.</b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        </li>
                        <c:forEach items="${Reminders.rows}" var="Reminder" >
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li class="notification-item">
                                <i class="bi bi-chat-square-quote-fill text-success"></i>
                                <div>
                                    <h4>${Reminder.title}</h4>
                                    <p>${Reminder.description}</p>
                                </div>
                            </li>
                        </c:forEach>
                    </c:if>

                    <c:if test="${NOFReminders == 0}" >
                        <li class="dropdown-header">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>There is nothing to remind.</b> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <br>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li class="notification-item">
                            <i class="bi bi-emoji-sunglasses-fill text-primary"></i>
                            <div>
                                <h4>Take a deep breath and relax.</h4>
                            </div>
                        </li>
                    </c:if>

                </ul><!-- End Notification Dropdown Items -->

            </li><!-- End Notification Nav -->

            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="../GetVoterImage?id=${sessionScope.voterID}" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">${sessionScope.firstname} ${sessionScope.lastname}</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>${sessionScope.firstname} ${sessionScope.lastname}</h6>
                    </li>
                    
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="../index">
                            <i class="bi bi-globe2"></i>
                            <span>Go to Website</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="profile">
                            <i class="bi bi-person-fill"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="../contact">
                            <i class="bi bi-envelope-at-fill"></i>
                            <span>Contact Us</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-question-circle-fill"></i>
                            <span>Need Help</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="../logoutUser">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Log Out</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header>
<!-- ======= /Header ======= -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="index">
                <i class="bi bi-house-fill"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-heading">Pages</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="cast-vote">
                <i class="bi bi-hand-index-thumb"></i>
                <span>Cast Vote</span>
            </a>
        </li><!-- End Profile Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="election-results">
                <i class="bi bi-clipboard-check-fill"></i>
                <span>Results</span>
            </a>
        </li><!-- End Profile Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="profile">
                <i class="bi bi-person-circle"></i>
                <span>Profile</span>
            </a>
        </li><!-- End Profile Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="../faqs">
                <i class="bi bi-question-circle-fill"></i>
                <span>FAQs</span>
            </a>
        </li><!-- End Profile Nav -->

    </ul>
</aside>
<!-- ======= /Sidebar ======= -->