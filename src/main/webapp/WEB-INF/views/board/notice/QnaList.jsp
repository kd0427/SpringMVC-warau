<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>QnA</title>
</head>
<body>

<!-- 탑메뉴 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
	
	<!-- QnA 목록 -->
	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">궁금해요! 알려주세요!</h4>
				<table class="table table-hover" id='QnaList'>
				<ul class="qna">
            <li>
                <label for="qna-1" value="${getNotice.notice_writer}"/>
                <input type="checkbox" id="qna-1">
                <div>
                    <p value=""${getNotice.notice_content}"/></p>
                </div>
            </li>
        </ul>
        
        <div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="form-group">
						<label for="board_writer_name">작성자</label>
						<input type="text" id="board_writer_name" name="boar5d_writer_name" class="form-control" value="${readAdoptVO.adopt_writer}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_date">작성날짜</label>
						<input type="text" id="board_date" name="board_date" class="form-control" value="${readAdoptVO.adopt_regdate }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_subject">제목</label>
						<input type="text" id="board_subject" name="board_subject" class="form-control" value="${readAdoptVO.adopt_title }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_content">내용</label>
						<textarea id="board_content" name="board_content" class="form-control" rows="10" style="resize:none" disabled="disabled">${readAdoptVO.adopt_content}</textarea>
					</div>
					<c:if test="${readAdoptVO.adopt_img != null }">
						<div class="form-group">
							<label for="board_file">첨부 이미지</label>
							<img src="${root }upload/${readAdoptVO.adopt_img}" width="100%"/>						
						</div>
					</c:if>
					<div class="form-group">
						<div class="text-right">
							<a href="${root }board/adopt" class="btn btn-primary">목록보기</a>
							<a href="${root }board/modify" class="btn btn-info">수정하기</a>
							<a href="${root }board/delete" class="btn btn-danger">삭제하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
				</table>
			</div>
		</div>
	</div>


<!-- 바텀 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>