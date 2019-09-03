<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/terms3.css">
<style type="text/css">


</style>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" >


</script>

</head>
<body>
	<form action="join">
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
					<strong>인증번호 </strong>
					<section>
						<div class="inp_wrap remove">
							<input type="text"  name="inemail" minlength="1" maxlength="4">
							<button type="button" class="btn_checked">확인</button>
						</div>
						<button type="submit" class="btn_send btn_confirm active"
						id="confirm">인증번호 확인</button>
					</section>
				</div>
				
			</div>
		</section>
	</div>
	</form>
</body>
</html>