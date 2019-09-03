<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<title>mypage</title>
	<style type="text/css">
		#topbar {
			position: fixed;
			top: 0;
			left: 0;
			right: 0;
			height: 72px;
			transition: 0.4s;
			background-color: #f7323f;
			z-index: 220;

		}

		a {
			text-decoration: none;
		}

		#topCenter {
			position: relative;
			width: 1024px;
			height: 64px;
			background: none;
			margin: 0 auto;
		}

		ul,
		ol,
		li {
			list-style: none;

		}

		#logo {
			position: absolute;
			top: 26px;
			left: 31px;
			width: 96px;
			height: 20px;
			margin: 0;
			background: url(imgs/h1_logo_pc_w.png) 0 0 no-repeat;
			background-size: 96px auto;
		}

		#aLogo {
			display: block;
			text-indent: -9999px;
			text-decoration: none;
		}

		#search {
			position: absolute;
			border: none;
			text-indent: -9999px;
			top: 22px;
			z-index: 10;
			width: 30px;
			height: 30px;
			background: url(imgs/ico_srch_2.png) 50% 50% no-repeat;
			background-size: 24px auto;

		}

		#searchClose {
			position: absolute;
			border: none;
			text-indent: -9999px;
			top: 22px;
			right: 206px;
			z-index: 10;
			width: 30px;
			height: 30px;
			background: url(imgs/ico_close_2.png) 50% 50% no-repeat;
			background-size: 24px auto;


		}

		button {
			padding: 0;
			cursor: pointer;
			box-sizing: border-box;
			margin: 0em;
			font: 400 13.3333px Arial;
			word-spacing: normal;
			text-transform: none;
			text-indent: 0px;
			text-shadow: none;
			display: inline-block;
			text-align: center;
			align-items: flex-start;
			text-rendering: auto;
		}

		.menubar {
			display: inline-block;
			position: absolute;
			top: 7px;
			right: 31px;
			width: 1600px;
			text-align: right;
			list-style: none;

		}

		.menubar li {
			display: inline-block;
			position: relative;
			min-width: 53px;
			min-height: 35px;
			margin-left: 30px;
			vertical-align: top;
		}

		.menubar li a {
			display: inline-block;
			font-size: 18px;
			color: #ffffff;
			letter-spacing: 0;
		}

		.menubar li button {
			border: none;
			padding: 0;
			background: none;
			font-size: 18px;
			line-height: ;
			color: #ffffff;
			letter-spacing: 0;
		}

		button span {
			position: relative;
		}

		.menubar li ul {
			display: none;
			position: absolute;
			border-radius: 5px;
			padding: 10px;
			/*이부분수정함*/
			background: #fff;
			text-align: left;
			box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.2);
		}

		.menubar li:hover ul {
			display: block;
			/* 마우스 커서 올리면 서브메뉴 보이게 하기 */
			font-size: 14px;
			line-height: 1;
			min-width: auto;
			min-height: auto;
			margin: 0 0 14px 0;
			vertical-align: top;
		}

		.menubar li:hover ul a {
			color: #000000;

		}

		.list_03 {
			top: 30px;
			left: -65px;
			width: 184px;
		}

		.mainContent {
			height: 2000px;
			width: auto;
			background-color: rgba(0, 0, 0, 0.5);
			margin: 0px auto;
			padding: 0px auto;
			border: 0px;
			left: 0;
			right: 0;
			position: absolute;
			z-index: 30
		}

		.srch_bar {
			position: absolute;
			top: 72px;
			left: 300px;
			width: 60%;
			height: 280px;
			background-color: #ffffff;
			border: 1px;
			border-bottom-right-radius: 10px;
			border-bottom-left-radius: 10px;

		}

		.srch_bar ul li {
			margin-left: 10px;
			margin-bottom: 3px;
		}

		.srch_bar li a {
			color: green;
		}

		#keyword {
			position: absolute;
			left: 340px;
			top: 22px;
			width: 700px;
			height: 25px;
			font-size: 16px;
			background-color: transparent;
			border: none;
		}

		#search2 {
			position: absolute;
			border: none;
			text-indent: -9999px;
			top: 22px;
			right: 596px;
			z-index: 310;
			width: 30px;
			height: 30px;
			background: url(imgs/ico_srch_2.png) 50% 50% no-repeat;
			background-size: 24px auto;

		}

		.top-background {
			position: absolute;
			width: 100%;
			height: 205px;
			background-color: #F7323F;
			margin: 0px 0px 0px -8px;
		}

		.top-background p {
			position: absolute;
			margin: 82px 0px 0px 310px;
			font-size: 37px;
			color: white;
		}

		.nav {
			position: absolute;
			width: 150px;
			color: #646464;
			margin: 240px 0px 0px 290px;
		}

		.nav-list {
			list-style: none;
			margin: 0;
			padding: 10px 0;
		}

		.nav-item {
			margin: 12px 0;
		}

		.nav-link {
			display: block;
			text-decoration: none;
			padding: 4px 10px;
			color: #646464;
			font-size: 18px;
		}

		.nav-list li:nth-child(3) {
			color: #e61c51;
		}

		.pwChange {
			position: absolute;
			margin: -230px 0px 0px 250px;
			width: 700px;
			font-family: "나눔고딕";
		}

		.bbs {
			width: 730px;
			height: 850px;
			margin-top: 10px;
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

		/*비밀번호 변경*/

		.confirm {
			margin-right: 5%;
			width: 144px;
			height: 50px;
			border-radius: 4px;
			font-size: 15px;
			color: white;
			text-align: center;
			box-sizing: border-box;
			vertical-align: top;
			background-color: #f30f4c;
			border: solid 1px #ccc;
			font-family: "Malgun Gothic";
			margin-bottom: 40px;
		}

		.text {
			padding-bottom: 10px;
			font-size: 17px;
			color: black;
		}

		.text_pw {
			margin-bottom: 33px;
			font-size: 18px;
			color: black;
		}

		input {
			text-align: left;
			padding-left: 15px;
			width: 374px;
			height: 44px;
			font-size: 18px;
			border: solid 1px #ebebeb;
		}

		input::placeholder {
			color: #bfbfbf;
			text-align: left;
			padding-left: 5px;
		}

		.myInfoEdit {
			margin-top: 30px;
			margin-bottom: 40px;
			font-size: 17px;
			text-decoration-line: underline;
		}

		.line {
			border-bottom: solid 1px #ebebeb;
			margin-top: -100px;
			margin-bottom: 20px;
			padding-top: 40px;
			padding-bottom: 70px;
		}


		
		/*비밀번호 유효성 검사*/
		
		.redText { 
			display: block;
			font-size: 14px;
			color: #f30f4c;
			margin-left:12px;
		}

		.greenText { 
			display: block;
			font-size: 14px;
			color: green;
			margin-left:10px;
		}
		
		span {
			margin-top: 5px;
			margin-bottom: -23px;
		}
		
	</style>
	<script src="js/jquery-1.12.4.min.js"></script>
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
		
		/* ------ 새로운 비밀번호 유효성 검사 ------ */

		$(document).ready(function() {
			var idFuncArray = ["isNewPwForSpan", "spaceCheck"];
			spanValidation($("#newPwSpan"), $("#newPw"), idFuncArray, "6~15자 영문, 숫자, 특수문자를 입력해 주세요.", "사용 가능한 형식의 이름입니다.");
		});

		function spanValidation(spanObj, inputObj, validFuncArray, redMsg, greenMsg, marginLeftPx) {
			spanObj.css("margin-left", marginLeftPx);

			var confirmCheck = false; 

			spanObj.hide();

			inputObj.bind('focusin keyup', function() { 
				var inputValue = inputObj.val();

				var funcResult = true; 

				for (i = 0; i < validFuncArray.length; i++) {
					var funcName = validFuncArray[i]; 
					var funcObj = window[funcName];
					funcResult = funcObj(inputValue); 
					if (!funcResult) { 
						break;
					}
				}

				if (!funcResult) {
					spanObj.show();
					spanObj.removeClass('greenText'); 
					spanObj.addClass('redText'); 

					spanObj.text("");
					spanObj.append(redMsg); 

					confirmCheck = false;
				} else { 
					spanObj.show();
					spanObj.removeClass('redText');
					spanObj.addClass('greenText');

					spanObj.text("");
					spanObj.append(greenMsg);

					confirmCheck = true;
				}

			});

			inputObj.focusout(function() {
				var inputValue = inputObj.val();
				if (confirmCheck || inputValue == "") { 
					spanObj.hide();
				}
			});
		}

		// 6~15자 영문, 숫자, 특수문자만 입력받도록 검증
		function isNewPwForSpan(str) {
			var check = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;
			if (check.test(str)) {
				return false;
			}
			return true;
		}
		
		
		
		/* ------ 기존 비밀번호 유효성 검사 ------ */
	
	$(document).ready(function() {
			var idFuncArray = ["spaceCheck"];
			spanValidation($("#prePwSpan"), $("#prePw"), idFuncArray, "기존 비밀번호를 입력해 주세요.");
		});

		function spanValidation(spanObj, inputObj, validFuncArray, redMsg, greenMsg, marginLeftPx) {
			spanObj.css("margin-left", marginLeftPx);

			var confirmCheck = false; 

			spanObj.hide();

			inputObj.bind('focusin keyup', function() { 
				var inputValue = inputObj.val();

				var funcResult = true; 

				for (i = 0; i < validFuncArray.length; i++) {
					var funcName = validFuncArray[i]; 
					var funcObj = window[funcName];
					funcResult = funcObj(inputValue); 
					if (!funcResult) { 
						break;
					}
				}

				if (!funcResult) {
					spanObj.show();
					spanObj.removeClass('greenText'); 
					spanObj.addClass('redText'); 

					spanObj.text("");
					spanObj.append(redMsg); 

					confirmCheck = false;
				} else { 
					spanObj.show();
					spanObj.removeClass('redText');
					spanObj.addClass('greenText');

					spanObj.text("");
					spanObj.append(greenMsg);

					confirmCheck = true;
				}

			});

			inputObj.focusout(function() {
				var inputValue = inputObj.val();
				if (confirmCheck || inputValue == "") { 
					spanObj.hide();
				}
			});
		}
		

		// 공백 허용하지 않도록 검증 -- 공통이므로 한 번만 입력해도 된다
		function spaceCheck(inputVal) {
			var invalid = " ";

			if (inputVal.indexOf(invalid) > -1) {
				return false;
			} else if (inputVal.length < 1) {
				return false;
			} else {
				return true;
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
					<li class="nav-item"><a href="#" class="nav-link">
							<font color="#e61c51"><b>내 정보 관리</b></font>
						</a></li>
				</ul>

				<div class="pwChange">
					<div class="text_pw"><strong>비밀번호 변경</strong></div>
					<div class="text">기존 비밀번호</div>
					<div class="pw_input">
						<input type="password" id="prePw" placeholder="기존 비밀번호를 입력해주세요.">	
					</div>
						<span id="prePwSpan"></span>
					<br>
					<div class="text">새로운 비밀번호</div>
					<div class="pw_input">
						<input type="text" id="newPw" placeholder="비밀번호(최소 6자 이상)"><span id="newPwSpan"></span>
					</div><br>

					<div class="text">새로운 확인</div>
					<div class="pw_input">
						<input type="text" id="confirmNewPw" placeholder="변경할 비밀번호를 재입력해 주세요."><span id="confirmNewPwSpan"></span>
					</div>
					<div class="myInfoEdit"><a href="#">
							<font color="#000000">내 정보 수정 ></font>
						</a></div>

					<button class="confirm" type="button">저장</button>

					<div class="line"></div>

					여기어때를 이용하고 싶지 않으신가요?　<a href="#" style="color: black; text-decoration: underline; padding-bottom: 200px;">회원탈퇴</a>
				</div>

			</div>
		</div>
	</div>



	<%@include file="/common/footer.jspf"%>
	
</body>
</html>
