<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고양이</title>
  <link rel="stylesheet" href="${root }intro/style.css">

</head>
<body>
	<!-- 헤더 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	
	<!-- 컨텐츠 -->
	<div class="c-body">
	<!-- partial:index.partial.html -->
	<div class="header">
		<!-- 	<h1>Spinny Flipz</h1> -->
	</div>
	<section class="slider-section">
		<div class="wheel">
			<div class="wheel__card">
				<img src="${root }img/intro/russian(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/siamese(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/dome(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/munchkin(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/persian(int).png"/>
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/turkish(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/norwegian(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/sphynx(int).png" />
			</div>
			<div class="wheel__card">
				<img src="${root }img/intro/oci(int).png" />
			</div>
	
			</div>
	</section>
	<!-- partial -->
	  <script src='https://unpkg.co/gsap@3/dist/gsap.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/ScrollTrigger.min.js'></script>
	<script src='https://unpkg.com/gsap@3/dist/MotionPathPlugin.min.js'></script>
	<script src='https://assets.codepen.io/16327/Flip.min.js'></script>
	<script  src="${root }intro/script.js"></script>
		</div>
	

</body>
</html>