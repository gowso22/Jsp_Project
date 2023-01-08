<%@ page contentType="text/html; charset=utf-8"%>

<%
String msg = request.getParameter("msg");
if (msg != null && msg.equals("1")) {
%>
	<script type="text/javascript">
		alert("[회원탈퇴] 회원탈퇴가 되었습니다.")
	</script>
<%
	session.invalidate();

response.sendRedirect("Index.jsp");
}
else{
%>
<script>
	alert("로그아웃 했습니다.")
</script>
<%
	session.invalidate();
	response.sendRedirect("Index.jsp");
}
%>
