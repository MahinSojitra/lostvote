<%-- 
    Document   : login
    Created on : 11 Jan, 2023, 6:07:54 PM
    Author     : mahin
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>LostVote - Log In</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link rel="shortcut icon" href="./admin/assets/img/favicon.png" type="icon">
        <link rel="icon" href="./admin/assets/img/logo.png" type="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="./admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="./admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="./admin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="./admin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="./admin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="./admin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="./admin/assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <!--<link href="./admin/assets/css/style.css" rel="stylesheet">-->
        <link href="css/style.css" rel="stylesheet">

    </head>
    <body style="overflow: hidden;">
        <main>
            <div class="container">
                <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-2">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                                <div class="card shadow mb-3">
                                    <div class="card-body">
                                        <div class="pt-2 pb-2">
                                            <h5 class="card-title text-center pb-0 fs-4">Good to see you again !</h5>
                                            <p class="text-center small">Please enter your username and password.</p>
                                        </div>
                                        <form class="row g-3 needs-validation" action="userAuthentication" method="post" novalidate> <!-- action="userAuthentication" -->
                                            <div class="col-12">
                                                <label for="yourUsername" class="form-label">Username</label>
                                                <div class="input-group has-validation">
                                                    <span class="input-group-text" style="color: green;" id="inputGroupPrepend">@</span>
                                                    <input type="text" name="username" class="form-control" maxlength="64" pattern="^[A-Za-z]+$" id="yourUsername" required>
                                                    <div class="invalid-feedback">Please enter username, only alphabets are allowed !</div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <label for="yourPassword" class="form-label">Password</label>
                                                <input type="password" name="password" class="form-control" id="yourPassword" required>
                                                <div class="invalid-feedback">Please enter your password !</div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                                                    <label class="form-check-label" for="rememberMe">Remember me</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary w-100" type="submit">Log In / Sign In</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="credits">
                                    Designed by <a href="index#developers-corner"><strong>LostVote Developers.&#8482;</strong></a>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main><!-- End #main -->

        <!-- code for back-to-top button -->
        <!-- <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
            <i class="bi bi-arrow-up-short"></i>
        </a> -->

        <!-- Vendor JS Files -->
        <script src="./admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="./admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="./admin/assets/vendor/chart.js/chart.umd.js"></script>
        <script src="./admin/assets/vendor/echarts/echarts.min.js"></script>
        <script src="./admin/assets/vendor/quill/quill.min.js"></script>
        <script src="./admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="./admin/assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="./admin/assets/vendor/php-email-form/validate.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <!-- Template Main JS File -->
        <script src="./admin/assets/js/main.js"></script>

    </body>
</html>
