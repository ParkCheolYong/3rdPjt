<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#content {
    overflow: hidden;
}
.more_wrap {
    padding-top: 100px;
    background: #fff;
}
.sub_wrap {
    min-height: 390px;
}

.sub_wrap nav {
    display: block;
    float: left;
    width: 238px;
    padding-left: 31px;
    
}
ul, ol, li {
    list-style: none;
}.sub_wrap nav ul li {
    margin-bottom: 26px;
}

ul, ol, li {
    list-style: none;
}.sub_wrap nav ul li a {
    display: block;
    font-size: 18px;
    color: rgba(0,0,0,0.56);
}

a {
    text-decoration: none;
}
.sub_wrap {
    width: 1024px !important;
    margin: 0 auto 0 auto;
    padding-bottom: 50px;
}
.sub_wrap .align_rt {
	float: right;
	width: 724px;
	margin-right: 31px;
}

.event {
	background: #fff;
}

.event_list {
	border-top: none;
}

.event_list {
	border-top: 1px solid rgba(0, 0, 0, 0.08);
}

ul, ol, li {
	list-style: none;
}

.event_list li {
	margin: 0 0 40px 0;
	padding: 0 0 47px 0;
	border-bottom: none;
}

.event_list li {
	position: relative; <!--
	margin: 0 16px;
	padding: 23px 0;
	border-bottom: 1px solid rgba(0, 0, 0, 0.08); -->
	line-height: normal;
}

ul, ol, li {
	list-style: none;
}

.event_list li b {
	display: block;
	padding-right: 80px;
	font-size: 18px;
	font-weight: bold;
}

.event_list li span {
	display: block;
	margin: 7px 0 12px 0;
	font-size: 16px;
	color: rgba(0, 0, 0, 0.56);
}

.event_list li a {
	display: block;
	position: relative;
}

.event_list li a img {
	width: 100%;
}

.event_list li a img {
	width: 100%;
}

fieldset, img {
	border: 0;
}
</style>
<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@include file="/common/header.jsp"%>
	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<nav>
			<ul>
				<li><a href="#">공지사항</a></li>
				<li><a href="#" class="active">이벤트</a></li>
				<li><a href="#">혁신 프로젝트</a></li>
				<li><a href="#">자주 묻는 질문</a></li>
				<li><a href="#">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- Event -->
			<div class="event">

				<div class="mobile_top">이벤트</div>

				<ul id="event" class="event_list">
				
				<c:forEach items="${list}" var="dto">
					<li>
							<b>${dto.sub }</b>
							<span>기간: ${dto.startdate } ~	${dto.enddate }</span>
							<a href="detail?no=${dto.no }">
							<img src="${dto.thumbnail }">
							</a>
							<a href="delete?no=${dto.no}">X</a>
					</li>
					
				</c:forEach>
				
					<li>
						<!----> <b>전국민 숙박 할인대전 2탄</b>
						 <span>기간: 2019.07.23 ~	2019.08.12</span>
						  <a href="/more/eventView/718?page=0">
						  <img src="//image.goodchoice.kr/event/mainbanner/06d8016c47593a1a47df141405cd1b43.png"/>
						</a>
					</li>
					
				</ul>
				<div id="pagination">
					<div class="paging">
						<!---->
						<button class="on">1</button>
						<button>2</button>
						<button>3</button>
						<button>4</button>
						<button>5</button>
						<button class="next">다음</button>
					</div>
				</div>
					<a href="eventAdd">등록</a>
			</div>
			<!-- //Event -->

		</div>

	</div>
	<%@include file="/common/footer.jsp"%>
</body>
</html>