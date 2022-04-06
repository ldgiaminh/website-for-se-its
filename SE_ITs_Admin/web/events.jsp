<%-- 
    Document   : events
    Created on : Mar 24, 2022, 9:54:24 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon-fpt.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Admin</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
        <link rel="stylesheet" href="assets/fonts/fontawesome-free-6.0.0-web/css/all.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <!-- CSS Files -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/css/main.css " rel="stylesheet" />
    </head>

    <body>
        <div class="wrapper">
            <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-hcm.jpg">
                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="index.jsp" class="simple-text">
                            FPT UNIVERSITY ADMIN
                        </a>
                    </div>
                    <ul class="nav">
                        <li>
                            <a class="nav-link" href="index.jsp">
                                <i class="nc-icon nc-chart-pie-36"></i>
                                <p>Home</p>
                            </a>
                        </li>
                        <li >
                            <a class="nav-link" href="SubjectServlet">
                                <i class="nc-icon nc-notes"></i>
                                <p>Subject</p>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="BookServlet">
                                <i class="nc-icon nc-single-copy-04"></i>
                                <p>Book</p>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="NewsServlet">
                                <i class="nc-icon nc-paper-2"></i>
                                <p>News</p>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="events">
                                <i class="nc-icon nc-air-baloon"></i>
                                <p>Events</p>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="LecturerServlet">
                                <i class="nc-icon nc-single-02"></i>
                                <p>Lecturer</p>
                            </a>
                        </li>
                        <li>
                            <a class="nav-link" href="CategoryServlet">
                                <i class="nc-icon nc-tag-content"></i>
                                <p>Category</p>                                                                                                      
                            </a>
                        </li>
                    </ul>
                </div>  
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                    <div class="container-fluid">
                        <a href="index.jsp" class="container-logo">
                            <img class="container-logo-img" src="assets/img/logo_1.png" alt="">
                        </a>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="LogOutServlet">
                                        <i class="nc-icon nc-button-power power-off" title="Log Out"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <!-- Main -->
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card strpied-tabled-with-hover">
                                    <div class="card-header ">
                                        <div class="card-header-title">
                                            <h4 class="card-title">Events Table</h4>
                                        </div>
                                        <form action="SearchEventsServlet">
                                            <div class="search-box">
                                                <button type="submit" name="btnSearchEvents" class="btn-search"><i class="fas fa-search"></i></button>
                                                <input type="text" name="txtSearchValueEvents" value="${param.txtSearchValueEvents}" class="input-search" placeholder="Search...">
                                            </div>
                                        </form>
                                        <div class="card-header-item">
                                            <a href="LoadCateEventIdToAddServlet" class="btn btnadd btn-success" ><i class="fa-solid fa-circle-plus"></i> <span>Add New</span></a>
                                        </div>

                                    </div>
                                    <c:set var="searchValue" value="${param.txtSearchValueEvents}"/>
                                    <c:if test="${not empty searchValue}">
                                        <c:set var="resultEvents" value="${requestScope.LIST_EVENT_SEARCH}"/>
                                        <c:if test="${not empty resultEvents}">
                                            <div class="card-body table-full-width table-responsive">
                                                <c:set var="list" value="${requestScope.LIST_EVENT_SEARCH}"/>
                                                <c:if test="${not empty list}">
                                                    <table class="table table-hover table-striped ">
                                                        <thead>
                                                        <th>No.</th>
                                                        <th>Title</th>
                                                        <th>Image</th>
                                                        <th>Description</th>
                                                        <th>Content</th>
                                                        <th>Action</th>
                                                        </thead>

                                                        <tbody>
                                                            <c:forEach items="${list}" var="listEvent" varStatus="counter">

                                                                <tr>
                                                                    <td>
                                                                        ${counter.count}
                                                                    </td>
                                                                    <td>
                                                                        ${listEvent.title}
                                                                    </td>
                                                                    <td>
                                                                        ${listEvent.image}
                                                                    </td>
                                                                    <td>
                                                                        ${listEvent.des}
                                                                    </td>
                                                                    <td>
                                                                        ${listEvent.content}
                                                                    </td>
                                                                    <td>
                                                                        <a href="loadEvents?eid=${listEvent.id}" class="icon-crud" title="Edit"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                                        <a href="deleteEvents?eid=${listEvent.id}" class="icon-crud" ><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                                    </td>
                                                                </tr>

                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>
                                            </div>
                                        </c:if>
                                    </c:if>
                                    <div class="card-body table-full-width table-responsive">
                                        <c:set var="list" value="${requestScope.LIST_EVENT}"/>
                                        <c:if test="${not empty list}">
                                            <table class="table table-hover table-striped ">
                                                <thead>
                                                <th>No.</th>
                                                <th>Title</th>
                                                <th>Image</th>
                                                <th>Description</th>
                                                <th>Content</th>
                                                <th>Action</th>
                                                </thead>

                                                <tbody>
                                                    <c:forEach items="${list}" var="listEvent" varStatus="counter">

                                                        <tr>
                                                            <td>
                                                                ${counter.count}
                                                            </td>
                                                            <td>
                                                                ${listEvent.title}
                                                            </td>
                                                            <td>
                                                                ${listEvent.image}
                                                            </td>
                                                            <td>
                                                                ${listEvent.des}
                                                            </td>
                                                            <td>
                                                                ${listEvent.content}
                                                            </td>
                                                            <td>
                                                                <a href="loadEvents?eid=${listEvent.id}" class="icon-crud" title="Edit"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                                <a href="deleteEvents?eid=${listEvent.id}" class="icon-crud" ><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                            </td>
                                                        </tr>

                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>           
                </div>
                <!-- Delete Modal jsp -->

                <!-- End Main -->
                <footer class="footer">
                    <div class="container-fluid">
                        <nav>
                            <p class="copyright text-center">
                                ©
                                <script>
                                    document.write(new Date().getFullYear())
                                </script>
                                <span>GROUP 5</span>
                            </p>
                        </nav>
                    </div>
                </footer>
            </div>
        </div>

    </body>
    <!--   Core JS Files   -->
    <script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
    <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
    <script src="assets/js/plugins/bootstrap-switch.js"></script>
    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!--  Chartist Plugin  -->
    <script src="assets/js/plugins/chartist.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
    <!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>

</html>
