<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
  <!-- Site made with Mobirise Website Builder v3.10.5, https://main.html -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v3.10.5, main.html">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/1dcd88-4b0956e27e9a4b419d8e3a9853a0bea3-mv2-117x128.png" type="image/x-icon">
  <meta name="description" content="">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/socicon.min.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<section id="ext_menu-h">
<div>
    <nav class="navbar navbar-dropdown navbar-fixed-top">
        <div class="container">

            <div class="mbr-table">
                <div class="mbr-table-cell">

                    <div class="navbar-brand">
                        <a href="main.jsp" class="navbar-logo"><img src="assets/images/logo3.png" ></a>
                        <a class="navbar-caption text-primary" href="main.jsp">TeamNewWorld</a>
                    </div>

                </div>
                <div class="mbr-table-cell">

                    <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="hamburger-icon"></div>
                    </button>
				<table>
					<tr>
					<td>
                    <ul class="nav-dropdown collapse pull-xs-left nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
                        <li class="nav-item dropdown">
                            <a class="nav-link link" href="main.jsp" aria-expanded="false">HOME</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link link dropdown-toggle" href="page1.html" data-toggle="dropdown-submenu" aria-expanded="false">ACADEMY</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="page2.jsp">팀 소개</a>
                                <a class="dropdown-item" href="page2_1.jsp">프로젝트 소개</a>
                            </div>
                        </li>
                    </ul>
                    </td>
                    <td>
                    <% if(id != null) {%>
                     	<%=id %>님 반갑습니다.
                    	<input class="btn btn-primary" type="button" value="로그아웃" onclick="location.href='logout.jsp'">
                    <% } else { %>
          
                    <form method="post" name="loginfrm" action="login.jsp">
                            <div>
                                  <table class="table2">
                                        <tr>
	                                       <td><label for="id"><font color="white">ID</font></label></td>
                                           <td><input type="text" name="id" id="id"></td>
                                           <td><label for="pw"><font color="white">PW</font></label></td>
                                           <td><input type="password" name="password" id="pw"></td>
                                           <td><input class="btn btn-primary" type="submit" value="로그인"></td>
                                            <td><a class="btn btn-primary" href="signup.html">회원가입</a></td> 
                                        </tr>
                                    </table>
                            </div>
                    </form>
                    
                    <% } %>
                    </td>
                    </tr>
                 </table>  
                    <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                        <div class="close-icon"></div>
                    </button>

                </div>
            </div>

        </div>
    </nav>
</div>
</section>

<section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-4h" style="background-image: url(assets/images/barimg.png); padding-top: 130px; padding-bottom: 40px;">

    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-xs-center">
                <h3 class="mbr-section-title display-2">팀 소개</h3>


            </div>
        </div>
    </div>

</section>
<section class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background mbr-after-navbar" id="header2-4d" >
    <!--style="background-image: url(assets/images/landscape.jpg);"-->
    <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(239, 239, 239);">
    </div>

    <div class="mbr-table mbr-table-full">
        <div class="mbr-table-cell">

            <div class="container">
                <div class="mbr-section row">
                    <div class="mbr-table-md-up">
                        
                        <div class="mbr-table-cell mbr-right-padding-md-up mbr-valign-top col-md-7 image-size" style="width: 58%; vertical-align: top;">
                            <div class="mbr-figure" style="width: 100%"><img src="assets/images/teamlogo.jpg" style="display: inherit;"></div>
                        </div>
                        <div class="mbr-table-cell col-md-5 text-xs-center text-md-left content-size">

                            <div class="mbr-section-text lead">
                                    <h3 class="lead ">
                                        <blockquote>설립배경</blockquote>
                                    </h3>
                              		프로젝트를 위해서
                                <h3 class="lead " style="margin-top:1.8125rem;" >
                                    <blockquote>설립목적</blockquote>
                                </h3>
                                    1. 프로젝트의 성공을 위해
                                    <br>​2. 프로젝트로 많은 것을 얻어가기 위해
                            </div>
                            
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <!--<div class="mbr-arrow mbr-arrow-floating hidden-sm-down" aria-hidden="true"><a href="#social-buttons3-2t"><i class="mbr-arrow-icon"></i></a></div>-->

</section>


<footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-2i" style="background-color: rgb(50, 50, 50); padding-top: 1.75rem; padding-bottom: 1.75rem; ">
    
    <div class="container">
        <div class="" style="float:left;width:100%;">

            <p class="text-xs-center"><span style="font-weight: bolder;">CONTACT US</span>&nbsp;&nbsp;&nbsp;Tel. 010-XXXX-XXXX / Email. wtf@afk.com</p>
            <p class="text-xs-center">Copyright © 2018 Team NewWorld. All rights reserved.</p>
        </div>
    </div>
</footer>



  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchSwipe/jquery.touchSwipe.min.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/social-likes/social-likes.js"></script>
  <script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
  <input name="animation" type="hidden">
   <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon"></i></a></div>
  </body>
</html>