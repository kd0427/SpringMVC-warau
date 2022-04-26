<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Warau</title>
</head>
<body>


	<!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp" />

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">

						<form:form action="${root }board/write_pro" method="post" modelAttribute="writeAdoptVO" enctype="multipart/form-data">
							<form:hidden path="content_board_idx"/>
							<div class="form-group">
								<form:label path="content_subject">제목</form:label>
								<form:input path="content_subject" class="form-control"/>
								<form:errors path="content_subject" style='color:red'/>
							</div>
							<div class="form-group">
								<form:label path="content_text">내용</form:label>
								<form:textarea path="content_text" class="form-control" rows="10" style="resize: none"/>
								<form:errors path="content_text" style='color:red'/>
							</div>
							<div class="form-group">
								<form:label path="upload_file">첨부 이미지</form:label>
								<form:input path="upload_file" type='file' class="form-control" accept="image/*"/>
							</div>
							<div class="form-group">
								<div class="text-right">
									<form:button class="btn btn-primary">작성하기</form:button>
								</div>
							</div>
						</form:form>

					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<!-- 푸터 -->

	<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>


</body>
</html>