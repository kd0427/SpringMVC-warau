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
<link rel='stylesheet'
	href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
<title>미니 프로젝트</title>
<script>
	function checkUserIdExist(){
		
		var user_id = $("#user_id").val()
		
		if(user_id.length == 0){
			alert('아이디를 입력해주세요')
			return
		}
		
		$.ajax({
			url : '${root}user/checkUserIdExist/' + user_id,
			type : 'get',
			dataType : 'text',
			success : function(result){
				if(result.trim()=='true'){
					alert('사용할 수 있는 아이디 입니다.')
					$("#userIdExist").val('true')
				} else {
					alert('사용할 수 없는 아이디 입니다.')
					$("#userIdExist").val('false')
				}
			}
		})
	}
	
	function resetUserExist(){
		$("#userIdExist").val('false')
	}
</script>
</head>



<body>

	<!-- 상단 메뉴 부분 -->

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow card2">
					<div class="card-body">
						<form:form action="${root }user/join_pro" method="post"
							modelAttribute="joinUserVO">
							<form:hidden path="userIdExist"/>
							<div class="form-group">
								<form:label path="user_name"><i class="uil uil-user"></i>이름</form:label>
								<form:input path="user_name" class="form-control" />
								<form:errors path="user_name" style="color:red" />
							</div>
							<div class="form-group">

								<form:label path="user_id"><i
								class="input-icon uil uil-grin-tongue-wink"></i>아이디</form:label>
								<div class="input-group">
									<form:input path="user_id" class="form-control" onkeypress="resetUserIdExist()"/>
									<div class="input-group-append">
										<button type="button" class="btn btn-primary"
											onclick='checkUserIdExist()'>중복확인</button>
									</div>
								</div>
								<form:errors path="user_id" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_pw"><i
								class="input-icon uil uil-lock-alt"></i>비밀번호</form:label>
								<form:password path="user_pw" class="form-control" />
								<form:errors path="user_pw" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_pw2"><i
								class="input-icon uil uil-lock-alt"></i>비밀번호 확인</form:label>
								<form:password path="user_pw2" class="form-control" />
								<form:errors path="user_pw2" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_email"><i class="uil uil-envelopes"></i>이메일</form:label>
								<form:input path="user_email" class="form-control" />
								<form:errors path="user_email" style="color:red" />
							</div>
							<div class="form-group">
								<form:label path="user_pet"><i class="uil uil-heart"></i>애완동물</form:label>
								<form:input path="user_pet" class="form-control" />
								<form:errors path="user_pet" style="color:red" />
							</div>
							
							<div class="form-group">
								<div class="text-right">
									<form:button class="btn btn-primary">회원가입</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

</body>
</html>








