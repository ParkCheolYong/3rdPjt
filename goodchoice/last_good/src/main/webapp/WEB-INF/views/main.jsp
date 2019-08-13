<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#news {
	position: absolute;
	margin: 650px 0px 0px 300px;
	font-size: 12px;
}
#second-menu {
padding:32px 0 29px 41px;background:rgb(253,253,253);
	position: relative;
	margin: auto 0;
	width:100%;
	display: flex;
}
#second-menu .table {
	text-align: center;
	overflow:hidden;width:1024px;margin:0 auto
}
#second-menu .table td{
	float:left;width:109px;
}

#second-menu .table a{
	text-decoration: none;
	color: #646464;
	display:block;height:107px;font-size:18px;color:rgba(0,0,0,0.56);text-align:center
}
/*
#second-menu .table a {
	text-decoration: none;
	color: #646464;
}
*/
#top-background {
	position: relative;
	background-image: url('imgs/bae.png');
	background-size: auto;
	background-repeat: no-repeat;
	background-position: 50% 100%;
	margin: 0;
	background-color: #F7323F;
	width: 100%;
	height: 450px;
	padding-left: 0px;
	padding-top: 72px;
}



.recommend {
	width: 1024px;
	margin: 0 auto;
	overflow: hidden;
	padding: 78px 31px 0 31px
}

.recommend li {
	overflow: hidden;
	float: left;
	position: relative;
	width: 473px;
	height: 162px;
	margin: 0 0 16px 0;
	padding: 0 24px 0 186px;
	border: 1px solid rgba(0, 0, 0, 0.08);
	box-sizing: border-box
}

.recommend li:last-child {
	display: block;
}

.recommend li:nth-child(even) {
	margin-left: 16px
}

.recommend li a {
	display: block;
	height: 162px;
	font-size: 17px;
	line-height: 1.6;
	color: rgba(0, 0, 0, 0.56);
	box-sizing: border-box
}

.recommend li img {
	position: absolute;
	top: 0;
	left: 0;
	width: 162px;
	height: 162px
}

.recommend li strong {
	display: block;
	padding: 38px 0 14px 0;
	font-size: 20px;
	line-height: 1;
	font-weight: normal;
	color: rgb(0, 121, 107)
}

.appDown {
	display: block;
	overflow: hidden;
	width: 962px;
	height: 320px;
	margin: 64px auto 78px auto;
	background:
		url('imgs/%EA%B5%AC%EA%B8%80%20%EC%95%B1%EC%8A%A4%ED%86%A0%EC%96%B4%20%EB%B0%B0%EA%B2%BD.png')
		center center no-repeat;
	background-size: cover;
	text-align: center
}

.appDown p {
	margin: 103px 0 27px 0;
	font-size: 28px;
	color: rgba(0, 0, 0, 0.87)
}

.appDown div a {
	display: inline-block;
	width: 168px;
	height: 52px;
	margin: 0 4px;
}

.appDown div a img {
	width: 168px;
	height: auto
}

.appDown div button {
	display: none
}

.event_main {
	width: 962px;
	margin: 0 auto;
}

.swiper-container {
	margin-left: auto;
	margin-right: auto;
	position: relative;
	overflow: hidden;
	z-index: 1;
	/*내가넣음*/
	margin: 0;
	padding: 0;
	border: 0;
	box-sizing: border-box;
}

.swiper-wrapper {
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 20;
	display: flex;
	box-sizing: content-box;
}

.swiper-container-horizontal>.swiper-pagination-bullets {
	left: 0;
	width: 100%;
}

.swiper-pagination {
	bottom: 16px;
}

.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet
	{
	margin: 0 5px;
}

.swiper-pagination-clickable .swiper-pagination-bullet {
	cursor: pointer;
}

.swiper-pagination-bullet {
	width: 9px;
	height: 9px;
	border: 2px solid rgba(255, 255, 255, 0.7)
}

.swiper-pagination-bullet {
	width: 9px;
	height: 9px;
	border: 2px solid rgba(255, 255, 255, 0.7);
}
</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
</head>

