<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css">
</head>
<body>
<div>
    <div class="layer_fix pop_login pop_mem_reserve fix_disable">
    <section>
    <form id="joinForm" action="https://www.goodchoice.kr/user/joinProcess" autocomplete="off" method="post">
        <input type="hidden" name="yeogi_token" value="be7cb626e1b461ff42b0d30e5c8a211f">
        <div class="fix_title">
            <h1 class="page_head"><a href="https://www.goodchoice.kr/" title="여기어때">여기어때</a></h1>
        </div>

        <div class="join">
            <strong class="sub_title">회원가입</strong>
            <b>이메일 아이디</b>
            <div class="inp_type_2 form-errors"><!-- focus / err -->
                <input type="email" name="uid" placeholder="이메일 주소를 입력해주세요." required class="required"
                       value=""
                       data-rule-validemail="true"
                       data-msg-required="이메일 주소를 확인해 주세요."/>
            </div>

            <b>비밀번호</b>
            <div class="inp_type_2 form-errors form-password-rule">
                <input type="password" name="upw" placeholder="비밀번호를 입력해주세요." required class="required"
                       data-rule-passwdsecuritylevel="6"
                       data-rule-passwdspace="true"
                       data-msg-required="6~15자 영문, 숫자, 특수문자를 입력해 주세요."/>
            </div>

            <b>비밀번호 확인</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="upw_retry" placeholder="비밀번호를 입력해주세요." required class="required"
                       data-rule-equalTo="input[name=upw]"
                       data-msg-required="비밀번호를 한번 더 입력해 주세요."
                       data-msg-equalTo="비밀번호가 일치하지 않습니다."/>
            </div>

            <b>닉네임</b>
            <div class="inp_type_2 form-errors btn-add">
                <input type="text" id="unick" name="unick" required class="required"
                       data-msg-required="닉네임을 입력하세요."
                       data-rule-minlength="2"
                       data-rule-spaceChar="true"
                       data-rule-specialChar="true"/>
                <button type="button" class="btn_etc" onclick="changeNickname();">딴거할래요</button>
            </div>

            <p class="txt_agree">
                로그인/회원가입 시<br/>
                <a href="https://www.goodchoice.kr/more/terms/1" target="_blank" data-default="1">이용약관</a>,
                <a href="https://www.goodchoice.kr/more/terms/3" target="_blank" data-default="3">개인정보처리방침</a>에 동의하게 됩니다.
            </p>

            <button type="submit" class="btn_link gra_left_right_red"><span>동의하고 가입하기</span></button>
        </div>
    </form>
        </section>
    </div>
</div>
</body>
</html>