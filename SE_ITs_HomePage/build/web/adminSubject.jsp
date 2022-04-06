<%-- 
    Document   : adminSubject
    Created on : Mar 13, 2022, 9:07:23 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <!-- <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png"> -->
    <link rel="icon" type="image/png" href="assets/img/favicon-fpt.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>ADMIN</title>
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
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
</head>

<body>
    <div class="wrapper">
        <div class="sidebar" data-color="orange" data-image="assets/img/sidebar-hcm.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="http://www.creative-tim.com" class="simple-text">
                        FPT UNIVERSITY ADMIN
                    </a>
                </div>
                <ul class="nav">
                    <!-- <li>
                        <a class="nav-link" href="dashboard.html">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li> -->
                    <li>
                        <a class="nav-link" href="./user.jsp">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>User Profile</p>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="./subject.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Subject</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./book.jsp">
                            <i class="nc-icon nc-single-copy-04"></i>
                            <p>Book</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./news.jsp">
                            <i class="nc-icon nc-paper-2"></i>
                            <p>News</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./lecturer.jsp">
                            <i class="nc-icon nc-single-02"></i>
                            <p>Lecturer</p>
                        </a>
                    </li>
                    <!-- <li>
                        <a class="nav-link" href="./notifications.html">
                            <i class="nc-icon nc-bell-55"></i>
                            <p>Notifications</p>
                        </a>
                    </li> -->
                </ul>
            </div>  
        </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#pablo"> Subject </a>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nc-icon nc-zoom-split"></i>
                                    <span class="d-lg-block">&nbsp;Search</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <span class="no-icon">Account</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#pablo">
                                    <span class="no-icon">Log Out</span>
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
                                        <h4 class="card-title">Subject Table</h4>
                                        <p class="card-category">Here is a subtitle for this table</p>
                                    </div>
                                    <div class="card-header-item">
                                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="fa-solid fa-circle-plus"></i> <span>Add New</span></a>
                                    </div>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <th>ID</th>
                                            <th>Title</th>
                                            <th>Name</th>
                                            <th>Description</th>
                                            <th>Image</th>
                                            <th>Create Date</th>
                                            <th>Action</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Dakota Rice</td>
                                                <td>Dakota</td>
                                                <td>$36,738</td>
                                                <td>Niger</td>
                                                <td>Oud-Turnhout</td>
                                                <td>
                                                    <a href="#editEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                    <a href="#deleteEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Minerva Hooper</td>
                                                <td>Dakota</td>
                                                <td>$23,789</td>
                                                <td>Curaçao</td>
                                                <td>Sinaai-Waas</td>
                                                <td>
                                                    <a href="#editEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                    <a href="#deleteEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Sage Rodriguez</td>
                                                <td>Dakota</td>
                                                <td>$56,142</td>
                                                <td>Netherlands</td>
                                                <td>Baileux</td>
                                                <td>
                                                    <a href="#editEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                    <a href="#deleteEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Philip Chaney</td>
                                                <td>Dakota</td>
                                                <td>$38,735</td>
                                                <td>Korea, South</td>
                                                <td>Overland Park</td>
                                                <td>
                                                    <a href="#editEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                    <a href="#deleteEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Doris Greene</td>
                                                <td>Dakota</td>
                                                <td>$63,542</td>
                                                <td>Malawi</td>
                                                <td>Feldkirchen in Kärnten</td>
                                                <td>
                                                    <a href="#editEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                    <a href="#deleteEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Mason Porter</td>
                                                <td>Dakota</td>
                                                <td>$78,615</td>
                                                <td>Chile</td>
                                                <td>Gloucester</td>
                                                <td>
                                                    <a href="#editEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-pen-to-square" data-toggle="tooltip" title="Edit"></i></a>
                                                    <a href="#deleteEmployeeModal" class="icon-crud" data-toggle="modal"><i class="fa-solid fa-square-minus" data-toggle="tooltip" title="Delete"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Add Modal HTML -->
                <div id="addEmployeeModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form>
                                <div class="modal-header">						
                                    <h4 class="modal-title">Add New Subject</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">					
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label>
                                        <textarea class="form-control" required></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Image</label>
                                        <textarea class="form-control" required></textarea>
                                    </div>	
                                    <div class="form-group">
                                        <label>Create Date</label>
                                        <input type="text" class="form-control" required>
                                    </div>					
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Add">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Edit Modal HTML -->
            <div id="editEmployeeModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form>
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Subject</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <textarea class="form-control" required></textarea>
                                </div>	
                                <div class="form-group">
                                    <label>Create Date</label>
                                    <input type="text" class="form-control" required>
                                </div>					
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-info" value="Save">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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

