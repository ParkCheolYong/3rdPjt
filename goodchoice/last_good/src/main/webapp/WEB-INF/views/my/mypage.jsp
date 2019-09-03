<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/mypage.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>


<script type="text/javascript">

	/*닉네임 수정 토글*/
	$(function() {
		$(".nickEditButton").on("click", function() {
			$(".nickShow").toggle();
			$(".nickEditButton").hide();
		});
	});
	$(document).ready(function() {
		$(".nickCancelBtn").click(function() {
			$(".nickShow").hide();
		});
		$(".nickCancelBtn").click(function() {
			$(".nickEditButton").show();
		});
	});
	/*예약자 이름 수정 토글*/
	$(function() {
		$(".nameEditButton").on("click", function() {
			$(".nameShow").toggle();
			$(".nameEditButton").hide();
		});
	});
	$(document).ready(function() {
		$(".nameCancelBtn").click(function() {
			$(".nameShow").hide();
		});
		$(".nameCancelBtn").click(function() {
			$(".nameEditButton").show();
		});
	});
	/*휴대폰 번호 수정 토글*/
	$(function() {
		$(".phoneEditButton").on("click", function() {
			$(".phoneShow").toggle();
			$(".phoneEditButton").hide();
		});
	});
	$(document).ready(function() {
		$(".phoneCancelBtn").click(function() {
			$(".phoneShow").hide();
		});
		$(".phoneCancelBtn").click(function() {
			$(".phoneEditButton").show();
		});
	});
	/* ------ 닉네임 유효성 검사 ------ */
	$(document).ready(
			function() {
				// 검증에 사용할 함수명들을 배열에 담아준다.
				var idFuncArray = [ "isAlphabetForSpan", "spaceCheck" ];
				// 1. span태그 obj, 2. input태그 obj, 3. 위에서 정의한 함수명 배열, 4. 검증에 걸렸을 때 나타날 텍스트, 5. 검증을 통과했을 때 나타날 텍스트, 6. span태그의 좌측 폭 위치.
				spanValidation($("#nickSpan"), $("#nickname"), idFuncArray,
						"닉네임을 입력하세요.", "사용 가능한 형식의 닉네임입니다.");
			});
	function spanValidation(spanObj, inputObj, validFuncArray, redMsg,
			greenMsg, marginLeftPx) {
		spanObj.css("margin-left", marginLeftPx); // span태그의 좌측 폭을 설정해준다.
		var confirmCheck = false; // 검증에 통과 여부에 사용할 flag
		spanObj.hide(); // span태그를 숨긴다.
		inputObj.bind('focusin keyup', function() { // input태그에 포커스가 들어오거나 키가 눌렸을 때 실행됨
			var inputValue = inputObj.val();
			var funcResult = true; // 함수 실행 결과를 담을 flag
			for (i = 0; i < validFuncArray.length; i++) { // 검증에 사용할 함수명 배열을 반복문으로 돌린다.
				var funcName = validFuncArray[i]; // 배열에서 함수명을 하나씩 뽑아낸다. 
				var funcObj = window[funcName]; // 함수명(string)을 객체(object)로 받는다.
				funcResult = funcObj(inputValue); // 해당 함수를 실행하여 결과값(true/false)을 변수에 담는다. 만약 함수 하나라도 통과를 하지 못하면 false가 된다.
				if (!funcResult) { // 검증에 통과하지 못한 함수가 있을 경우 반복문 탈출
					break;
				}
			}
			if (!funcResult) { // 검증에 통과하지 못했을 때,
				spanObj.show(); // span태그 보여준다.
				spanObj.removeClass('greenText'); // span태그에 greenText 클래스를 삭제한다.
				spanObj.addClass('redText'); // span태그에 redText 클래스를 추가한다.
				spanObj.text(""); //  span태그의 텍스트를 지운다.
				spanObj.append(redMsg); // span태그에  검증에 통과하지 못했을 때 나타나는 텍스트를 넣는다.
				confirmCheck = false; // 검증 통과 여부 flag에 false를 대입한다.
			} else { // 검증에 통과했을 때,
				spanObj.show();
				spanObj.removeClass('redText');
				spanObj.addClass('greenText');
				spanObj.text("");
				spanObj.append(greenMsg);
				confirmCheck = true;
			}
		});
		inputObj.focusout(function() { // 포커스가 input태그에서 벗어났을 때 실행,
			var inputValue = inputObj.val();
			if (confirmCheck || inputValue == "") { // 검증에 통과를 했거나 input태그에 입력 값이 없을 경우,
				spanObj.hide(); // span태그를 숨긴다.
			}
		});
	}
	// 영문, 한글, 숫자만 입력받도록 검증
	function isAlphabetForSpan(str) {
		var check = /[^A-Za-z가-힣0-9\s]/;
		if (check.test(str)) {
			return false;
		}
		return true;
	}
	/* ------ 이름 유효성 검사 ------ */
	$(document).ready(
			function() {
				var idFuncArray = [ "isKoreanForSpan", "spaceCheck" ];
				spanValidation($("#nameSpan"), $("#name"), idFuncArray,
						"이름을 입력하세요.", "사용 가능한 형식의 이름입니다.");
			});
	function spanValidation(spanObj, inputObj, validFuncArray, redMsg,
			greenMsg, marginLeftPx) {
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
	// 한글만 입력받도록 검증
	function isKoreanForSpan(str) {
		var check = /[^가-힣\s]/;
		if (check.test(str)) {
			return false;
		}
		return true;
	}
	/* ------ 휴대폰 번호 검사 ------ */
	$(document).ready(
			function() {
				var idFuncArray = [ "isNumberForSpan", "spaceCheck" ];
				spanValidation($("#phoneSpan"), $("#phone"), idFuncArray,
						"휴대폰 번호를 인증 받으세요.");
			});
	function spanValidation(spanObj, inputObj, validFuncArray, redMsg,
			greenMsg, marginLeftPx) {
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
	// 숫자만 입력받도록 검증
	function isNumberForSpan(str) {
		var check = /[^0-9\s]/;
		if (check.test(str)) {
			return false;
		}
		return true;
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
<script>
	var keylist = new Array("사우디", "파이널", "강남", "구로", "일본", "중국", "한국", "남대문",
			"안양", "남양주", "오돌토돌한", "찝찝한", "황톳길", "다정한", "시큰둥한", "이탈리아", "싯멀건",
			"기괴망측한", "신선한", "소극적인", "적극적인", "남루한", "상대적인", "시애틀", "뉴욕", "안일한",
			"게으른", "미적지근한", "앙증스러운", "빨간색", "노란색", "파란색", "주황색", "초록색", "보라색",
			"싱거운");
	var keylist2 = new Array("순대국", "부대찌개", "개구리", "멍멍이", "꿔바로우", "짜장면", "족발",
			"막걸리", "소주", "와인", "총잡이", "썬누나", "건축가", "왕도마뱀", "만화감독", "참다랑어",
			"보리차", "나물", "왕자", "곡물", "슈퍼스타", "식혜", "공주", "쌀벌레", "MVP", "단풍나무");
	var temp = ''
	$(document).ready(function() {
		temp = ''
		var key1 = (Math.floor(Math.random() * keylist.length));
		var key2 = (Math.floor(Math.random() * keylist2.length));
		temp += keylist[key1];
		temp += keylist2[key2];
		document.getElementById("nickname").value = temp;
	});
	function changeNickname() {
		temp = ''
		var key1 = (Math.floor(Math.random() * keylist.length));
		var key2 = (Math.floor(Math.random() * keylist2.length));
		temp += keylist[key1];
		temp += keylist2[key2];
		document.getElementById("nickname").value = temp;
	}


</script>

</head>
<%@include file="/common/header.jspf"%>
<body>
	<div class="frame">
		<div class="header">
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
					<li class="nav-item"><a href="mypage" class="nav-link"> <font
							color="#e61c51"><b>내 정보 관리</b></font>
					</a></li>
				</ul>
				<form id="myPageForm" action="myPageResult" autocomplete="off"
					method="post">
					<div class="login_info">
						<font size="4;" color=";"><strong>내 정보 수정</strong></font>
						<div>
							<br>
							<img src="imgs/login_icon.png" width="128px;" height="128px;"
								alt="">
						</div>
						<p>${sessionScope.email}</p>
						<br>
						<div class="btns">
							<div class="text">닉네임 ${sessionScope.nick}</div>
							<button class="nickEditButton" type="button">수정</button>
							<br>
							<br>
							<br>
							<!-- 수정 -->
							<div class="nickShow">
								<input type="text" id="nickname" placeholder="체크인시 필요한 정보입니다.">
								<button class="changeBtn" type="button"
									onclick="changeNickname();">딴거할래요</button>
								<span id="nickSpan" class="redText"></span><br>
								<br>
								<button class="nickConfirmBtn" type="button">수정완료</button>
								<button class="nickCancelBtn" type="button">수정취소</button>
							</div>


							<div class="text">예약자 이름</div>
							<button class="nameEditButton" type="button">수정</button>
							<br>
							<br>
							<br>

							<div class="nameShow">
								<input type="text" id="name" placeholder="체크인시 필요한 정보입니다."><span
									id="nameSpan" class="redText"></span> <br>
								<br>
								<button class="nameConfirmBtn" type="button">수정완료</button>
								<button class="nameCancelBtn" type="button">수정취소</button>
							</div>

							휴대폰 번호 010****1208
							<div class="text">
								<font size="2">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</font>
							</div>
							<button class="phoneEditButton" type="button">수정</button>
							<br>
							<br>
							<br>
						</div>

						<div class="phoneShow">
							<input type="text" id="phone" placeholder="체크인시 필요한 정보입니다.">
							<button class="varifBtn" type="button">인증번호 전송</button>
							<span id="phoneSpan" class="redText"></span><br>
							<br>
							<button class="phoneConfirmBtn" type="button">수정완료</button>
							<button class="phoneCancelBtn" type="button">수정취소</button>
						</div>

						<div class="line">
							<a href="pwchange"
								style="color: black; font-size: 14pt; text-decoration: underline;">비밀번호
								변경 ></a>
						</div>
						<div class="deleteAcc">

							여기어때를 이용하고 싶지 않으신가요? <input type="button" id="btn_open"
								value="회원탈퇴" />
								
								
								<script src="https://cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.js"></script>
<script type="text/javascript">
<!-- 회원탈퇴 팝업창 -->
$(function() {
	$('#btn_open').click(function() { //레이어 팝업 열기 버튼 클릭 시
		$('#popup').bPopup(); //  
	});
	$('#btn_close1').click(function() { //닫기
		$('#popup').bPopup().close();
	});
});
</script>


							<!--팝업 영역 시작 -->
							<div id="popup" class="Pstyle">
								<strong><center>회원탈퇴</center></strong><br> <input
									type="button" id="btn_close1" value="닫 기">
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
											<input type="checkbox" class="checkbox">
											주의사항 모두 동의합니다.
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

	<!-- 풋터 부분 수정하기 -->

</body>

</html>