<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resource/css/proj.css" />
<link rel="stylesheet" href="./resource/css/bootstrap.min.css" />
<script type="text/javascript" src="./resource/js/validation_member.js"></script>
</head>
<body>
	<%@ include file="Header.jsp"%>

	<div class="join_sec">
		<h3 class="join_info">Fitness Ground</h3>
		<BR>
		<BR>
		<BR>
		
		<%
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
			
				String sql = "select * from member where id = ?";
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);
			
				pstmt.setString(1, sessionId);
			
				rs = pstmt.executeQuery();
		
				if (rs.next()) { 
			%>
			
		<div class="join_form">
			<form name = "addMember"class="form-signin" action="MemberUpdateAction.do" method="post">
				<div class="form-group  row">
					<span>아이디 
					</span> <BR>
					<BR> <input name="id" type="text" class="form-control"
						placeholder="아이디" value = "<%=rs.getString("id")%>" readonly="readonly">
				</div>
				<div class="form-group  row">
					<span>비밀번호</span> <input name="pwd" type="password"
						class="form-control" placeholder="비밀번호" value = "<%=rs.getString("pwd")%>">

				</div>
				<div class="form-group  row">
					<span>비밀번호확인</span> <input name="pwd_confirm" type="password"
						class="form-control" placeholder="비밀번호 확인">

				</div>
				<div class="form-group  row">
					<span>성명 *</span> <input name="name" type="text"
						class="form-control" placeholder="name" value = "<%=rs.getString("name")%>">

				</div>
				<div class="form-group  row">
					<span>성별</span>
					<div class="col-sm-10">
						<input name="gender" type="radio" value="남" checked /> 남
						<input name="gender" type="radio" value="여" /> 여
					</div>
				</div>

				<div class="form-group  row ">
					<span>이메일
					</span> <BR>
					<BR>
					<div class="col-sm-10">
						<input type="text" name="email1" maxlength="50"
							class="form-control" value = "<%=rs.getString("email1")%>">@ <select class="form-control"
							name="email2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
						</select>
						
					</div>
				</div>
				<div class="form-group  row">
					<span>전화번호 (010 포함 '-' 빼고 입력)</span> <input name="phone" type="text"
						class="form-control" placeholder="예시)01012341234" value = "<%=rs.getString("phone")%>">
				</div>
				
				<div class="form-group  row">
					<div class="col-sm-offset-2 col-sm-10 ">
						<input type="submit" class="btn btn-primary " value="수정 ">
						<input type="reset" class="btn btn-primary " value="취소 "
							onclick="reset()">
						<input type="button" class="btn btn-danger " value="회원탈퇴 "
							onclick="location.href='MemberDeleteAction.do?id=<%=rs.getString("id")%>'">
					</div>
				</div>
			</form>
			<%
				}
				
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
			
		</div>
	</div>


	<%@ include file="Footer.jsp"%>
</body>
</html>