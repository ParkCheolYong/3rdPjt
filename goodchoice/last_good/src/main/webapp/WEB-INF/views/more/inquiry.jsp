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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
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
	<%@include file="/common/header.jspf"%>
	

		<div class="top-background">
            <br><p>더보기</p>
         </div>
         
	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<c:choose>
			<c:when test="${empty sessionScope.nick}">
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="login"><font color="#e61c51"><b>1:1 문의</b></font></a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:when>
			<c:otherwise>
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="inquiry"><font color="#e61c51"><b>1:1 문의</b></font></a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:otherwise>
		</c:choose>
		<div class="align_rt">

			<!-- Faq -->
			<div class="faq">

				<!-- 상단 탭 버튼 -->
				<div class="top_link">
					<li><a href="inquiry" class="on"> 나의 문의 내역</a></li>
					<li><a href="inquiryAdd"> 새 문의 작성</a></li>
				</div>
				<!-- //상단 탭 버튼 -->

				<!-- List -->
				<div class="faq_list">
					<div class="list" style="display: block">
						<ul>
							<c:forEach items="${list }" var="dto">
								<li>
									<p class="link">
										<span>${dto.type }&nbsp;&nbsp;</span>
									</p>
									<div class="ans">
										<div>
											<font face="arial" color="#252525"><span
												style="font-size: 13.3333px;">${dto.contents }</span></font>
										</div>

									</div>
								</li>
							</c:forEach>

						</ul>
					</div>
				</div>
				<!-- //List -->
				<br>
			</div>
			<!-- //Faq -->

		</div>

	</div>

	<%@include file="/common/footer.jspf"%>
</body>
</html>