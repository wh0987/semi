<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, data_source.*" %>
<%
	DBConnectionMgr pool = DBConnectionMgr.getInstance();

	Connection conn = null;
	
	Statement stmt = null;
	
	ResultSet rs = null;
	
	String id = "",
			name = "",
			birth = "",
			phonenum = "",
			email = "",
			password = "";
	
	int counter = 0;
	try {
		conn = pool.getConnection();
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from sign_up");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 	<h2> 관리자 페이지 </h2>
 	<br><br>
 	<table border=1>
 		<tr>
 			<td>id</td>
 			<td>name</td>
 			<td>birth</td>
 			<td>phonenum</td>
 			<td>email</td>
 			<td>password</td>
 		</tr>
 		<%
 			if(rs != null){
 				while(rs.next()){
 					id = rs.getString("id");
 					name = rs.getString("name");
 					birth = rs.getString("birth");
 					phonenum = rs.getString("phonenum");
 					email = rs.getString("email");
 					password = rs.getString("password");
 		%>
 		<tr>
 			<td><%=id %></td>
 			<td><%=name %></td>
 			<td><%=birth %></td>
 			<td><%=phonenum %></td>
 			<td><%=email %></td>
 			<td><%=password %></td>
 		<%
 					counter++;
 				}
 			}
 		%>
 		</tr>
 	</table>
 	<br><br>
 	total records = <%=counter %>
 	<%
		}catch (SQLException sqlException) {
			System.out.println("sql exception");
		}catch (Exception exception){
			System.out.println("exception");
		}finally {
			if(rs != null)
				try{ rs.close(); }
				catch (SQLException ex) {}
			
			if(stmt != null)
				try{ stmt.close(); }
				catch (SQLException ex) {}
			
			if(conn != null)
				try{ pool.freeConnection(conn); }
				catch (Exception ex) {}
			
		}
 	%>
 	<form method="post" name="adfrm" action="userdel.jsp">
 		<input type="text" name="iddel" id="iddel">
 		<input type="submit" name="delete" value="삭제"/>
 	</form>
</body>
</html>