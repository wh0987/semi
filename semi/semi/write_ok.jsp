<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<jsp:useBean id="bean" class="data_source.Board"/>
<jsp:useBean id="mem" class="data_source.BoardMgr"/>
<jsp:setProperty property="*" name="bean"/>
<%
    boolean result = mem.insertBoard(bean);
    if(result){
%>
<script type="text/javascript">
    alert("게시글이 작성되었습니다.");
    location.href="board.jsp";
</script>
<% } else { %>
<script type="text/javascript">
    alert("게시글 작성에 실패하였습니다.");
    history.back();
</script>
<% } %>
