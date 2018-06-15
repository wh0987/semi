<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="bean" class="data_source.Member"/>
<jsp:useBean id="mem" class="data_source.Mgr"/>
<jsp:setProperty property="*" name="bean"/>
<%
	request.setCharacterEncoding("UTF-8");
	String iddel = request.getParameter("iddel");

	boolean result = mem.deleteMember(bean, iddel);
	if(result){
%>
<script type="text/javascript">
	alert("삭제 하였습니다.");
	location.href="page2_2.jsp";
</script>
<% } else { %>
<script type="text/javascript">
	alert("삭제를 실패하였습니다.");
	history.back();
</script>
<% } %>