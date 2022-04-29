<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath }/" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>강아지</title>
  <link rel="stylesheet" href="${root }resource/intro/style.css">

</head>
<body>

	<!-- top menu -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
	
	<!-- 컨텐츠 -->
	<!-- partial:index.partial.html -->
	<div class="header">
		<!-- 	<h1>Spinny Flipz</h1> -->
	</div>
	<section class="slider-section">
		<div class="wheel">
			<div class="wheel__card">
				<img src="${root }img/intro/jin(int).jpg" />
				<div  style="text-align: center; color: red;">
					<h4>진돗개</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/shiba(int).jpg" />
				<div  style="text-align: center; color: pink;">
					<h4>시바견</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/yoc(int).jpg" />
				<div  style="text-align: center; color: orange;">
					<h4>요크셔테리어</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/her(int).jpg" />
				<div  style="text-align: center; color: rgb(204, 204, 34);">
					<h4>시베리아 허스키</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/dalma(int).jpg" />
				<div  style="text-align: center; color: yellowgreen;">
					<h4>달마시안</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/kogi(int).jpg" />
				<div  style="text-align: center; color: green;">
					<h4>웰시 코기</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/docs(int).jpg" />
				<div  style="text-align: center; color: blue;">
					<h4>닥스훈트</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/reb(int).jpg" />
				<div  style="text-align: center; color: violet;">
					<h4>레브라도</h4>
				</div>
			</div>
			
		</div>
	</section>
	
	<!-- partial -->
	  <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/ScrollTrigger.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/MotionPathPlugin.min.js'></script>
	<script src='https://assets.codepen.io/16327/Flip.min.js'></script><script  src="./script.js"></script>
		<!-- bottom -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
	
</body>
</html>