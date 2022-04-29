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
<title>Notice</title>
</head>
<body>

<!-- 탑메뉴 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

	<!-- Notice 목록 -->
	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title" border="1">WARAU에서 알려드립니다!</h4>
				<table class="table table-hover" id='noticeList'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">글번호</th>
							<th class="w-50">제목</th>
							<th class="text-center d-none d-md-table-cell">작성자</th>
							<th class="text-center d-none d-md-table-cell">작성날짜</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var='noticeList' items='${noticeList }'>
						<tr>
							<td class="text-center d-none d-md-table-cell">${noticeList.notice_idx }</td>
							<td><a href='${root }board/read?notice_idx=${noticeList.notice_idx }'>${noticeList.notice_title }</a></td>
							<td class="text-center d-none d-md-table-cell">${noticeList.notice_writer }</td>
							<td class="text-center d-none d-md-table-cell">${noticeList.notice_regdate}</td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<!-- 바텀 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>