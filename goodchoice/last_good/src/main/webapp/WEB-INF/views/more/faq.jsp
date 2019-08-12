<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/faq.css">
<style type="text/css">

</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

$(function(){
$('.faq_list .list .link').each(function(){	
	console.log($(this));
	$(this).click(function(){
		if ($(this).hasClass('on'))
		{
			$('.faq_list .list .link').removeClass('on');
			$('.faq_list .list .ans').removeClass('on');
		}
 		else{
			$('.faq_list .list .link,.faq_list .list .ans').removeClass('on');
			$('.faq_list .list .link,.faq_list .list .ans').removeClass('on');
			$(this).addClass('on');
			$(this).next().addClass('on');
		}
});
	});
});

</script>
</head>
<body>
	<%@include file="/common/header.jsp"%>

	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<nav>
			<ul>
				<li><a href="/more/notice">공지사항</a></li>
				<li><a href="/more/event">이벤트</a></li>
				<li><a href="/more/project">혁신 프로젝트</a></li>
				<li><a href="/more/faq" class="active">자주 묻는 질문</a></li>
				<li><a href="/more/inquiry">1:1 문의</a></li>
				<li><a href="/more/terms">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- Faq -->
			<div class="faq">



				<!-- 상단 탭 버튼 -->
				<div class="top_link">
					<li><a href="/more/faq/37" class="on"> TOP7</a></li>
					<li><a href="/more/faq/26" class=""> 이용문의</a></li>
					<li><a href="/more/faq/27" class=""> 예약취소</a></li>
					<li><a href="/more/faq/28" class=""> 결제/영수증</a></li>
					<li><a href="/more/faq/29" class=""> 예약문의</a></li>
					<li><a href="/more/faq/30" class=""> 쿠폰/포인트</a></li>
					<li><a href="/more/faq/32" class=""> 회원정보</a></li>
					<li><a href="/more/faq/33" class=""> 리얼리뷰</a></li>
					<li><a href="/more/faq/36" class=""> 액티비티</a></li>
				</div>
				<!-- //상단 탭 버튼 -->

				<!-- List -->
				<div class="faq_list">
					<div class="list" style="display: block">
						<ul>
							<li>
								<p class="link">
									<span>[숙박] 천재지변으로 인한 예약취소는 어떻게 하나요?
									</span>
								</p>
								<div class="ans">
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;">천재지변(기상악화)으로 숙소 이용이 불가할
												경우 고객행복센터로 예약내역 및 증빙서류(결항확인서, e-티켓 등)를 보내주시면 확인 후 예약취소 여부를
												안내해 드립니다.</span></font>
									</div>
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;">다만, 상황에 따라 취소가 어려울 수 있는
												점 참고 부탁드립니다.</span></font>
									</div>
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;"><br></span></font>
									</div>
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;">[접수방법]</span></font>
									</div>
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;">※ 이메일 :
												help@goodchoice.kr (예약자명, 숙소명, 체크인 날짜 필수)</span></font>
									</div>
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;">※ 카카오톡 : 카카오톡 내 플러스 친구
												&gt; 여기어때 고객행복센터 추가</span></font>
									</div>
								</div>
							</li>
							<c:forEach items="${list }" var="dto">
							<li>
								<p class="link">
									<span>${dto.sub }</span>
								</p>
								<div class="ans">
									<div>
										<font face="arial" color="#252525"><span
											style="font-size: 13.3333px;">${dto.content }</span></font>
									</div>
									
								</div>
							</li>
							</c:forEach>
							
						</ul>
					</div>
				</div>
				<!-- //List -->

			</div>
			<!-- //Faq -->

		</div>

	</div>

	<%@include file="/common/footer.jsp"%>
</body>
</html>