<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="EUC-KR">
<title>pwchange</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pwchange.css">
	<style type="text/css">
	
	/*레이어 팝업*/
	
	.btn_red_fill {
    width: 100%;
    height: 56px;
    margin-top: 16px;
    display: inline-block;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    color: #fff;
    text-align: center;
    box-sizing: border-box;
    vertical-align: top;
    background: linear-gradient(to bottom, #ff0055 0%,#e62243 100%);
}
body {
	margin: 0;
	padding: 0;
	max-height: 800px;
}
#btn_open {
	background-color: white;
	border: 0px;
	width: 100px;
	font-size: 17px;
	text-decoration: underline;
}
#btn_close {
	background-color: white;
	border: 0px;
	font-size: 17px;
	margin-top: 14px;
	margin-right: 14px;
	display: inline-block;
    position: absolute;
    top: 0;
    right: 0;
    width: 44px;
    height: 44px;
    border: none;
    background: url(//image.goodchoice.kr/images/web_v3/ico_close.png) 50% 50% no-repeat;
    background-size: 24px auto;
    text-indent: -9999px;
}
.Pstyle {
	opacity: 1.0;
	display: none;
	position: relative;
	width: 336px;
	height: 470px;
	border: 5px solid #fff;
	padding: 20px;
	background-color: #fff;
}
.dot_text li {
	margin-bottom: 7px;
	margin-left: -40px;
    font-size: 16px;
    padding-left: 16px;
    background: url(//image.goodchoice.kr/images/web_v3/ico_bul.png) 0 0 no-repeat;
    background-size: 14px auto;
    line-height: 24px;
    color: rgba(0,0,0,0.8);
}
.checkbox1 {
	margin-top: 50px;
}
.checkbox1 {
	width: 20px;
    height: 20px;
    border: none;
    background: url(imgs/ico_chk.png) 0 0 no-repeat;
    background-size: 20px auto;
    cursor: pointer;
}
.Pstyle strong {
	font-size: 24px;
    font-weight: bold;
}
.cont strong {
    display: block;
    margin-bottom: 21px;
    padding-top: 5px;
    font-size: 16px;
    line-height: 26px;
    font-weight: 100;
    color: #e62243;
    
}
.cont b {
	margin-top: 10px;
    font-weight: bold;
}
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
			var check = /^(?=.*[0-9]+)[a-zA-Z][a-zA-Z0-9]{6,15}/;
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

<!-- 회원탈퇴 팝업창 -->

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.js"></script>
<script>
	$(function() {
		$("#btn_open").click(function() { //레이어 팝업 열기 버튼 클릭 시
			$('#popup').bPopup(); //  
		});
		$("#btn_close").click(function() { //닫기
			$('#popup').bPopup().close();
		});
	});
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
				<form id="pwChangeForm" action="pwChangeResult" autocomplete="off" method="post">
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
							<input type="password" id="newPw" placeholder="비밀번호(최소 6자 이상)"></div>
							<span id="newPwSpan"></span>	
						<br>
	
						<div class="text">새로운 확인</div>
						<div class="pw_input">
							<input type="password" id="confirmNewPw" placeholder="변경할 비밀번호를 재입력해 주세요."></div>
							<span id="confirmNewPwSpan"></span>
						<br>
						<div class="myInfoEdit"><a href="mypage">
								<font color="#000000">내 정보 수정 ></font>
							</a></div>
	
						<button class="confirm" type="button">저장</button>
						
						<div class="line"></div>
	
						<div class="deleteAcc">

							여기어때를 이용하고 싶지 않으신가요? <input type="button" id="btn_open"
								value="회원탈퇴" />

							<!--팝업 영역 시작 -->
							<div id="popup" class="Pstyle">
								<strong><center>회원탈퇴</center></strong><br>
								<input type="button" id="btn_close" value="닫 기">
								<div class="cont">
									<font size="4"><b>주의사항</b></font>
									<strong>회원탈퇴 전 반드시 확인해주세요.</strong>
									<ul class="dot_text">
										<li>회원탈퇴 시 계정 정보는 복구가 불가하며 1일 이후 재가입 가능합니다.</li>
										<li>현재 보유 중인 포인트, 마일리지, 쿠폰은 모두 소멸되며 복구할 수 없습니다.</li>
										<li>탈퇴 후, 기존 가입 휴대기기로 재가입 시 첫 혜택을 받을 수 없습니다. (신규 회원 쿠폰, 첫
											리뷰 작성 1000포인트 등)</li>
									</ul>
										<div class="checkbox1">
										<p>
											<input type="checkbox" class="checkbox2">
											주의사항 모두 동의합니다.
										<p>
										</div>
									<button class="btn_red_fill" onclick="location.href='deletepage'">회원탈퇴</button>
								</div>
							</div>
							<!--팝업 영역 끝 -->
						</div>
						
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 헤더 / 풋터 수정해야 됨 -->
</body>
</html>