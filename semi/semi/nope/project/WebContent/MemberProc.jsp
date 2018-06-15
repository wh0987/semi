<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="bean" class="data_source.Member"/>
<jsp:useBean id="mem" class="data_source.Mgr"/>
<jsp:setProperty property="*" name="bean"/>
<%
	boolean result = mem.insertMember(bean);
	if(result){
%>
<script type="text/javascript">
	alert("회원가입을 하였습니다.");
	location.href="main.jsp";
</script>
<% } else { %>
<script type="text/javascript">
	alert("회원가입에 실패하였습니다.");
	history.back();
</script>
<% } %>
