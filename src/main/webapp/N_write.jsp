<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="container">
			<div class="row">
				<form action="processN_write.jsp" method="post">
					<table class="table table-striped"
						style="text-align: ceter; border: 1px solid black">
						<thead>
							<tr>
								<th colspan="2"
									style="background-color: #eeeeee; text-align: center">공지사항
									작성</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="공지사항 제목" name="title" maxlength="50" required></td>
								<td><textarea type ="text" class="form-control"
										placeholder="공지사항 내용" name="content" maxlength="1050" style = "height : 350px">
								</textarea></td>
							</tr>
						</tbody>
						
					</table>
					<input type="submit" class="btn btn-secondary" value = "작성완료">
				</form>

			</div>

		</div>

	</div>








	<%@ include file="Footer.jsp"%>

</body>
</html>