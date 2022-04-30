<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Warau</title>


</head>
<body>
	<!-- 탑메뉴 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
	
	<!-- 게시글 리스트 -->
	<div class="container" style="margin-top: 100px">
		<div class="card shadow">
			<div class="card-body">
				<h4 class="card-title">PETRODUCE</h4>
				<table class="table table-hover" id='board_list'>
					<thead>
						<tr>
							<th class="text-center d-none d-md-table-cell">글번호</th>
							<th class="w-50">제목</th>
							<th class="text-center d-none d-md-table-cell">작성자</th>
							<th class="text-center d-none d-md-table-cell">작성날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${petroContentList }" >
						
						<tr>
							<td class="text-center d-none d-md-table-cell">${p.petro_idx }</td>
							<td><a href='${root }board/petro/read?petro_idx=${p.petro_idx}'>${p.petro_title }</a></td>
							<td class="text-center d-none d-md-table-cell">${p.petro_writer }</td>
							<td class="text-center d-none d-md-table-cell">${p.petro_regdate }</td>

						</tr>

						</c:forEach>
					
						
					</tbody>
				</table>

				<div class="d-none d-md-block">
					<ul class="pagination justify-content-center">
					
						<!-- 이전버튼 -->
						<c:choose>
							<c:when test="${pageVO.prevPage <= 0 }">
								<li class="page-item disabled">
									<a href="#" class="page-link">이전</a>
								</li>
							</c:when>
							<c:otherwise>
							<li class="page-item ">
								<a href="${root }board/petro?page=${pageVO.prevPage}" class="page-link">이전</a>
							</li>
							</c:otherwise>
						</c:choose>
						
						
						
						<!-- 페이지 버튼 -->
						<c:forEach var="p_idx" begin="${pageVO.min }" end="${pageVO.max }">
						<c:choose>
							<c:when test="${p_idx == pageVO.currentPage }">
							<li class="page-item active">
								<a href="${root }board/petro?page=${p_idx}" class="page-link">${p_idx}</a>
							</li>
							</c:when>
							<c:otherwise>
							<li class="page-item ">
								<a href="${root }board/petro?page=${p_idx}" class="page-link">${p_idx}</a>
							</li>
							</c:otherwise>
						</c:choose>
						</c:forEach>
						
						
						
						<!-- 다음 버튼 -->
						<c:choose>
							<c:when test="${pageVO.max >= pageVO.pageCnt }">
									<li class="page-item disabled">
										<a href="#" class="page-link">다음</a>
									</li>
							</c:when>
							<c:otherwise>
									<li class="page-item">
										<a href="${root }board/petro?page=${pageVO.nextPage}" class="page-link">다음</a>
									</li>
							</c:otherwise>
						</c:choose>
							
						
					
						
					</ul>
				</div>


				<div class="text-right">
					<a href="${root }board/petro/write" class="btn btn-primary">글쓰기</a>
				</div>

			</div>
		</div>
	</div>
	
	
	<!-- 바텀 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
	
</body>
</html>