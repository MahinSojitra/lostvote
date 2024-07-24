<%-- 
    Document   : index
    Created on : 6 Jan, 2023, 8:00:00 PM
    Author     : mahin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>404 - Players Not Found !</title>

        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, maximum-scale=5">
        <meta name="description" content="This is meta description">
        <meta name="author" content="Themefisher">

        <!-- theme meta -->
        <meta name="theme-name" content="LostVote" />

        <!-- # Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap"
            rel="stylesheet">

        <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />-->
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <script>
            // for load appropriate css and icon files 
            $(window).ready(function () {
                var URL = window.location.pathname.split('/');
                var currentFolder = URL[URL.length - 2];

                if (currentFolder === "admin" || currentFolder === "user") {

                    /* # Icon png file */
                    $("head").prepend("<link>");
                    var iconFile = $("head").children(":first");
                    iconFile.attr({
                        rel: "icon",
                        type: "image/x-icon",
                        href: "../images/favicon.png"
                    });

                    /* # Main Style Sheet */
                    $("head").append("<link>");
                    var mainCss = $("head").children(":last");
                    mainCss.attr({
                        rel: "stylesheet",
                        type: "text/css",
                        href: "../css/style.css"
                    });

                    /* # Error Style Sheet */
                    $("head").append("<link>");
                    var errorCss = $("head").children(":last");
                    errorCss.attr({
                        rel: "stylesheet",
                        type: "text/css",
                        href: "../css/error/error_404_style.css"
                    });

                    // code for setting btnBackToHome button href
                    if (currentFolder === "admin") {

                        // for admin 
                        $("a[href]").attr("href", "../index");
                    } else {

                        // for user 
                        $("a[href]").attr("href", "../index");
                    }

                } else {

                    /* # Icon png file */
                    $("head").prepend("<link>");
                    var iconFile = $("head").children(":first");
                    iconFile.attr({
                        rel: "icon",
                        type: "image/x-icon",
                        href: "images/favicon.png"
                    });

                    /* # Main Style Sheet */
                    $("head").append("<link>");
                    var mainCss = $("head").children(":last");
                    mainCss.attr({
                        rel: "stylesheet",
                        type: "text/css",
                        href: "css/style.css"
                    });

                    /* # Error Style Sheet */
                    $("head").append("<link>");
                    var errorCss = $("head").children(":last");
                    errorCss.attr({
                        rel: "stylesheet",
                        type: "text/css",
                        href: "css/error/error_404_style.css"
                    });
                }
            });
        </script>    
    </head>

    <body>
        <div class="site">
            <div class="sketch">
                <div class="bee-sketch red"></div>
                <div class="bee-sketch blue"></div>
            </div>
            <h1>
                <small class="error-font">404</small>
                <small class="error-font">Players Not Found</small>
                <a href="index" class="btn btn-outline-primary" id="btnBackToHome">
                    <i class="fas fa-arrow-left"></i> &nbsp; Back to Home
                </a>
            </h1>
        </div>
    </body>
</html>