<body>
	<%@include file="/common/header.jspf"%>

	<div class="mainContent"></div>
	<div id="top-background"></div>
	<div id="second-menu">
		<table class="table">
			<tr>
				<td><a href="#"><img src="imgs/menu/motel.png"><br>모텔</a></td>
				<td><a href="#"><img src="imgs/menu/hotel.png"><br>호텔</a></td>
				<td><a href="#"><img src="imgs/menu/pension.png"><br>펜션</a></td>
				<td><a href="#"><img src="imgs/menu/resort.png"><br>리조트</a></td>
				<td><a href="#"><img src="imgs/menu/guesthouse.png"><br>게스트하우스</a></td>
				<td><a href="#"><img src="imgs/menu/camping.png"><br>캠핑</a></td>
				<td><a href="#"><img src="imgs/menu/hanok.png"><br>한옥</a></td>
				<td><a href="#"><img src="imgs/menu/location.png"><br>내위치</a></td>
				<td><a href="#"><img src="imgs/menu/payback.png"><br>페이백</a></td>
			</tr>
		</table>
	</div>
	<div id="news">
		<h1>여기어때 소식</h1>
		<div class="recommend">

			<ul>
				<!-- target="_blank" : 새윈도우창을 열어서 웹페이즈 염. 기존창 남아있음 
          _self : 윈도우창에 그대로 현재프레임에 링크 열기
          _parent : 현재 프레임 부모프레임에서 새 웹페이지가 열림
          _top : 최상위 프레임에서 열림. parent와 비슷-->
				<li><a href="#" target="_blank"><img src="imgs/bs.png" /><strong>여기어때
							비즈니스</strong>출장부터 복지까지<br />여기어때 비즈니스로 스마트하게</a></li>
				<li><a href="#" target="_blank"><img src="imgs/jalfont.png"
						alt="여기어때 서체" /><strong>여기어때 서체 출시</strong>젊고 당당한 여기어때 잘난체<br />지금
						다운로드 받으세요!</a></li>
			</ul>
		</div>
			</div>

		<div class="appDown">
			<p>
				앱 다운 받고 <b>더 많은 혜택</b> 받으세요
			</p>
			<div>
				<!-- a태그속 title : 커서 올렸을때 설명문구 -->
				<a href="#" target="_blank" title="구글플레이 새창"><img
					src="imgs/%EA%B5%AC%EA%B8%80.png" alt="구글플레이에서 다운" /></a> <a href="#"
					target="_blank" title="앱스토어 새창"><img
					src="imgs/%EC%95%B1%EC%8A%A4%ED%86%A0%EC%96%B4.png" alt="앱스토어에서 다운" /></a>

			</div>
		</div>
		<!-- //앱 다운로드-->
		<div class="event_main">
			<h2>이벤트</h2>
			<section class="swiper-container swiper-container-horizontal">
				<ul class="swiper-wrapper"
					style="transform: translate3d(-1924px, 0px, 0px); transition-duration: 0ms;">
					<li class="swiper-slide swiper-slide-duplicate"
						data-swiper-slide-index="6" style="width: 962px;"><a
						href="/more/eventView/476?page=0"><img
							src="imgs/%EC%82%AC%ED%88%AC%EB%A6%AC.jpg" alt="우리카드 포인트로 예약하세요!"></a></li>
					<li class="swiper-slide swiper-slide-prev"
						data-swiper-slide-index="0" style="width: 962px;"><a
						href="/more/eventView/718?page=0"><img
							src="imgs/%ED%95%A0%EC%9D%B8%EB%8C%80%EC%A0%842%ED%83%84.png"
							alt="전국민 숙박 할인대전 2탄"></a></li>
					<li class="swiper-slide swiper-slide-active"
						data-swiper-slide-index="1" style="width: 962px;"><a
						href="/more/eventView/709?page=0"><img
							src="imgs/%ED%8A%B9%EA%B8%89%ED%98%B8%ED%85%94.jpg"
							alt="올여름 호캉스 여어떻노"></a></li>
					<li class="swiper-slide swiper-slide-next"
						data-swiper-slide-index="2" style="width: 962px;"><a
						href="/more/eventView/716?page=0"><img
							src="imgs/%EC%84%A0%EC%B0%A9%EC%88%9C%20%EC%A6%89%EC%8B%9C%ED%95%A0%EC%9D%B8.jpg"
							alt="맞히면 쿠폰득! 경상도 편"></a></li>
					<li class="swiper-slide" data-swiper-slide-index="3"
						style="width: 962px;"><a href="/more/eventView/682?page=0"><img
							src="imgs/%EC%B9%9C%EA%B5%AC%EC%97%90%EA%B2%8C.png"
							alt="친구에게 16만원 여행쿠폰세트 보내기"></a></li>
					<li class="swiper-slide" data-swiper-slide-index="4"
						style="width: 962px;"><a href="/more/eventView/700?page=0"><img
							src="imgs/%ED%8A%B9%EA%B8%89%ED%98%B8%ED%85%94.jpg"
							alt="7월 카카오페이 즉시할인"></a></li>
					<li class="swiper-slide" data-swiper-slide-index="5"
						style="width: 962px;"><a href="/more/eventView/412?page=0"><img
							src="imgs/%EC%84%A0%EC%B0%A9%EC%88%9C%20%EC%A6%89%EC%8B%9C%ED%95%A0%EC%9D%B8.jpg"
							alt="매일 1만원 선착순 할인!"></a></li>
					<li class="swiper-slide" data-swiper-slide-index="6"
						style="width: 962px;"><a href="/more/eventView/476?page=0"><img
							src="imgs/%ED%8F%AC%EC%9D%B8%ED%8A%B8%EC%98%88%EC%95%BD.png"
							alt="우리카드 포인트로 예약하세요!"></a></li>
					<li
						class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
						data-swiper-slide-index="0" style="width: 962px;"><a
						href="/more/eventView/718?page=0"><img
							src="imgs/%EC%B9%9C%EA%B5%AC%EC%97%90%EA%B2%8C.png"
							alt="전국민 숙박 할인대전 2탄"></a></li>
				</ul>
				<!-- Add Pagination -->
				<div
					class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
					<span class="swiper-pagination-bullet"></span><span
						class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
						class="swiper-pagination-bullet"></span><span
						class="swiper-pagination-bullet"></span><span
						class="swiper-pagination-bullet"></span><span
						class="swiper-pagination-bullet"></span><span
						class="swiper-pagination-bullet"></span>
				</div>
			</section>
		</div> <!-- //eventMain end -->
		
<%@include file="/common/footer.jspf"%>

</body>
</html>
