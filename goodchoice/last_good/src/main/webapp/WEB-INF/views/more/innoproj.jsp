<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혁신 프로젝트</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/event.css">
   <style type="text/css">

   .bbs {
		width: 730px;
		height: 850px;
		margin-top: 0px;
		line-height: 1.6em;
	}
	
	.bbs td {
		border-bottom: 1px solid #e6e6e6;
		height: 50px;
	}
	
	.bbs td a {
		text-decoration: none;
		color: white;
		margin-left: 8px;
	}
	
   .cont-list {
		list-style: none;
		padding: 10px 0;
   }
   
   .cont-item {
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
				<li><a href="event" class="active">이벤트</a></li>
				<li><a href="innoproj"><font color="#e61c51"><b>혁신 프로젝트</b></font></a></li>
				<li><a href="faq">자주 묻는 질문</a></li>
				<li><a href="inquiry">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- InnoProj start -->
	         <div class="innoContent">
	         	<ul class="cont-list">
	         		<li class="cont-item"><font size="4em"><b>혁신 프로젝트 란?</b></font><br>
	         		<font size="3.5em" style="line-height:2em; color:#6f6f6f;">건전한 예약 문화를 조성하기 위해 여기어때가 시행하는 인식개선 캠페인 입니다.</font></li>
	         	</ul>
	            <table class="bbs">
	               <c:forEach items="${list}" var="dto">
	               <tr>
	                  <td style="background-image: url('imgs/circlebutton.PNG');
	         					background-repeat: no-repeat;
	         					background-position: 0% 50%;
	         					width: 60px;
	         					text-align: center;
	         					font-size: 12pt;
	         					padding-right: 15px;"><a href="innoprojDetail?no=${dto.no }"><b>${dto.no }탄</b></a></td>
	                  <td><a href="innoprojDetail?no=${dto.no }"><font color="#272727" size="4">${dto.sub }</font></a><a href="innoprojDetail?no=${dto.no }"><span style="background-color:#ebebeb"><font color="#666666">${dto.tag }</font></span><br><font color="#666666">${dto.sub2 }</font></a></td>
	               </tr>               
	               </c:forEach>
	            </table>
	            <div style="margin-top: 20px; margin-left: 650px;">
					<button style="background-color: #e51048; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold;"><a style="color: white;" href="innoprojAdd">글쓰기</a></button>
				</div>
	         </div>
			<!-- InnoProj end -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>