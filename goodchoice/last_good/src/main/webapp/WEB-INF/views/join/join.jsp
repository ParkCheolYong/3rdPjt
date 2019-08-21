<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/join.css">
<style type="text/css">
	input.error {
	border: 1px solid rgb(230, 28, 81);
	height: 46px;
	position: relative;
	border-radius: 6px;
	top: -1px;
	width: 318px;
	left: -17px;
	padding-left: 16px;
	}
	label.error {
	color: rgb(230, 28, 81);
	}
	</style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
    <script>
var keylist=new Array("사우디","파이널","강남","구로","일본","중국","한국","남대문","안양","남양주","오돌토돌한","찝찝한","황톳길","다정한","시큰둥한","이탈리아","싯멀건","기괴망측한","신선한","소극적인","적극적인","남루한","상대적인","시애틀","뉴욕","안일한","게으른","미적지근한","앙증스러운","빨간색","노란색","파란색","주황색","초록색","보라색","싱거운");
var keylist2=new Array("순대국","부대찌개","개구리","멍멍이","꿔바로우","짜장면","족발","막걸리","소주","와인","총잡이","썬누나","건축가","왕도마뱀","만화감독","참다랑어","보리차","나물","왕자","곡물","슈퍼스타","식혜","공주","쌀벌레","MVP","단풍나무");

var temp=''

$(document).ready(function (){
    temp=''
    var key1=(Math.floor(Math.random()*keylist.length));
    var key2=(Math.floor(Math.random()*keylist2.length));
    
    temp+=keylist[key1];
    temp+=keylist2[key2];
    
    document.getElementById("nick").value=temp;
   
});

function changeNickname(){
    temp=''
    var key1=(Math.floor(Math.random()*keylist.length));
    var key2=(Math.floor(Math.random()*keylist2.length));
    
    temp+=keylist[key1];
    temp+=keylist2[key2];
    
    
    document.getElementById("nick").value=temp;
}
        
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/additional-methods.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_ko.min.js"></script>
<script type="text/javascript">
 $(function(){
        $("form").validate({

            //규칙
            rules: {
                email: {
                    required : true,
                    email : true
                },
                pw: {
                    required : true,
                    minlength : 6
                },
                upw_retry: {
                    required : true,
                    equalTo : pw
                }
               
            },
            //규칙체크 실패시 출력될 메시지
            messages : {
                email: {
                    required : "이메일 주소를 확인해 주세요",
                    email : "유효하지 않은 E-Mail주소입니다."
                },
                pw: {
                    required : "6~15자 영문,숫자,특수문자를 입력해주세요.",
                    minlength : "최소 {0}자 이상 입력해 주세요"
                },
                upw_retry: {
                    required : "비밀번호를 한번 더 입력해 주세요.",
                    equalTo : "비밀번호가 일치하지 않습니다."
                }
            },
            submitHandler: function (frm){
                frm.submit();   //유효성 검사를 통과시 전송
            },
            success: function(e){
                //
            }
        });
})

</script>
</head>
<body>
<div>
    <div class="layer_fix pop_login pop_mem_reserve fix_disable">
    <section>
    <form id="joinForm" action="joinResult" autocomplete="off" method="post">
        <div class="fix_title">
            <h1 class="page_head"><a href="https://www.goodchoice.kr/" title="여기어때">여기어때</a></h1>
        </div>

        <div class="join">
            <strong class="sub_title">회원가입</strong>
            <b>이메일 아이디</b>
            <div class="inp_type_2 form-errors"><!-- focus / err -->
                <input type="email" name="email" id="email" placeholder="이메일 주소를 입력해주세요."/>
            </div>

            <b>비밀번호</b>
            <div class="inp_type_2 form-errors form-password-rule">
                <input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요."/>
            </div>

            <b>비밀번호 확인</b>
            <div class="inp_type_2 form-errors">
                <input type="password" name="upw_retry" id="upw_retry" placeholder="비밀번호를 입력해주세요."/>
            </div>

            <b>닉네임</b>
            <div class="inp_type_2 form-errors btn-add">
                <input type="text" id="nick" name="nick"/>
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