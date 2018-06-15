<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
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

	<title>글쓰기</title>
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

	<script type="text/javascript">
        function move(url) {
            //location.href=url;
            window.open(url);
            window.close();
        }
        function writeCheck() {
            var form = document.writeform;
            if( !form.title.value ) {
                alert( "제목을 적어주세요" );
                form.title.focus();
                return;
            }
            if( !form.contents.value ) {
                alert( "내용을 적어주세요" );
                form.contents.focus();
                return;
            }
            form.submit();
        }
	</script>
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


<div class="container">
	<form name=writeform action="write_ok.jsp" method="post">
		<div style="margin:0px auto; width:700px; border:1px solid #cccccc; padding:20px">
			<h4>게시판 글쓰기</h4>

			<table class="table">
				<tr>
					<th width="100px">글쓴이</th>
					<td><input type="hidden" name="id" value="<%=id%>"><%=id%></td>

				</tr>

				<tr>
					<th width="100px">제목</th>
					<td><input type="text" class="form-control" id="title" name="title" placeholder="제목" /></td>
				</tr>

				<tr>
					<th width="100px">내용</th>
					<td><textarea class="form-control" id="contents" name="contents" style="resize:none" rows="6" placeholder="내용"></textarea></td>
				</tr>
			</table>

			<hr />
			<div align="right">
				<%--<a href="board.jsp"> 작성</a>--%>
				<input type="button" id="btn_write" class="btn btn-primary" value="글쓰기" onclick="writeCheck();"/>
				<input type="submit" class="btn btn-primary" value="취소" OnClick="history.back(-1)">
			</div>
		</div>
	</form>
</div>

</body>
</html>