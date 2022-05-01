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
					
						<section class="share inner scroll-spy">
					<div class="boardtitle">
						<div class="text01">PETRODUCE</div>
						<div class="text02">가족을 소개합니다</div>
					</div>
					<div class="boardcontent back-to-position to-down">
						<c:forEach var='p' items='${petroContentList }'>
							<div class="item ">
								<div class="shareImg">
									<a href="${root }board/petro/read?petro_idx=${p.petro_idx}"><img src="${root }upload/${p.petro_img}" alt=""></a>
								</div>
								<div class="shareText">
									<div>${p.petro_title }</div>
									<div>${p.petro_writer }</div>
								</div>
							</div>
						</c:forEach>
					</div>
				<div class="text-right">
					<a href="${root }board/petro/write" class="btn btn-primary">글쓰기</a>
				</div>
				</section>

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


			</div>
		</div>
	</div>
	
	
	<!-- 바텀 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
	
</body>
</html>