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
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<!--상단 이미지 슬라이드-->
	<section class="topslide">
		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide4.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide2.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide3.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide1.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide5.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide6.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide7.jpg" alt="이미지1">
				</div>
				<div class="swiper-slide">
					<img src="${root }img/slide/topslide8.jpg" alt="이미지1">
				</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</section>

	<!--와라우 소개글-->
	<section class="warauintro inner scroll-spy">
		<div class="top back-to-position to-left">Warau 2022</div>
		<h2 class="back-to-position to-right">
			더 행복한 내일을 위해 <br /> 새로운 가족을 만날 수 있는 곳<br /> 집사들의 모든것을 나눌 수 있는 곳<br />

		</h2>
		<div class="bottom back-to-position to-down">
			한번 함께하면 10년 이상을 함께할 소중한 가족,<br /> 반려동물과 집사들의 웃음에 와라우가 함께합니다.
		</div>
	</section>

	<!--베스트게시판-->
	<section class="bestboard scroll-spy">
		<div class="inner">
			<div class="title">
				<div class="text01">BEST OF PET</div>
				<div class="text02">Warau 최고의 인기스타 TOP4</div>
			</div>
			<div class="content">
				<ul>
					<li><a href="#">
							<div class="bestBox back-to-position to-down">
								<div class="petimg">
									<img src="${root }img/pet/best1.jpg" alt="">
								</div>
								<div class="petText">
									<div class="icon material-icons-outlined">
										<span>favorite</span>commentsend
									</div>
									<div>좋아요 1254개</div>
									<div class="id">codud0826 멍멍이랑 바다갔어요</div>
								</div>
							</div>
					</a></li>

					<li><a href="#">
							<div class="bestBox back-to-position to-down">
								<div class="petimg">
									<img src="${root }img/pet/best2.jpg" alt="">
								</div>
								<div class="petText">
									<div class="icon material-icons-outlined">
										<span>favorite</span>commentsend
									</div>
									<div>좋아요 780개</div>
									<div class="id">kd0427 개신남</div>
								</div>
							</div>
					</a></li>

					<li><a href="#">
							<div class="bestBox back-to-position to-down">
								<div class="petimg">
									<img src="${root }img/pet/best3.jpg" alt="">
								</div>
								<div class="petText">
									<div class="icon material-icons-outlined">
										<span>favorite</span>commentsend
									</div>
									<div>좋아요 556개</div>
									<div class="id">mina11 냐옹????</div>
								</div>
							</div>
					</a></li>

					<li><a href="#">
							<div class="bestBox back-to-position to-down">
								<div class="petimg">
									<img src="${root }img/pet/best4.jpg" alt="">
								</div>
								<div class="petText">
									<div class="icon material-icons-outlined">
										<span>favorite</span>commentsend
									</div>
									<div>좋아요 456개</div>
									<div class="id">haru123 토끼랑 산책</div>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</section>

	<!-- 가족을 찾아요 -->
	<section class="find inner scroll-spy">
		<div class="title">
			<div class="text01">FIND A FAMILY</div>
			<div class="text02">가족을 구해요</div>
		</div>
		<div class="findfamily content back-to-position to-down">
			<div class="swiper mySwiper2">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div id="second" class="familyImg">
							<img src="${root }img/pet/cat-2762156_1280.jpg" alt="">
						</div>
						<div class="familyText">
							<span id="petName"> 이름: 냐옹이<br> 나이: 1살이에오<br>
								종류: 회색고양이<br> <br> 사유: 개인사정으로 키울수가 없어요 ㅠㅠ
							</span>
						</div>
					</div>

					<div class="swiper-slide">
						<div id="second2" class="familyImg">
							<img src="${root }img/pet/cat-2762156_1280.jpg" alt="">
						</div>
						<div class="familyText">
							<span id="petName2"> 이름: 멍멍이<br> 나이: 2살이에오<br>
								종류: 회색멍멍이<br> <br> 사유: 누가좀 데려가ㅠㅠ
							</span>
						</div>
					</div>

					<div class="swiper-slide">
						<div class="familyImg">
							<img src="${root }img/pet/cat-2762156_1280.jpg" alt="">
						</div>
						<div class="familyText">
							<span id="petName3"> 이름: 잼미니<br> 나이: 3살이에오<br>
								종류: 검은고양이<br> <br> 사유: 개인사정으로 키울수가 없어요 ㅠㅠ
							</span>
						</div>
					</div>

					<div class="swiper-slide">
						<div class="familyImg">
							<img src="${root }img/pet/cat-2762156_1280.jpg" alt="">
						</div>
						<div class="familyText">
							<span id="petName4"> 이름: 쫑구<br> 나이: 1살이에오<br>
								종류: 시고르잡종<br> <br> 사유: 개인사정으로 키울수가 없어요 ㅠㅠ
							</span>
						</div>
					</div>

					<div class="swiper-slide">
						<div class="familyImg">
							<img src="${root }img/pet/cat-2762156_1280.jpg" alt="">
						</div>
						<div class="familyText">
							<span id="petName5"> 이름: 흰둥이<br> 나이: 1살이에오<br>
								종류: 흰강아지<br> <br> 사유: 개인사정으로 키울수가 없어요 ㅠㅠ
							</span>
						</div>
					</div>

					<div class="swiper-slide">
						<div class="familyImg">
							<img src="${root }img/pet/cat-2762156_1280.jpg" alt="">
						</div>
						<div class="familyText">
							<span id="petName6"> 이름: 찡찡이<br> 나이: 2살이에오<br>
								종류: 몰라몰라용 몰라용말라<br> <br> 사유: 개인사정으로 키울수가 없어요 ㅠㅠ
							</span>
						</div>
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</section>

	<!--나눔해요-->
	<section class="share inner scroll-spy">
		<div class="title">
			<div class="text01">SHARE</div>
			<div class="text02">무료나눔 해요</div>
		</div>
		<div class="content back-to-position to-down">
			
			<div class="item ">
			
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share1.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>강아지 집이에용</div>
					<div>kd0427</div>
				</div>
				
			</div>
			
	
			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share2.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>강아지 침대에용</div>
					<div>kd0427</div>
				</div>
			</div>

			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share3.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>고양이 사료 필요하신분~</div>
					<div>codud0826</div>
				</div>
			</div>

			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share4.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>애기들 목욕탕이에요 가져가세용</div>
					<div>jiwon123</div>
				</div>
			</div>

			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share5.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>냥냥이 빗이에요</div>
					<div>haru123</div>
				</div>
			</div>

			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share6.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>이동용 가방입니다</div>
					<div>mina11</div>
				</div>
			</div>

			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share7.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>귀여운 강아지 옷 드려요!!</div>
					<div>codud0826</div>
				</div>
			</div>

			<div class="item">
				<div class="shareImg">
					<a href="#"><img src="${root }img/share/share8.jpg" alt=""></a>
				</div>
				<div class="shareText">
					<div>급수대에요 물먹이기 편해요</div>
					<div>haru123</div>
				</div>
			</div>

		</div>
	</section>

	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
</body>
</html>

