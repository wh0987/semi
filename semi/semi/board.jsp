<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
  String id = (String) session.getAttribute("idKey");
%>
<html>
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v3.10.5, main.html">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="description" content="">

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  <title>글 읽기zzzz</title>
  <script type="text/javascript">
      function move(url) {
          <% if(id != null) {%>
          location.href=url;
          // window.opener = "nothing";
          // window.open('', '_parent', '');
          <% } else { %>
          alert('로그인을 하시오.');
          <% } %>
      }
      function boardViewCheck() {
          var form = document.BoardViewForm;
          return true;
      }
  </script>

  <style>
    body{
      font-family:'Montserrat','', 'Jeju Gothic', serif;
    }
    .mycontainer{
      margin:0px auto;
      padding:30px;
      width:1000px;
      border:1px solid #cccccc;
    }
  </style>
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
                      <a class="nav-link link dropdown-toggle" href="#" data-toggle="dropdown-submenu" aria-expanded="false">ACADEMY</a>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="page2.jsp">팀 소개</a>
                        <a class="dropdown-item" href="page2_1.jsp">프로젝트 소개</a>
                        <a class="dropdown-item" href="board.jsp">게시판</a>
                      </div>
                    </li>
                  </ul>
                </td>
                <td style="color:#84ff84">
                  <% if(id != null) {%>
                  <style></style><%=id %>님 반갑습니다.
                  <input class="btn btn-primary" type="button" value="로그아웃" onclick="location.href='logout.jsp'">
                  <%if(id.equals("root")){%>
                  <input class="btn btn-primary" type="button" value="회원관리" onclick="location.href='page2_2.jsp'">
                  <%}%>
                  <% } else { %>

                  <form method="post" name="loginfrm" action="login.jsp">
                    <div>
                      <table class="table2">
                        <tr>
                          <td><label for="id" style="color:white">ID</label></td>
                          <td><input type="text" name="id" id="id"></td>
                          <td><label for="pw" style="color:white">PW</label></td>
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
        <h3 class="mbr-section-title display-2">게시판</h3>


      </div>
    </div>
  </div>

</section>


<section class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background mbr-after-navbar" id="header2-4d" >
  <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(239, 239, 239);">
  </div>

      <div class="mbr-table mbr-table-full">
          <div class="container">
            <div class="mbr-section row">
              <div class="mbr-table-md-up">
                <div class="mbr-table-cell col-md-5 text-xs-center text-md-left content-size">
                  <div class="mbr-section-text lead">
                    <h3 class="lead ">
                      <blockquote>게시판</blockquote>
                    </h3>
                    <section>
                      <div class="mycontainer">
                        <h3>게시판</h3>
                        <table style="text-align:center" class="table">
                          <tr style="text-align:center" class="active">
                            <td>글번호</td>
                            <td>제목</td>
                            <td>작성자</td>
                          </tr>
                        <%
                          Connection conn = null;
                          Statement stmt ;
                          try{
                              Class.forName("com.mysql.jdbc.Driver");
                              String url = "jdbc:mysql://192.168.10.177:3306/bbd?serverTimezone=UTC";
                              conn = DriverManager.getConnection(url, "dba", "asdf1234");
                          } catch (Exception e) {
                              out.println("error");
                              out.println(e.getMessage());
                              e.printStackTrace();
                          }
                          stmt = conn.createStatement();
                          String sql = "select * from contents order by list_index desc ";
                          ResultSet rs = stmt.executeQuery(sql);

                          if(rs != null){
                              while(rs.next()){
                                  int list_index = Integer.parseInt(rs.getString("list_index"));
                        %>
                          <tr>
                            <td><%=rs.getString("list_index")%></td>
                            <td><a href=Board_View.jsp?list_index=<%=list_index%>>
                              <%=rs.getString("title")%></a></td>
                              <td><%=rs.getString("id")%></td>
                          </tr>
                          <%
                              }
                            }
                          %>
                        </table>

                        <div style="text-align:right" id="pageForm">
                          <input type="button" value="글쓰기" onclick="move('Board_Write.jsp');" />
                        </div>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
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
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/smooth-scroll/SmoothScroll.js"></script>
<script src="assets/dropdown/js/script.min.js"></script>
<script src="assets/touchSwipe/jquery.touchSwipe.min.js"></script>
<script src="assets/jarallax/jarallax.js"></script>
<script src="assets/viewportChecker/jquery.viewportchecker.js"></script>
<script src="assets/theme/js/script.js"></script>
<script src="assets/theme/js/board.js"></script>


<input name="animation" type="hidden">
<div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon"></i></a></div>
</body>
</html>