<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/terms2.css">
<style type="text/css">

</style>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" >
	$(document).ready(function() {
	    var position;
	    var confirm = $('#confirm');
	    var email = $('#email');
	    var verificationCode=$('#verificationCode');
	    verificationCode.css('display','none');

	    confirm.click(function() {
	    	verificationCode.css('display','block');
	    	confirm.css('background',' #ff0055');
	    });
	});
	

</script>

</head>
<body>
	<form action="terms3" method="post">
	<div class="layer_fix pop_login pop_mem_reserve">
		<section>
			<div class="fix_title">
				<strong>이메일 본인 확인</strong>
			</div>

			<p>
				이번 딱 1회 인증으로 더욱 안전한 예약이 진행됩니다.<br> 본인확인은 전자상거래법상 필수조치로 안전하게
				관리됩니다.
			</p>

			<div class="phone_confirm">
				<div id="sendCode">
					<strong>이메일 주소</strong>
					<section>
						<div class="inp_wrap remove">
							<input type="email" id="email" name="email" maxlength="30">
							<button type="button" class="btn_checked">확인</button>
						</div>
						<button type="submit" class="btn_send btn_confirm active"
						id="confirm">인증번호
							전송</button>
					</section>
				</div>
				
			</div>
		</section>
	</div>
	</form>
</body>
</html>