<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="form-group">
						<label for="board_writer_name">작성자</label>
						<input type="text" id="notice_writer" name="notice_writer" class="form-control" value="${noticeRead.notice_writer}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_date">작성날짜</label>
						<input type="text" id="notice_regdate" name="notice_regdate" class="form-control" value="${noticeRead.notice_regdate }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_subject">제목</label>
						<input type="text" id="notice_title" name="notice_title" class="form-control" value="${noticeRead.notice_title }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_content">내용</label>
						<textarea id="notice_content" name="notice_content" class="notice_content" rows="10" style="resize:none" disabled="disabled">${noticeRead.notice_content}</textarea>
					</div>
					<div class="form-group">
						<div class="text-right">
							<a href="${root }board/noticeList" class="btn btn-primary">목록보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>

<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

</body>
</html>