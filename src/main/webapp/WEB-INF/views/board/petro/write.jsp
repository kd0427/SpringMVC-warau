<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Warau</title>
</head>
<body>

<!-- top -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>


<!-- 글쓰기 창 -->

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div> 
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					
					<form:form action="${root }/board/petro/write_pro" method="post" modelAttribute="petroWriteVO" enctype="multipart/form-data">
					<div class="form-group">
						
						<form:label path="petro_title">제목</form:label>
						<form:input path="petro_title" class="form-control"/>
						<form:errors path="petro_title" style="color:red"/>
					</div>
					<div class="form-group">
						<form:label path="petro_content">내용</form:label>
						<form:textarea path="petro_content" class="form-control" rows="10" style="resize:none" />
						<form:errors path="petro_content" style="color:red"/>
					</div>
					<div class="form-group">
						<form:label path="upload_file">첨부 이미지</form:label>
						<form:input type="file" path="upload_file" class="form-control" accept="image/*"/>
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





<!-- bottom -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>