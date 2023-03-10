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
	<%
	String nid = request.getParameter("nid");
	%>
	<%@ include file="Header.jsp"%>




	<div class="index_sec">
		<div class="container">
			<div class="row">
				<form action="processN_update.jsp?nid=<%=nid%>" method="post">
					<table class="table table-striped"
						style="text-align: ceter; border: 1px solid black">
						<thead>
							<tr>
								<th colspan="4"
									style="background-color: #eeeeee; text-align: center">공지사항
									내용</th>
							</tr>
						</thead>

						<tbody>
							<%
							Connection conn = null;
							PreparedStatement pstmt = null;
							ResultSet rs = null;

							String sql = "select * from notice where nid = ?";
							conn = DBConnection.getConnection();
							pstmt = conn.prepareStatement(sql);

							pstmt.setString(1, nid);

							rs = pstmt.executeQuery();

							if (rs.next()) {
							%>
							<tr>
								<td><input type="text" class="form-control" name="title"
									maxlength="50" value="<%=rs.getString("title")%>">
									</td>
								<td><input type="text" class="form-control" name="content"
									maxlength="1050" value="<%=rs.getString("content")%>"
									style="height: 350px"></td>
								<td>작성자 : <%=rs.getString("userid")%>
								</td>
								<td>작성일자 : <%=rs.getString("regDate")%>
								</td>
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
						</tbody>


					</table>
					<input type="submit" class="btn btn-secondary" value="수정하기">
					<button type="button" class="btn btn-secondary"
						onclick="location.href='Notice.jsp'">목록으로</button>

				</form>

			</div>

		</div>

	</div>








	<%@ include file="Footer.jsp"%>

</body>
</html>