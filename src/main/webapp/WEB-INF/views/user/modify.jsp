<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
</head>
<body>

	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<div class="videobox">
		<video width="100%" height="auto" autoplay loop muted>
			<source src="${root }img/video/modifydog.mp4" type="video/mp4">
		</video>
		<div class="container2">
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<div class="card shadow card3">
						<div class="card-body">
							<form:form action="${root }user/modify_pro" method="post"
								modelAttribute="modifyUserVO">
								<div class="form-group">
									<form:label path="user_name">
										<i class="uil uil-user"></i>이름</form:label>
									<form:input path="user_name" class='form-control'
										readonly='true' />

								</div>
								<div class="form-group">
									<form:label path="user_id">
										<i class="input-icon uil uil-grin-tongue-wink"></i>아이디</form:label>
									<form:input path="user_id" class='form-control' readonly='true' />
								</div>
								<div class="form-group">
									<form:label path="user_email">
										<i class="uil uil-envelopes"></i>이메일</form:label>
									<form:input path="user_email" class='form-control'
										readonly='true' />
								</div>
								<div class="form-group">
									<form:label path="user_pet">
										<i class="uil uil-heart"></i>애완동물</form:label>
									<form:input path="user_pet" class='form-control'
										readonly='true' />
								</div>
								<div class="form-group">
									<form:label path="user_date">
										<i class="uil uil-calendar-alt"></i>회원가입일</form:label>
									<form:input path="user_date" class='form-control'
										readonly='true' />
								</div>
								<div class="form-group">
									<form:label path="user_pw">
										<i class="input-icon uil uil-lock-alt"></i>새로운 비밀번호</form:label>
									<form:password path="user_pw" class='form-control' />
									<form:errors path="user_pw" style='color:red' />
								</div>
								<div class="form-group">
									<form:label path="user_pw2">
										<i class="input-icon uil uil-lock-alt"></i>새로운 비밀번호 확인</form:label>
									<form:password path="user_pw2" class='form-control' />
									<form:errors path="user_pw2" style='color:red' />
								</div>
								<div class="form-group">
									<div class="text-right">
										<form:button class="btn btn-primary">정보수정</form:button>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body>
</html>
