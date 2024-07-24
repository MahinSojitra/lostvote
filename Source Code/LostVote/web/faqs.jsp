<%-- 
    Document   : index
    Created on : 6 Jan, 2023, 8:00:00 PM
    Author     : mahin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <title>FAQs</title>

        <meta name="viewport"
              content="width=device-width, initial-scale=1, maximum-scale=5">
        <meta name="description" content="This is meta description">
        <meta name="author" content="Themefisher">
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="icon" href="images/favicon.png" type="image/x-icon">

        <!-- theme meta -->
        <meta name="theme-name" content="LostVote" />

        <!-- # Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap"
            rel="stylesheet">

        <!-- # CSS Plugins -->
        <link rel="stylesheet" href="plugins/slick/slick.css">
        <link rel="stylesheet" href="plugins/font-awesome/fontawesome.min.css">
        <link rel="stylesheet" href="plugins/font-awesome/brands.css">
        <link rel="stylesheet" href="plugins/font-awesome/solid.css">

        <!-- # Main Style Sheet -->
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>

        <!-- header -->
        <jsp:include page="_header.jsp" />
        <!-- /header -->

        <!-- faqs page code -->
        <section class="section">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-lg-6">
                        <div class="section-title text-center">
                            <p class="text-primary text-uppercase fw-bold mb-3">Frequient
                                Questions</p>
                            <h1>Frequently Asked Questions</h1>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-9">
                        <div class="accordion accordion-border-bottom" id="accordionFAQ">
                            <div class="accordion-item">
                                <h2 class="accordion-header accordion-button h5 border-0 active"
                                    id="heading-ebd23e34fd2ed58299b32c03c521feb0b02f19d9"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-ebd23e34fd2ed58299b32c03c521feb0b02f19d9"
                                    aria-expanded="true"
                                    aria-controls="collapse-ebd23e34fd2ed58299b32c03c521feb0b02f19d9">
                                    Is The Portal Easy To Use ?</h2>
                                <div id="collapse-ebd23e34fd2ed58299b32c03c521feb0b02f19d9"
                                     class="accordion-collapse collapse border-0 show"
                                     aria-labelledby="heading-ebd23e34fd2ed58299b32c03c521feb0b02f19d9"
                                     data-bs-parent="#accordionFAQ">
                                    <div class="accordion-body py-0 content">
                                        <p>
                                            <strong>Yes, </strong> This Portal has easy navigation layout
                                            and also have a user friendly layout, So event non technical
                                            persons can easy cast their votes.
                                        </p>
                                        <p>Our mission is to provide assured and user friendly
                                            interface to give you a great voting experience.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header accordion-button h5 border-0 "
                                    id="heading-a443e01b4db47b3f4a1267e10594576d52730ec1"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-a443e01b4db47b3f4a1267e10594576d52730ec1"
                                    aria-expanded="false"
                                    aria-controls="collapse-a443e01b4db47b3f4a1267e10594576d52730ec1">
                                    How Voter Authenticate Their Self ?</h2>
                                <div id="collapse-a443e01b4db47b3f4a1267e10594576d52730ec1"
                                     class="accordion-collapse collapse border-0 "
                                     aria-labelledby="heading-a443e01b4db47b3f4a1267e10594576d52730ec1"
                                     data-bs-parent="#accordionFAQ">
                                    <div class="accordion-body py-0 content">
                                        <p>
                                            In <strong>&#8220;LostVote&#8221;</strong> admin adds
                                            employees of company as voter and send credentials as SMS
                                            message on employee's mobile number. For casting vote user
                                            have to login with their credentials in system once at the
                                            same time.
                                        </p>
                                        <p>This system reduces false vote, and provide a powerful
                                            portal for voting from anywhere.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header accordion-button h5 border-0 "
                                    id="heading-4b82be4be873c8ad699fa97049523ac86b67a8bd"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-4b82be4be873c8ad699fa97049523ac86b67a8bd"
                                    aria-expanded="false"
                                    aria-controls="collapse-4b82be4be873c8ad699fa97049523ac86b67a8bd">
                                    Will The Votes Be Secure &#38; Secret ?</h2>
                                <div id="collapse-4b82be4be873c8ad699fa97049523ac86b67a8bd"
                                     class="accordion-collapse collapse border-0 "
                                     aria-labelledby="heading-4b82be4be873c8ad699fa97049523ac86b67a8bd"
                                     data-bs-parent="#accordionFAQ">
                                    <div class="accordion-body py-0 content">
                                        <strong>Yes,</strong> LostVote offers all of these security
                                        features, plus vote tracking to monitor clicks and open rates.
                                        Our system is also completely auditable so your organization
                                        can double-check the results if need be.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header accordion-button h5 border-0 "
                                    id="heading-3e13e9676a9cd6a6f8bfbe6e1e9fc0881ef247b3"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-3e13e9676a9cd6a6f8bfbe6e1e9fc0881ef247b3"
                                    aria-expanded="false"
                                    aria-controls="collapse-3e13e9676a9cd6a6f8bfbe6e1e9fc0881ef247b3">How
                                    Is a Voter Prevented From Double-Voting ?</h2>
                                <div id="collapse-3e13e9676a9cd6a6f8bfbe6e1e9fc0881ef247b3"
                                     class="accordion-collapse collapse border-0 "
                                     aria-labelledby="heading-3e13e9676a9cd6a6f8bfbe6e1e9fc0881ef247b3"
                                     data-bs-parent="#accordionFAQ">
                                    <div class="accordion-body py-0 content">At the moment a
                                        voter submits a vote, he/she is flagged as having voted. This
                                        two-step process of submitting a vote and being flagged as
                                        having voted is rolled into a single transaction so that
                                        submitting a vote can only happen when a voter record has not
                                        been flagged as having voted. Once flagged as having voted, a
                                        voter may not access the vote a second time.</div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header accordion-button h5 border-0 "
                                    id="heading-0c2f829793a1f0562fea97120357dd2d43319164"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-0c2f829793a1f0562fea97120357dd2d43319164"
                                    aria-expanded="false"
                                    aria-controls="collapse-0c2f829793a1f0562fea97120357dd2d43319164">Is
                                    The LostVote Mobile-Friendly ?</h2>
                                <div id="collapse-0c2f829793a1f0562fea97120357dd2d43319164"
                                     class="accordion-collapse collapse border-0 "
                                     aria-labelledby="heading-0c2f829793a1f0562fea97120357dd2d43319164"
                                     data-bs-parent="#accordionFAQ">
                                    <div class="accordion-body py-0 content">
                                        <strong>Yes.</strong> LostVote have a responsive design, the
                                        LostVote portal displays well on all devices.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <h2 class="accordion-header accordion-button h5 border-0 "
                                    id="heading-8fe6730e26db16f15763887c30a614caa075f518"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapse-8fe6730e26db16f15763887c30a614caa075f518"
                                    aria-expanded="false"
                                    aria-controls="collapse-8fe6730e26db16f15763887c30a614caa075f518">
                                    Can The LostVote Handle Proxy Voting ?</h2>
                                <div id="collapse-8fe6730e26db16f15763887c30a614caa075f518"
                                     class="accordion-collapse collapse border-0 "
                                     aria-labelledby="heading-8fe6730e26db16f15763887c30a614caa075f518"
                                     data-bs-parent="#accordionFAQ">
                                    <div class="accordion-body py-0 content">
                                        <strong>No.</strong> LostVote don't have a facility to handle
                                        proxy voting.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <!-- /faqs page code -->

        <!-- footer -->
        <jsp:include page="_footer.jsp" />
        <!-- /footer -->

        <!-- # JS Plugins -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <script src="plugins/bootstrap/bootstrap.min.js"></script>
        <script src="plugins/slick/slick.min.js"></script>
        <script src="plugins/scrollmenu/scrollmenu.min.js"></script>

        <!-- Main Script -->
        <script src="js/script.js"></script>

    </body>
</html>