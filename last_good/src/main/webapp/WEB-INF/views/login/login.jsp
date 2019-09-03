<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
<style type="text/css">
.inp_error {
    margin-bottom: 30px;
    border: 1px solid rgb(230,28,81);
}
label.error {
    top: 54px;
    left: 0;
    font-size: 15px;
    display: block;
    position: absolute;
    line-height: 1;
    color: rgb(230,28,81);
}
.ico_email.inp_error::after {
    display: inline-block;
    content: '';
    position: absolute;
    width: 18px;
    height: 14px;
    background: url('//image.goodchoice.kr/images/web_v3/ico_inp_mail.png') 0 -28px no-repeat;
    background-size: 18px auto;
}
.ico_pw.inp_error:after {
    display: inline-block;
    content: '';
    position: absolute;
    width: 18px;
    height: 15px;
    background: url(//image.goodchoice.kr/images/web_v3/ico_inp_pw.png) 50% -30px no-repeat;
    background-size: 14px auto;
}
    


</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
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
                }  
            },
             submitHandler: function (frm){
                frm.submit();   //유효성 검사를 통과시 전송
            },
            success: function(e){
                //
            },
            highlight: function (element, errorClass) {
                $(element).parent().addClass('inp_error');
            },
            unhighlight: function (element, errorClass) {
                $(element).parent().removeClass('inp_error');
            }
        });
})

/*  window.onkeyup=(function() {
	if($('#email-error').hasClass('error')){
		$('input').parent().addClass('inp_error');
	}else{
		$('input').parent().removeClass('inp_error');
		}
	 }); 
 */
</script>
</head>
<body>
	<div class="layer_fix layer_unfix pop_login pop_mem_reserve">
    <section>
        <form id="loginForm" action="loginUser" autocomplete="off" method="post">
            <div class="fix_title">
                <strong class="logo"><a href="http://localhost:8080/good/">요기어때</a></strong>
            </div>
<div id="naverIdLogin"></div>
            <!--<button type="button" id="kakao-login-btn" class="btn_start btn_kakao" data-device-type="W"><span><i class="icon-ic_login_kakaotalk"></i>카카오톡으로 로그인</span></button>-->
            <a id="custom-login-btn" href="javascript:loginWithKakao()">
<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="335px"/>
</a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('8bfb28af7f251ad34b3304f56ee903b4');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
          alert(JSON.stringify(authObj));
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };
  //]]>
</script>
            <!-- <button type="button" id="facebook-login-btn" class="btn_start btn_fb"><span><i class="icon-ic_facebook"></i>Facebook으로 로그인</span></button> -->
            <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '2493164354237849',
      xfbml      : true,
      version    : 'v4.0'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/ko_KR/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v4.0&appId=2493164354237849&autoLogAppEvents=1"></script>

<div class="fb-login-button" data-width="335" data-size="large" data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="false"></div>
           <!-- <a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=g6wHiWdHmKjaqhAEjEQt&redirect_uri=https%3A%2F%2Fwww.goodchoice.kr%2Fuser%2FnaverLoginProcess&state=04877e17fbdd2f6e4ed154d39cfab54a" id="naver_id_login" class='btn_start btn_naver' ><span><i class="icon-ic_login_naver"></i>네이버로 로그인</span></a> -->


<script type="text/javascript">
var naverLogin = new naver.LoginWithNaverId(
      {
         clientId: "6aij7vIWHZd8WUFDq7Mh",
         callbackUrl: "http://127.0.0.1:8080/good/",
         isPopup: false, /* 팝업을 통한 연동처리 여부 */
         loginButton: {color: "green", type: 3, height: 72} /* 로그인 버튼의 타입을 지정 */
         
      }
   );
   
   /* 설정정보를 초기화하고 연동을 준비 */
   naverLogin.init();
   


</script>

            <p class="space_or"><span>또는</span></p>
            <div class="inp_type_1 ico_email form-errors"><!-- focus / err -->
                <input type="email" name="email" id="email" placeholder="이메일 주소"/>
            </div>
            <div class="inp_type_1 ico_pw form-errors">
                <input type="password" name="pw" id="pw" placeholder="비밀번호"/>
            </div>
            <button class="btn_link gra_left_right_red" type="submit"><span>로그인</span></button>
                            <div class="link_half">
                    <div><a href="#"><span>비밀번호 재설정</span></a></div>
                    <div><a href="terms"><span>회원가입</span></a></div>
                </div>

        </form>
    </section>
</div> 

</body>
</html>