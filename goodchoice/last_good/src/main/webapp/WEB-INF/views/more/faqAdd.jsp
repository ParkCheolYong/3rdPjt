<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/faq.css">
<style type="text/css">
</style>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<%@include file="/common/header.jspf"%>

		<div class="top-background">
            <br><p>더보기</p>
         </div>

	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<nav>
			<ul>
				<li><a href="notice">공지사항</a></li>
				<li><a href="event">이벤트</a></li>
				<li><a href="innoproj">혁신 프로젝트</a></li>
				<li><a href="faq" class="active">자주 묻는 질문</a></li>
				<li><a href="inquiry">1:1 문의</a></li>
				<li><a href="terms">약관 및 정책</a></li>
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
				<form action="faqWrite" method="post">
				<div class="faq_list">
					<div class="list" style="display: block">
						<ul>
							<li>
								<p class="link on">
									<span>제목 : <input type="text" name="sub" id="sub" style="width: 550px;"/></span>
									
								</p>
								<div class="ans on">
									<div>
										<font face="arial" color="#252525"><span style="font-size: 13.3333px;">
										<textarea name="content" id="faq-content"></textarea></span></font>
											<script type="text/javascript">
												CKEDITOR.replace('faq-content');
											</script>
											
									</div>
									
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- //List -->
				<br>
				<div style="text-align: right">
					<button style="background-color: #F7323F; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold; color: white;">등 록</button>
				</div>
				</form>
			</div>
			<!-- //Faq -->

		</div>

	</div>

	<%@include file="/common/footer.jspf"%>
</body>
</html>