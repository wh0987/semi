<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="mMgr" class="data_source.Mgr"/>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	String url = "main.jsp";
	String msg = "로그인에 실패하였습니다.";
	
	boolean result = mMgr.loginMember(id, pass);
	if(result){
		session.setAttribute("idKey", id);
		msg = "로그인에 성공하였습니다.";
%>
	<script>
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
<% 			
	} else {
%>
	<script>
		alert("<%=msg%>");
		history.go(-1);
	</script>
<% } %>
	

