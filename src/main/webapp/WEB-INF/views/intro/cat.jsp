<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양이</title>
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
				<img src="${root }img/intro/russian(int).png" />
				<div style="text-align: center; color: red;">
					<h4>러시안 블루</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/siamese(int).png" />
				<div  style="text-align: center; color: pink;">
					<h4>샴</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/dome(int).png" />
				<div  style="text-align: center; color: orange;">
					<h4>코리안 숏헤어</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/munchkin(int).png" />
				<div style="text-align: center; color: rgb(204, 204, 34);">
					<h4>먼치킨</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/persian(int).png"/>
				<div  style="text-align: center; color: yellowgreen;">
					<h4>페르시안</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/turkish(int).png" />
				<div  style="text-align: center; color: green;">
					<h4>터키쉬 앙고라</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/norwegian(int).png" />
				<div  style="text-align: center; color: skyblue;">
					<h4>노르웨이숲</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/sphynx(int).png" />
				<div  style="text-align: center; color: blue;">
					<h4>스핑크스</h4>
				</div>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/oci(int).png" />
				<div  style="text-align: center; color: violet;">
					<h4>오시캣</h4>
				</div>
			</div>
	
			
		</div>
	</section>
	</div>
	<!-- partial -->
	  <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/ScrollTrigger.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/MotionPathPlugin.min.js'></script>
	<script src='https://assets.codepen.io/16327/Flip.min.js'></script><script  src="./script.js"></script>
	<!--푸터 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>

</body>
</html>