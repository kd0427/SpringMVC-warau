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
<link rel="stylesheet" href="${root }qna/checkbox2.css">
<title>QnA</title>
</head>
<body>

<!-- 탑메뉴 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
	
	<!-- QnA 목록 -->
	
		<ul class="qna">
            <li>
                <input type="checkbox" id="qna-1">
                <label for="qna-1">"자랑하기"에 저희 아이의 사진이나 영상을 올려도 괜찮을까요?</label>
                <div>
                    <p>물론입니다!:)<br>
					<br>
					"자랑하기"는 집사분들의 사랑스러운 아이들의 모습을 공개하는 장소입니다!<br>
					그러니 아이들의 사랑스러운 모습들을 마음껏 보여주세요!<br>
					물론 사진이나 영상이 없는 글도 많이 올려주세요!<br>
					<br>
					집사분들의 글이 또 다른 집사와 랜선집사, 그리고 저희 [WARAU] 관리자를 웃음짓게 한답니다!:)<br>
					<br>
					그러니 자유롭게 글을 올려주세요!</p>
                </div>
            </li>
             <li>
                <input type="checkbox" id="qna-2">
                 <label for="qna-2">"나눠요"에서는 무엇이든 팔아도 되나요?</label>
                <div>
                    <p>집사분들이 구매하신 상품들을 무료나눔을 하거나 서로 합의하에 공유하시는 건 괜찮습니다!<br>
					<br>
					다만, 직접 만드신 수제상품의 경우, 특히 음식의 경우, 가급적 자제를 부탁드립니다.<br>
					물론 정성으로 만드신 건 잘 알지만, 혹시 모를 불상사를 막기위함입니다.<br>
					<br>
					그 외의 경우는 제한없이 집사분들간의 합의하에 자유롭게 하시면 됩니다!:)<br>
					<br>
					그러니 자유롭게 가진 물건들을 다른 집사들에게도 공유해주세요!</p>
                </div>
            </li>
            <li>
                <input type="checkbox" id="qna-3">
                <label for="qna-3">"정보 주세요"에는 어떤 글을 올리면 되나요?</label>
                <div>
                    <p>"정보 주세요" 게시판은 집사분들의 애완관련 정보를 공유하는 곳입니다.<br>
					<br>
					아이들의 관련 정보뿐만 아니라,<br>
					애견 미용, 애견 훈련 같은 집사의 애완관련 활동이나<br>
					어질리티나 훈련의 모습을 보여주시면 됩니다:)<br>
					<br>
					사랑스러운 아이들의 손! 훈련 모습도, 빵야! 모습도 모두 보여주세요!<br>
					물론 멋지게 아이들은 미용중인 집사의 모습도 보여주세요!<br>
					<br>
				</div>
            </li>
            <li>
                <input type="checkbox" id="qna-4">
                 <label for="qna-4">adopt에서 다른 사이트와 연계해서 분양해도 되나요?</label>
                <div>
                    <p>안타깝지만, 저희 [WARAU]에서는 다른 업체와 입,분양의 협약을 맺고 있지 않습니다.<br>
					또한 저희 [WARAU]내에서 타 사이트와의 연계분양은 제한되어 있습니다.<br>
					<br>
					개인적인 사정으로 더 이상 기를 수 없거나<br>
					우리 아이가 예쁜 아이를 낳았는데 새로운 가족에게도 좋은 추억을 드리고 싶은 분들과<br>
					새 가족과 좋은 추억을 만들고 싶은 분들을 위한 게시판입니다. <br>
					<br>
					그리고 개인적으로 보내시려는 분은 아이의 사진과 이름, 특징 등 간략하게 소개해주시면 됩니다!:) <br>
					<br>
                </div>
            </li>
            <li>
                <input type="checkbox" id="qna-5">
                 <label for="qna-5">"Notice"에서 알 수 있는게 뭐가 있을까요?</label>
                <div>
                    <p>"Notice"에선 각 게시판에 관한 공지 및 소식이 올라갑니다.<br>
					또한 다른 집사분들의 요청으로 인한 사이트 업그레이드, 새로운 관리자에 관한 소식도 올라갑니다.<br>
					<br>
					저희 [WARAU]에 많은 관심을 가져주셔서 감사합니다.  <br>
					앞으로 더 발전하는 [WARAU]가 되도록 하겠습니다. <br>
					<br>
                </div>
            </li>
            <li>
                <input type="checkbox" id="qna-6">
                 <label for="qna-6">QnA에서 다른 질문을 할 수 없나요?</label>
                <div>
                    <p>죄송스럽지만, 현재 QnA에서는 질문을 받고 있지 않습니다.<br>
					<br>
					하지만, 집사분들과 예비집사분들을 위해 개인QnA작성 업데이트 예정입니다.<br>
					차후 확실한 일정이 정해지는 대로 "Notice"에 업로디 하도록 하겠습니다.<br>
					그때까지 [WARAU]를 잘 부탁드립니다:)<br>
                </div>
            </li>
            <li>
                <input type="checkbox" id="qna-7">
                 <label for="qna-7">"PETS"에서 다른 동물들은 볼 수 없나요?</label>
                <div>
                    <p>많은 동물들을 사랑해주셔서 감사합니다:)<br>
					<br>
					현재 게재된 페이지를 제외하고 2,3페이지의 카테고리가 준비되어있습니다.<br>
					앞서 알려드린 댓글업데이트와 동시에 같이 업데이트 될 예정입니다. <br>
					<br>
					앞으로 더 많은 정보를 드릴 수 있는 [WARAU]가 되도록 하겠습니다. <br>
					<br>
                </div>
            </li>
        </ul>
       
<!-- 바텀 -->
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</body>
</html>