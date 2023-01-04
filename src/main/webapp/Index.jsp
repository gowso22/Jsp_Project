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
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="true">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="./resource/images/carousel01.png" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="./resource/images/carousel02.png" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="./resource/images/carousel03.png" class="d-block w-100"
						alt="...">
				</div>
			</div>
		</div>
		<Br>
		<br>
		
		<div><span>공지사항</span> <span> 더보기 >> </span></div>
		<hr>
		
		<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>글쓴이</th>
						<th>제목</th>
						<th>작성일</th>
						
						
					</tr>
					
					<tr>
						
						<td>2</td>
						<td>3</td>
						
						<td>5</td>
					</tr>
					<tr>
						
						<td>2</td>
						<td>3</td>
						
						<td>5</td>
					</tr>
					<tr>
						
						<td>2</td>
						<td>3</td>
						
						<td>5</td>
					</tr>
					
				</table>
			</div>
		
		<br>

		<div>센터소개</div>
		<hr>
		<img src="./resource/images/center_intro.png"> <br>
		<br>

		<div>시설소개</div>
		<hr>
		<img src="./resource/images/esta_intro.png"> <br>
		<br>

		<div>프로그램 소개</div>
		<hr>
		<img src="./resource/images/program_intro.png">
		
		<br>

		<div>바디 프로필</div>
		<hr>
	
		<br>

		

	</div>















	<%@ include file="Footer.jsp"%>

</body>
</html>