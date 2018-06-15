<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("idKey");
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<title>글 읽기</title>
	<script type="text/javascript">
		function move(url) {
			location.href=url;
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
									<%=id %>님 반갑습니다.
									<input class="btn btn-primary" type="button" value="로그아웃" onclick="location.href='logout.jsp'">
									<%if(id=="root"){%>
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
									<h3>내용</h3>
										<%
                                            String  title="", contents="";
                                            int list_index = Integer.parseInt(request.getParameter("list_index"));

											Connection conn = null;
											Statement stmt = null;
											try{
												Class.forName("com.mysql.jdbc.Driver");
                                                String url = "jdbc:mysql://192.168.10.177:3306/bbd?serverTimezone=UTC";
                                                conn = DriverManager.getConnection(url, "dba", "asdf1234");
											} catch (Exception e) {
												out.println("접속 error");
												out.println(e.getMessage());
												e.printStackTrace();
											}
											stmt = conn.createStatement();
											String sql ="select * from contents where list_index=" + list_index;
                                            ResultSet rs = stmt.executeQuery(sql);
											while (rs.next()){
											    //list_index = rs.getString("list_index");
											    id = rs.getString("id");
											    title = rs.getString("title");
											    contents = rs.getString("contents");
                                            }

										%>
									<table class="table2">
										<tr>
											<td style="text-align:center">번호</td>
											<td><%= list_index%></td>
										</tr>
										<tr>
											<td style="text-align:center">이름</td>
											<td><%= id%></td>
										</tr>
										<tr>
											<td style="text-align:center">제목</td>
											<td><%= title%></td>
										</tr>
										<tr>
											<td style="text-align:center">내용</td>
											<td><%= contents%></td>
										</tr>
									</table>

									<div style="text-align:right" id="pageForm">
										<input type="button" value="게시판 리스트 보기" onclick="move('board.jsp');" />
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
</body>
</html>