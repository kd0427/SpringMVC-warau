<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Warau</title>
<!-- sns 미리보기같은거 -->
<meta property="og:type" content="website" />
<meta property="og:site_name" content="Waraw" />
<meta property="og:title" content="와라우 입니다." />
<meta property="og:description" content="반려동물 커뮤니티 입니다." />
<meta property="og:image" content="./Shinchan.png" />
<meta property="og:url" content="" />

<!-- 구글폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;900&display=swap"
	rel="stylesheet">

<!-- 브라우저 스타일 리셋 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<!-- 구글아이콘(폰트취급) 사용 -->
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<!-- SWIPER api -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script defer src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- ScrollMagic -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
<!--Typeit-->
<script src="https://unpkg.com/typeit@8.4.0/dist/index.umd.js"></script>

<!-- Bootstrap CDN -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<script defer src="${root }js/scripts.js"></script>

<link rel="stylesheet" href="${root }css/master.css">

</head>
<body>

	<header id="main-header">
		<nav id="logodiv" class="inner">
			<div class="logo">
				<a href="${root }"><img src="${root }img/logo.png" alt="Logo"
					id="logo"></a>
			</div>
			<div class="main">
				<ul class="clear">
					<li><a href="#">PENS</a>
						<ul>
							<li><a href="${root }board/boast">자랑하기</a></li>
							<li><a href="${root }board/share">나눠요</a></li>
							<li><a href="${root }board/info">정보주세요</a></li>
							<li><a href="${root }board/adopt" class="last">분양</a></li>
						</ul></li>
					<li><a href="#">PETS</a>
						<ul>
							<li><a href="${root }intro/puppy">강아지</a></li>
							<li><a href="${root }intro/cat">고양이</a></li>
							<li><a href="${root }intro/reptile">파충류</a></li>
							<li><a href="${root }intro/birds">조류</a></li>
							<li><a href="${root }intro/etc" class="last">기타</a></li>
						</ul></li>

					<li><a href="#">NOTICE</a></li>
					<li><a href="#">Q&A</a></li>
					<li><a href="#">COMPANY</a></li>
				</ul>
			</div>
			<div class="sub">
				<ul>
					<li><a href="#">LOGIN</a></li>
					<li>|</li>
					<li><a href="#">JOIN</a></li>
				</ul>
			</div>
		</nav>
	</header>

</body>
</html>