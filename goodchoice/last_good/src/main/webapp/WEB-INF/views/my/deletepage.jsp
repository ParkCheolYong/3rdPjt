<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<title>deletepage</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/deletepage.css">
	<style type="text/css">
	</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(window).scroll(function() {
				var scroll = $(window).scrollTop();
				if (scroll > 30) {
					$("#topbar").css("background", "#ffffff");
					$(".menubar li a").css("color", "#000000");
					$(".menubar li button").css("color", "#000000");
					$('#logo').css('background', 'url(imgs/h1_logo_pc.png) 0 0 no-repeat');
					$('#search').css('background', 'url(imgs/ico_srch.png) 50% 50% no-repeat').css('background-size', '24px auto');
					$('#search2').css('background', 'url(imgs/ico_srch.png) 50% 50% no-repeat').css('background-size', '24px auto');
					$('.list_03 li a').css('color', '#000000');
					$('#searchClose').css('background', 'url(imgs/ico_close.png) 50% 50% no-repeat').css('background-size', '24px auto');
				} else {
					$("#topbar").css("background", "#f7323f");
					$(".menubar li a").css("color", "#ffffff");
					$(".menubar li button").css("color", "#ffffff");
					$('#logo').css('background', 'url(imgs/h1_logo_pc_w.png) 0 0 no-repeat');
					$('#search').css('background', 'url(imgs/ico_srch_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
					$('#search2').css('background', 'url(imgs/ico_srch_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
					$('.list_03 li a').css('color', '#000000');
					$('#searchClose').css('background', 'url(imgs/ico_close_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
				}
			})
		});
		$(document).ready(function() {
			var srch_bar = $('.srch');
			srch_bar.hide();
			$('.mainContent').hide();
		});
		$(document).ready(function() {
			var search = $('#search');
			var search_close = $('#searchClose');
			var srch_bar = $('.srch');
			search.click(function() {
				srch_bar.slideDown();
				search.animate({
					left: 400
				}, {
					complete: function() {
						search.hide();
					}
				});
				$('.menubar').hide();
				$('.mainContent').show();
			});
			search_close.click(function() {
				var offset = search.offset();
				search.animate({
					left: 1047
				});
				srch_bar.css('display', 'none');
				$('.menubar').show();
				search.show();
				$('.mainContent').hide();
			});
		});
	
	</script>

 <script type="text/javascript">
        // 비밀번호 미입력시 경고창
        function checkValue(){
            if(!document.deleteform.password.value){
                alert("비밀번호를 입력하지 않았습니다.");
                return false;
            }
        }
    </script>

</head>
<body>
	<div class="frame">
		<div class="header">
			<div id="topbar">
				<div id="topCenter">
					<form class="srch">
						<button type="submit" id="search2" style="right: 1139px;">검색</button>
						<input type="text" id="keyword" placeholder="지역, 숙소명" autocomplete="off">
						<button type="button" id="searchClose" style="right: 400px;">취소</button>
						<div class="srch_bar">
							<strong style="margin-left: 45px;">추천 검색어</strong>
							<ul>
								<li><a href="#">오션뷰</a></li>
								<li><a href="#">파티룸</a></li>
								<li><a href="#">야외수영장</a></li>
								<li><a href="#">속초</a></li>
								<li><a href="#">애견동반펜션</a></li>
								<li><a href="#">여수</a></li>
								<li><a href="#">제주도</a></li>
								<li><a href="#">안면도</a></li>
								<li><a href="#">남해</a></li>
								<li><a href="#">부산</a></li>
							</ul>
						</div>
					</form>
					<h1 id="logo"><a id="aLogo" href="#/" title="여기어때">요기어때</a></h1>
					<button type="button" id="search" style="right: 396px;">검색</button>
					<ul class="menubar">
						<li><a href="#">내주변</a></li>
						<li><a href="#">예약내역</a></li>
						<li class="over">
							<button type="button"><span>더보기</span></button>
							<ul class="list_03">
								<li><a href="#">공지사항</a></li>
								<li><a href="#">이벤트</a></li>
								<li><a href="#">혁신 프로젝트</a></li>
								<li><a href="#">자주 묻는 질문</a></li>
								<li><a href="#">1:1 문의</a></li>
								<li><a href="#">약관 및 정책</a></li>
							</ul>
						</li>
						<li><a href="#"><span>로그인</span></a></li>
					</ul>
				</div>
			</div>
			<div class="top-background">
				<p>내정보</p>
			</div>
		</div>
		<div class="container">
			<div class="nav">
				<ul class="nav-list">
					<li class="nav-item"><a href="#" class="nav-link">포인트</a></li>
					<li class="nav-item"><a href="#" class="nav-link">쿠폰함</a></li>
					<li class="nav-item"><a href="#" class="nav-link">예약 내역</a></li>
					<li class="nav-item"><a href="#" class="nav-link">최근 본 숙소</a></li>
					<li class="nav-item"><a href="mypage" class="nav-link">
							<font color="#e61c51"><b>내 정보 관리</b></font>
						</a></li>
				</ul>
				<form id="delete" name="deleteform" action="deletepro" method="post" >
					<div class="delete">
						<div class="text_pw"><strong>회원 탈퇴</strong></div>
						<div class="text">아이디</div>
						<div class="id_input">
							<input type="text" id="id"  placeholder="${sessionScope.email}" readonly="readonly"/>
							<input type="hidden" name="email" value="${sessionScope.email}">	
						</div>
						<br>
						<div class="text">비밀번호</div>
						<div class="pw_input">
							<input type="password" id="password" name="pw" maxlength="15" placeholder="비밀번호를 입력해주세요.">
						</div><br>
		
						<button class="confirm" type="submit">회원탈퇴</button>
						
						<div class="line"></div>
	
						
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 헤더 / 풋터 수정해야 됨 -->
</body>
</html>