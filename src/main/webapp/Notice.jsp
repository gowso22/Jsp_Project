<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="util.DBConnection"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resource/css/proj.css" />

</head>
<body>

	<%@ include file="Header.jsp"%>




	<div class="index_sec">


		<div>
			<span>공지사항</span>
		</div>
		<hr>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>글쓴이</th>
					<th>제목</th>
					<th>작성일</th>


				</tr>
				<%
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;

				String sql = "select * from notice";
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);

				rs = pstmt.executeQuery();

				while (rs.next()) {
				%>

				<tr>
					<td><%=rs.getInt("nid")%> / <%=rs.getString("userid")%></td>

					<td><a href="N_content.jsp?nid=<%=rs.getInt("nid")%>"> <%=rs.getString("title")%>
					</a></td>


					<td><%=rs.getString("regDate")%></td>
				</tr>
	
				<%
				}

				if (rs != null)
				rs.close();
				if (pstmt != null)
				pstmt.close();
				if (conn != null)
				conn.close();
				%>

			</table>
		</div>
		<c:choose>
			<c:when test="${sessionId.equals('admin')}">
				<button type="button" class="btn btn-secondary"
					onclick="location.href='N_write.jsp'">글쓰기</button>
			</c:when>
			<c:otherwise>

			</c:otherwise>
		</c:choose>


	</div>















	<%@ include file="Footer.jsp"%>

</body>
</html>