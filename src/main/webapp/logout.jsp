<%@ page contentType="text/html; charset=utf-8"%>
<script>
	alert("로그아웃 했습니다.")
</script>
<%
	session.invalidate();
	response.sendRedirect("Index.jsp");
%>
