<%-- 
    Document   : email-verification
    Created on : 11 Feb, 2023, 8:19:16 AM
    Author     : mahin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>LostVote - Verify Your Email</title>
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
    <body>
        <main>
            <div class="container">
                <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                                <div class="card shadow mb-3">
                                    <div class="card-body">
                                        <div class="pt-2 pb-2">
                                            <h5 class="card-title text-center pb-0 fs-4">Email Verification</h5>
                                            <p class="text-center small">We have sent code to your email. <br> <b>${sessionScope.email}</b></p>
                                        </div>
                                        <form class="row g-3 needs-validation" action="verify-email" method="post" novalidate>
                                            <div class="col-12">
                                                <label for="OtpCodeID" class="form-label">Verification code</label>
                                                <input type="text" name="otpCode" maxlength="6" pattern="^[0-9]{6}$" placeholder="enter 6 digit code here..." class="form-control" id="OtpCodeID" required>
                                                <div class="invalid-feedback">Please enter verification code of 6 digits !</div>
                                                <div class="valid-feedback">Looks Good!</div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary w-100" id="btn-send" name="send" value="verify" type="submit">Verify Account</button>
                                            </div>
                                            <div class="col-12">
                                                <c:if test="${param.send == 'verify'}">                                                    
                                                    <c:choose>
                                                        <c:when test="${sessionScope.otp == param.otpCode}">
                                                            <% 
                                                                HttpSession hs = request.getSession();
                                                                hs.setAttribute("verifyStatus", true);
                                                            %>
                                                            <c:redirect url="index" />
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div class="alert alert-warning alert-dismissible d-flex align-items-center fade show">
                                                                <i class="bi bi-exclamation-triangle-fill"></i>
                                                                <strong class="mx-2">OTP is Invalid !</strong>
                                                                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                                            </div>
                                                        </c:otherwise>
                                                    </c:choose>                                                    
                                                </c:if>
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

        <!-- Template Main JS File -->
        <script src="./admin/assets/js/main.js"></script>

    </body>
</html>
