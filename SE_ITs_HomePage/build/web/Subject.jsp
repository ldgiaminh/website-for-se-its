<%-- 
    Document   : Subject
    Created on : Mar 9, 2022, 8:40:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <link rel="icon" type="image/png" href="assets/images/favicon-fpt.png">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="page_type" content="np-template-header-footer-from-plugin">
        <title>Bộ môn </title>
        <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
        <link rel="stylesheet" href="assets/css/Subject.css" media="screen">
        <script class="u-script" type="text/javascript" src="assets/js/jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="assets/js/nicepage.js" defer=""></script>

        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
        <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:100,200,300,400,500,600,700,800,900|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Ubuntu:300,300i,400,400i,500,500i,700,700i|Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Mulish:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "SWP PROJECT",
            "sameAs": [
            "https://www.facebook.com/FPTU.HCM/",
            "http://zalo.me/3463391620094696986",
            "https://www.youtube.com/channel/UCfNrlxNgcTZDJ3jZeSSSJxg",
            "https://www.instagram.com/fptuniversityhcm/"
            ]
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Bộ môn đào tạo">
        <meta property="og:description" content="">
        <meta property="og:type" content="website">
    </head>
    <body class="u-body u-xl-mode"><header class=" u-clearfix u-header u-section-row-container" id="sec-54ef"><div class="u-section-rows">
                <div class="u-clearfix u-custom-color-9 u-section-row u-sticky u-sticky-f71a u-section-row-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="" id="sec-77a9">
                    <style class="u-sticky-style" data-style-id="f71a">.u-sticky-fixed.u-sticky-f71a:before, .u-body.u-sticky-fixed .u-sticky-f71a:before {
                            borders: top right bottom left !important; border-color: #f6f5f2 !important; border-width: 2px !important
                        }</style>
                    <div class="u-clearfix u-sheet u-sheet-1">
                        <nav class="u-menu u-menu-dropdown u-menu-open-right u-offcanvas u-menu-1" data-responsive-from="MD">
                            <div class="menu-collapse u-custom-font u-font-roboto-slab" style="font-size: 1rem; letter-spacing: 0px; font-weight: 700;">
                                <a class="u-button-style u-custom-active-border-color u-custom-active-color u-custom-border u-custom-border-color u-custom-border-radius u-custom-borders u-custom-color u-custom-hover-border-color u-custom-hover-color u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-text-active-color u-custom-text-color u-custom-text-hover-color u-custom-top-bottom-menu-spacing u-file-icon u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
                                    <img src="assets/images/hamicon.png" alt="">
                                </a>
                            </div>
                            <div class="u-custom-menu u-nav-container">
                                <ul class="u-custom-font u-font-roboto-slab u-nav u-spacing-30 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-radius-10 u-text-active-custom-color-2 u-text-grey-90 u-text-hover-custom-color-2" href="HomePageServlet" style="padding: 18px 10px;">TRANG CHỦ</a>
                                    </li><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-radius-10 u-text-active-custom-color-2 u-text-grey-90 u-text-hover-custom-color-2" href="SubjectServlet" style="padding: 18px 10px;">BỘ MÔN</a>
                                    </li><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-radius-10 u-text-active-custom-color-2 u-text-grey-90 u-text-hover-custom-color-2" href="LearningPathServlet" style="padding: 18px 10px;">LỘ TRÌNH HỌC TẬP</a>
                                    </li><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-radius-10 u-text-active-custom-color-2 u-text-grey-90 u-text-hover-custom-color-2" href="NewsServlet" style="padding: 18px 10px;">TIN TỨC</a>
                                    </li><li class="u-nav-item"><a class="u-border-active-palette-1-base u-border-hover-palette-1-base u-button-style u-nav-link u-radius-10 u-text-active-custom-color-2 u-text-grey-90 u-text-hover-custom-color-2" href="events" style="padding: 18px 10px;">SỰ KIỆN</a>
                                    </li></ul>
                            </div>
                            <div class="u-custom-menu u-nav-container-collapse">
                                <div class="u-container-style u-inner-container-layout u-sidenav u-white">
                                    <div class="u-inner-container-layout u-sidenav-overflow">
                                        <div class="u-menu-close">        
                                        </div>
                                        <ul class="u-align-center u-custom-font u-font-roboto-slab u-nav u-popupmenu-items u-spacing-35 u-unstyled u-nav-2">
                                            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Homepage.jsp" style="padding: 18px 10px;">TRANG CHỦ</a>
                                            </li>
                                            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Subject.jsp" style="padding: 18px 10px;">BỘ MÔN</a>
                                            </li>
                                            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="LearningPath.jsp" style="padding: 18px 10px;">LỘ TRÌNH HỌC TẬP</a>
                                            </li>
                                            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="News.jsp" style="padding: 18px 10px;">TIN TỨC</a>
                                            </li>
                                            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Events.jsp" style="padding: 18px 10px;">SỰ KIỆN</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="u-black u-menu-overlay u-opacity u-opacity-60"></div>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="u-border-2 u-border-grey-5 u-border-no-left u-border-no-right u-border-no-top u-section-row u-section-row-2" id="sec-545f">
                    <div class="u-clearfix u-sheet u-sheet-2">
                        <img class="u-image u-image-default u-image-1" src="assets/images/logo_home.png" alt="" data-image-width="1542" data-image-height="591">
                    </div>
                </div>
            </div></header>

        <section class="u-clearfix u-section-1" id="carousel_b3cc">
            <div class="u-clearfix u-sheet u-sheet-1"></div>
        </section>
        <section class="u-align-center u-clearfix u-section-2" id="carousel_6230">
            <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
                <div class="u-absolute-hcenter u-expanded-height u-gradient u-shape u-shape-rectangle u-shape-1"></div>
                <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
                    <div class="u-layout">
                        <div class="u-layout-row">
                            <div class="u-size-30 u-size-60-md">
                                <div class="u-layout-col">
                                    <div class="u-size-40">
                                        <div class="u-layout-row">
                                            <div class="u-align-left u-container-style u-image u-image-round u-layout-cell u-left-cell u-radius-30 u-size-60 u-image-1" data-image-width="1200" data-image-height="1200">
                                                <div class="u-container-layout u-container-layout-1" src=""></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="u-size-20">
                                        <div class="u-layout-row">
                                            <div class="u-align-left u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-left-cell u-size-60 u-layout-cell-2">
                                                <div class="u-container-layout u-container-layout-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="u-size-30 u-size-60-md">
                                <div class="u-layout-col">
                                    <div class="u-size-20">
                                        <div class="u-layout-row">
                                            <div class="u-align-left u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-right-cell u-size-60 u-layout-cell-3">
                                                <div class="u-container-layout u-container-layout-3"></div>
                                            </div>
                                        </div>
                                    </div>
                                   <div class="u-size-40">
                                        <div class="u-layout-row">
                                            <div class="u-container-style u-gradient u-layout-cell u-radius-30 u-right-cell u-size-60 u-layout-cell-4">
                                                <c:set var="se" value="${requestScope.SE}"/>
                                                <div class="u-container-layout u-container-layout-4">
                                                    <h2 class="u-align-left u-custom-font u-font-roboto-slab u-text u-text-1">${se.name}</h2>
                                                    <h2 class="u-align-center u-custom-font u-font-roboto-slab u-text u-text-2">${se.title}
                                                    </h2>
                                                    <h2 class="u-align-left u-custom-font u-font-montserrat u-text u-text-black u-text-3">${se.des}</h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="u-clearfix u-section-3" id="sec-692a">
            <div class="u-clearfix u-sheet u-sheet-1"></div>
        </section>
        <section class="u-align-center u-clearfix u-section-4" id="carousel_8dd6">
            <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
                <div class="u-absolute-hcenter u-expanded-height u-gradient u-shape u-shape-rectangle u-shape-1"></div>
                <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
                    <div class="u-layout">
                        <div class="u-layout-row">
                            <div class="u-size-30 u-size-60-md">
                                <div class="u-layout-col">
                                    <div class="u-size-40">
                                         <div class="u-layout-row">
                                            <div class="u-container-style u-gradient u-layout-cell u-left-cell u-radius-30 u-size-60 u-layout-cell-1">
                                                <c:set var="its" value="${requestScope.ITS}"/> 
                                                <div class="u-container-layout u-container-layout-1">
                                                    <h2 class="u-align-left u-custom-font u-font-roboto-slab u-text u-text-1">${its.name}</h2>
                                                    <h2 class="u-align-center u-custom-font u-font-roboto-slab u-text u-text-2">${its.title}</h2>
                                                    <h2 class="u-align-left u-custom-font u-font-montserrat u-text u-text-black u-text-3">${its.des}</h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="u-size-20">
                                        <div class="u-layout-row">
                                            <div class="u-align-left u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-left-cell u-size-60 u-layout-cell-2">
                                                <div class="u-container-layout u-container-layout-2"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="u-size-30 u-size-60-md">
                                <div class="u-layout-col">
                                    <div class="u-size-20">
                                        <div class="u-layout-row">
                                            <div class="u-align-left u-container-style u-hidden-sm u-hidden-xs u-layout-cell u-right-cell u-size-60 u-layout-cell-3">
                                                <div class="u-container-layout u-container-layout-3"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="u-size-40">
                                        <div class="u-layout-row">
                                            <div class="u-align-left u-container-style u-image u-image-round u-layout-cell u-radius-30 u-right-cell u-size-60 u-image-1" data-image-width="1600" data-image-height="900">
                                                <div class="u-container-layout u-container-layout-4" src=""></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="u-clearfix u-section-5" id="carousel_2321">
            <div class="u-clearfix u-sheet u-sheet-1"></div>
        </section>
        <section class="u-align-center u-clearfix u-gradient u-section-6" id="sec-3917">
            <div class="u-expanded-width-md u-expanded-width-xs u-list u-list-1">
               <div class="u-repeater u-repeater-1">
                    <c:set var="lecturer" value="${requestScope.LECTURER}"/>
                    <c:forEach var="listLecturer" items="${lecturer}">
                        <div class="u-align-center u-container-style u-list-item u-repeater-item">
                            <div class="u-container-layout u-similar-container u-valign-top u-container-layout-1">
                                <img class="u-image u-image-round u-preserve-proportions u-radius-10 u-image-1" src="${listLecturer.img}" alt="" data-image-width="1200" data-image-height="1200">
                                <h3 class="u-custom-font u-font-roboto-slab u-text u-text-default u-text-1">
                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-custom-color-1 u-text-black u-text-hover-custom-color-9 u-btn-1" href="LecturerDetailServlet?lecid=${listLecturer.id}">Giảng viên<br>
                                        <span style="font-weight: 700;"></span>${listLecturer.name}
                                    </a>
                                </h3>
                            </div>
                        </div>
                    </c:forEach>  
