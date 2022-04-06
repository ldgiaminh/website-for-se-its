<%-- 
    Document   : login.jsp
    Created on : Jan 9, 2022, 7:58:15 PM
    Author     : super
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<body>
  <h1>Login</h1>
  <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8084/SE_ITs_Admin/login-google&response_type=code
    &client_id=130937576092-32naekl6omlq6o8jnmnj6jsdqqf3iaop.apps.googleusercontent.com">Login With Google</a>  
</body>
</html>-->

<!doctype html>
<html lang="en">
    <head>
        <title>Login Admin</title>
        <link rel="icon" type="image/png" href="images/favicon-fpt.png">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg_fpt-2.jpeg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="container-logo">
                        <img src="images/logo_1.png" alt="">
                    </div>
                    <div class="col-md-6 text-center mb-5">
                        <h1 class="heading-section">FPT UNIVERSITY ADMIN</h1>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Admin Login</h3>
                            <form action="#" class="signin-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Username" required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Password" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                            </form>
                            <div class="social d-flex text-center">
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8084/SE_ITs_Admin/login-google&response_type=code
                                   &client_id=130937576092-32naekl6omlq6o8jnmnj6jsdqqf3iaop.apps.googleusercontent.com" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-google mr-2">
                                        <img class="google-icon" src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg"/>				  	
                                    </span> Login with email fpt.edu.vn</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>


