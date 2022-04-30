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

						<form:form action="${root }board/adopt/write_pro" method="post" modelAttribute="writeAdoptVO" enctype="multipart/form-data">
							<form:hidden path="adopt_idx"/>
							<div class="form-group">
								<form:label path="adopt_title">제목</form:label>
								<form:input path="adopt_title" class="form-control"/>
								<form:errors path="adopt_title" style='color:red'/>
							</div>
							<div class="form-group">
								<form:label path="adopt_content">내용</form:label>
								<form:textarea path="adopt_content" class="form-control" id="d_noticeInsert" rows="10" style="resize: none"/>
								<form:errors path="adopt_content" style='color:red'/>
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
<script>
$(function(){
	$('#d_noticeInsertBtn').click(function(){
		if($("#d_noticeSubject").val()=="" ){
			alert("공지사항 제목을 입력하세요.");
			return false;
		}else if($("#d_noticeInsert").val()==""){
			alert("공지사항 내용을 입력하세요.");
			return false;
		}
		$('#noticeFrm').submit();
	});
	
	$('#d_insertCnlBtn').click(function(){
		location.href="noticeAdminList";
	});

	
	//summernote
	$("#d_noticeInsert").summernote({
		height: 400,
		minHeight: 400,
		maxHeight: 400,
		focus: false,
		lang: "ko-KR",
		callbacks: {
			onImageUpload: function(files){
				console.log(files)
				uploadSummernoteImageFile(files[0], this);
			},
			onPaste: function(e){
				var clipboardData = e.originalEvent.clipboardData;
				if(clipboardData && clipboardData.items && clipboardData.items.length) {
					var item = clipboardData.items[0];
					if(item.kind === 'file' && item.type.indexOf('image/') !== -1) {
						e.preventDefault();
					}
				}
			}
		},
		toolbar: [
			['fontname', ['fontname']],
			['fontsize', ['fontsize']],
			['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
			['color', ['forecolor', 'color']],
			['para', ['ul', 'ol', 'paragraph']],
			['height', ['height']],
			['insert', ['picture', 'link']]
		],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	});

	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		console.log(file)
		console.log(data)
		$.ajax({
			data: data,
			type: 'POST',
			url: 'uploadSummernoteImageFile',
			contentType: false,
			processData: false,
			success: function(data) {
				console.log('success')
				console.log('data->'+data)
				$(editor).summernote('insertImage', data);
			},
			error: function() {
				console.log('error')
			}
		});
	}
});
</script>


</body>
</html>
