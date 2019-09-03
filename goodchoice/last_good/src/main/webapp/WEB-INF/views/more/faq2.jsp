<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/faq.css">
   <style type="text/css">
   
	.top-background {
		position: absolute;
		width: 100%;
		height: 205px;
		background-color: #F7323F;
		margin: 0px 0px 0px 0px;
	}
	
	.top-background p {
		position: absolute;
		margin: 82px 0px 0px 310px;
		font-size: 37px;
		color: white;
	}
	
	.sub_wrap nav {
		margin-top: 150px;
	}
	
	.event {
		margin-top: 150px;
	}
	
   </style>
<script src="js/jquery-1.12.4.min.js"></script>
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
				<li><a href="#">공지사항</a></li>
				<li><a href="event" class="active"><font color="#e61c51"><b>이벤트</b></font></a></li>
				<li><a href="innoproj">혁신 프로젝트</a></li>
				<li><a href="faq">자주 묻는 질문</a></li>
				<li><a href="#">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- Event -->
			<div class="event">
				<ul id="event" class="event_list">
				
				<c:forEach items="${list}" var="dto">
					<li>
							<b>${dto.SUB }</b><br>
							<span>기간: ${dto.STARTDATE } ~	${dto.ENDDATE }</span>
							<a href="detail?no=${dto.NO }">
							<img src="${dto.THUMBNAIL }">
							</a>
							<a href="delete?no=${dto.NO}">X</a>
					</li>
					
				</c:forEach>
				
				</ul>
				<div id="pagination">
				</div>
					<br>
					<a href="eventAdd">등록</a>
			</div>
			<!-- //Event -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>