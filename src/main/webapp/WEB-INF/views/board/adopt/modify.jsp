<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="root" value="${pageContext.request.contextPath }/"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- top -->

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>





<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
				
				<form:form action='${root}/board/adopt/modify_pro' method="post" modelAttribute="adoptModifyVO" enctype="multipart/form-data">
					<form:hidden path="adopt_idx"/>	
						<div class="form-group">
							
							<form:label path="adopt_writer">작성자</form:label>
							<form:input path="adopt_writer" class="form-control" readonly="true"/>
							
						</div>
						<div class="form-group">
						
							<form:label path="adopt_regdate">작성날짜</form:label> <!-- 작성자, 작성날짜는 수정할 수가 없음 = readonly 사용-->
							<form:input path="adopt_regdate" class="form-control" readonly="true"/>
							
						</div>
						<div class="form-group">
	
							<form:label path="adopt_title">제목</form:label>
							<form:input path="adopt_title" class="form-control"/>
							<form:errors path="adopt_title" style="color:red"/>
						</div>
						<div class="form-group">
							
							<form:label path="adopt_content">내용</form:label>
							<form:textarea path="adopt_content" class="form-control" rows="10" style="resize:none"/>
							<form:errors path="adopt_content" style="color:red"/>
							
						</div>
						<div class="form-group">
						
							<label for="board_file">첨부 이미지</label>
							<c:if test="${adoptModifyVO.adopt_img != null}">
							<img src="${root }upload/${adoptModifyVO.adopt_img}" width="100%"/>	
							<form:hidden path="adopt_img"/> <!-- 기존에 첨부했던 파일 이름이 컨트롤러 modifyVO에 주입됨 -->
							</c:if>
							<form:input path="upload_img" type="file" class="form-control" accept="image/*"/>
												
						</div>
						<div class="form-group">
							<div class="text-right">
							
								<form:button class="btn btn-primary">수정완료</form:button>
								<a href="${root }board/read?adopt_idx=${adopt_idx}" class="btn btn-info">취소</a>
								
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