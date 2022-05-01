<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Warau</title>

<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
<link rel="stylesheet" href="${root }css/loginstyle.css">

</head>
<body>
	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	
	<div class="videobox">
		<video width="100%" height="auto" autoplay loop muted>
	        <source src="${root }img/video/logincat.mp4" type="video/mp4">
	    </video>
	
		<div class="card-3d-wrapper">
			<div class="card-front">
				<div class="center-wrap">
					<form:form action="${root }user/login_pro" method='post'
						modelAttribute="tempLoginUserVO">
						<div class="section text-center">
							<h4 class="login mb-4 pb-3">LOGIN</h4>
							<div class="form-group">
								<form:input path="user_id" class="form-style"
									placeholder="아이디" autocomplete="off"/> <i
									class="input-icon uil uil-grin-tongue-wink"></i>
								<form:errors path='user_id' style='color:red' />
							</div>
							<div class="form-group mt-4">
								<form:password class="form-style" path="user_pw"
									placeholder="비밀번호" id="logpass" autocomplete="off"/> <i
									class="input-icon uil uil-lock-alt"></i>
								<form:errors path='user_pw' style='color:red' />
							</div>
							<form:button class='btn mt-1'>로그인</form:button>
							<a href="${root }user/join" class="btn mt-1">회원가입</a>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body>
</html>