<!--                    <div class="u-align-center u-container-style u-list-item u-repeater-item">
                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-2">
                            <img class="u-image u-image-round u-preserve-proportions u-radius-10 u-image-2" src="assets/images/LVKP.jpg" alt="" data-image-width="1200" data-image-height="1200">
                            <h3 class="u-custom-font u-font-roboto-slab u-text u-text-default u-text-2">
                                                    <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-custom-color-1 u-text-black u-text-hover-custom-color-9 u-btn-2" href="LecturerPhuong.jsp" >Giảng viên<br>Lâm Hữu Khánh Phương
                                </a>
                            </h3>
                        </div>
                    </div>-->
<!--                    <div class="u-align-center u-container-style u-list-item u-repeater-item">
                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-3">
                            <img class="u-image u-image-round u-preserve-proportions u-radius-10 u-image-3" src="assets/images/PCT.jpg" alt="" data-image-width="1200" data-image-height="1200">
                            <h3 class="u-custom-font u-font-roboto-slab u-text u-text-default u-text-3">
                                <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-black u-text-hover-custom-color-9 u-btn-3" href="LecturerThanh.jsp" >Giảng viên<br>Phạm Công Thành
                                </a>
                            </h3>
                        </div>
                    </div>-->
<!--                    <div class="u-align-center u-container-style u-list-item u-repeater-item">
                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-4">
                            <img class="u-image u-image-round u-preserve-proportions u-radius-10 u-image-4" src="assets/images/thayKhanh2.jpg" alt="" data-image-width="1600" data-image-height="1599">
                            <h3 class="u-custom-font u-font-roboto-slab u-text u-text-default u-text-4">
                                <a class="u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-active-custom-color-1 u-text-black u-text-hover-custom-color-9 u-btn-4" href="LecturerKhanh.jsp" >Giảng viên<br>Kiều Trọng Khánh
                                </a>
                            </h3>
                        </div>
                    </div>-->
                </div>
            </div>
        </section>
        <section class="u-align-center u-clearfix u-palette-2-light-2 u-section-7" id="carousel_9446">
            <div class="u-clearfix u-sheet u-sheet-1">
                <div class="u-clearfix u-gutter-46 u-layout-wrap u-layout-wrap-1">
                    <div class="u-gutter-0 u-layout">
                        <div class="u-layout-col">
                            <div class="u-container-style u-layout-cell u-radius-50 u-shape-round u-size-60 u-white u-layout-cell-1">
                                <div class="u-container-layout u-container-layout-1">
                                    <h1 class="u-align-center u-custom-font u-font-ubuntu u-text u-text-palette-2-base u-text-1">GIÁO TRÌNH BỘ MÔN</h1>
                                    <a href="BookServlet" data-page-id="39758989" class="u-border-2 u-border-palette-2-base u-btn u-btn-round u-button-style u-none u-radius-50 u-btn-1" title="learn more" >More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <img class="u-image u-image-default u-image-1" src="assets/images/swricon.jpg" alt="" data-image-width="408" data-image-height="500">
            </div>
        </section>

        <footer class="u-align-center u-clearfix u-custom-color-2 u-footer u-footer" id="sec-be4e"><div class="u-clearfix u-sheet u-sheet-1">
                <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
                    <div class="u-layout" style="">
                        <div class="u-layout-row" style="">
                            <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-1">
                                <div class="u-container-layout u-container-layout-1">
                                    <img class="u-image u-image-default u-preserve-proportions u-image-1" src="assets/images/logo-footer.png" alt="" data-image-width="225" data-image-height="47">
                                    <p class="u-custom-font u-text u-text-1"> © 2019 thuộc về FPT University HCM</p>
                                    <p class="u-custom-font u-heading-font u-text u-text-custom-color-1 u-text-2"> TRƯỜNG ĐẠI HỌC FPT</p>
                                    <p class="u-custom-font u-text u-text-3"> Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM.</p>
                                    <a href="tel:(028)73005588" class="u-active-none u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-text-active-custom-color-1 u-text-body-color u-text-hover-custom-color-1 u-top-left-radius-0 u-top-right-radius-0 u-btn-1"><span class="u-file-icon u-icon u-text-custom-color-1"><img src="images/5.png" alt=""></span>&nbsp; ​(028) 7300 5588
                                    </a>
                                    <a href="mailto:daihoc.hcm@fpt.edu.vn" class="u-active-none u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-text-active-custom-color-1 u-text-body-color u-text-hover-custom-color-1 u-top-left-radius-0 u-top-right-radius-0 u-btn-2"><span class="u-file-icon u-icon u-text-custom-color-1"><img src="images/6.png" alt=""></span>&nbsp; daihoc.hcm@fpt.edu.vn
                                    </a>
                                </div>
                            </div>
                            <div class="u-container-style u-layout-cell u-size-30 u-layout-cell-2">
                                <div class="u-container-layout u-container-layout-2">
                                    <div class="u-social-icons u-spacing-31 u-social-icons-1">
                                        <a class="u-social-url" title="facebook"  href="https://www.facebook.com/FPTU.HCM/"><span class="u-file-icon u-icon u-social-facebook u-social-icon u-icon-3"><img src="assets/images/fbicon.png" alt=""></span>
                                        </a>
                                        <a class="u-social-url"  data-type="Custom" title="zalo" href="http://zalo.me/3463391620094696986"><span class="u-file-icon u-icon u-social-custom u-social-icon u-icon-4"><img src="assets/images/zalo.png" alt=""></span>
                                        </a>
                                        <a class="u-social-url" title="twitter"  href="https://www.youtube.com/channel/UCfNrlxNgcTZDJ3jZeSSSJxg"><span class="u-file-icon u-icon u-social-icon u-social-twitter u-icon-5"><img src="assets/images/ytbicon.png" alt=""></span>
                                        </a>
                                        <a class="u-social-url" title="instagram"  href="https://www.instagram.com/fptuniversityhcm/"><span class="u-icon u-social-icon u-social-instagram u-icon-6"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b541"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-b541"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
                                                                                                                                                                                                        z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
                                                                                                                                                                                                        C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
                                                                                                                                                                                                        c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
                                        </a>
                                    </div>
                                    <p class="u-heading-font u-text u-text-custom-color-1 u-text-default u-text-4">KẾT NỐI VỚI CHÚNG TÔI:&nbsp;</p>
                                    <h6 class="u-align-center u-text u-text-custom-color-1 u-text-default u-text-5">
                                        <span class="u-text-custom-color-3" style="font-weight: 700; font-size: 0.9375rem;"> GROUP 5,&nbsp; ©2022. All Rights Reserved</span>
                                        <br>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></footer>
    </body>
</html>