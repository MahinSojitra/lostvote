<%-- 
    Document   : index
    Created on : 6 Jan, 2023, 8:00:00 PM
    Author     : mahin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- navigation -->
<header class="navigation bg-tertiary">
    <nav class="navbar navbar-expand-xl navbar-light text-center py-3">
        <div class="container">
            <a class="navbar-brand" href="index"> <img
                    class="img-fluid logo-size" width="160" src="images/logo.png"
                    alt="Wallet">
            </a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="index">Home</a></li>
                    <li class="nav-item "><a class="nav-link" href="about">About</a></li>
                    <li class="nav-item "><a class="nav-link" href="index#how-i-vote">How I Vote ?</a></li>
                    <li class="nav-item "><a class="nav-link" href="contact">Contact Us</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                           role="button" data-bs-toggle="dropdown" aria-expanded="false">More</a>

                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item " href="index#developers-corner">Developers</a></li>
                            <li><a class="dropdown-item " href="faqs">FAQ&#39;s</a></li>
                        </ul>
                    </li>
                </ul>
                <c:if test="${sessionScope.verifyStatus == false || sessionScope.verifyStatus == null}" >
                    <a href="login" class="btn btn-outline-primary">Log In</a>
                </c:if>
                <c:if test="${sessionScope.verifyStatus == true}" >
                    <ul class="navbar-nav">    
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">${sessionScope.firstname} ${sessionScope.lastname}</a>

                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">                            
                                <c:if test="${sessionScope.usertype == 'admin'}" ><li><a class="dropdown-item " href="./admin/profile">Profile</a></li></c:if>
                                <c:if test="${sessionScope.usertype == 'voter'}" ><li><a class="dropdown-item " href="./user/profile">Profile</a></li></c:if>
                                <c:if test="${sessionScope.usertype == 'admin'}" ><li><a class="dropdown-item " href="./admin/index">Dashboard</a></li></c:if>
                                <c:if test="${sessionScope.usertype == 'voter'}" ><li><a class="dropdown-item " href="./user/index">Dashboard</a></li></c:if>
                                <li><a class="dropdown-item " href="logoutUser">Log Out</a></li>
                            </ul>
                        </li>
                    </ul>
                </c:if>
            </div>
        </div>
    </nav>
</header>
<!-- /navigation -->
