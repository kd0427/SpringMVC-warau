<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기타</title>
  <link rel="stylesheet" href="${root }resource/intro/style.css">

</head>
<body>
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	
	<!-- 컨텐츠 -->
	<!-- partial:index.partial.html -->
	<div class="header">
		<!-- 	<h1>Spinny Flipz</h1> -->
	</div>
	<section class="slider-section">
		<div class="wheel">
			<div class="wheel__card">
				<img src="${root }img/intro/Hedge(into).png" />
				<div  style="text-align: center; color: red;">
					<h4>고슴도치</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/Rabbit(int).png" />
				<div  style="text-align: center; color: orange;">
					<h4>토끼</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/sugar(int).png" />
				<div  style="text-align: center; color: rgb(204, 204, 34);">
					<h4>슈가 글라이더</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/mini(int).png" />
				<div  style="text-align: center; color: greenyellow;">
					<h4>미니피그</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/desert(int).png" />
				<div  style="text-align: center; color: blue;">
					<h4>사막여우</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/perret(int).png" />
				<div  style="text-align: center; color: violet;">
					<h4>페럿
					</h4>
				</div>
			</div>
		</div>
	</section>
	
	<!-- partial -->
	  <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/ScrollTrigger.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/MotionPathPlugin.min.js'></script>
	<script src='https://assets.codepen.io/16327/Flip.min.js'></script><script  src="./script.js"></script>
	



	<!--푸터 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>