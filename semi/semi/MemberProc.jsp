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
	alert("ȸ�������� �Ͽ����ϴ�.");
	location.href="main.jsp";
</script>
<% } else { %>
<script type="text/javascript">
	alert("ȸ�����Կ� �����Ͽ����ϴ�.");
	history.back();
</script>
<% } %>
