<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/terms.css">
 <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        $(function () {
    if ($('.terms_agree').length > 0) {
        $('#checkAll').on('click', function () {
            var checked = false;

            if($(this).is(':checked')){
                checked = true;

                $('#terms_agree_btn').addClass('gra_left_right_red').attr('disabled',false);
            }else{
                checked = false;

                $('#terms_agree_btn').removeClass('gra_left_right_red').attr('disabled',true);
            }

            $('.terms_checkbox').each(function (k) {
                $(this).prop("checked", checked);
            });
        });

        $('.terms_checkbox').on('click', function () {
            if ($('.terms_checkbox:checked').length > 3) {
                $('#checkAll').prop("checked", true);
            } else {
                $('#checkAll').prop("checked", false);
            }

            if ($('.terms_checkbox[require]:checked').length > 2) {
                $('#terms_agree_btn').addClass('gra_left_right_red').attr('disabled',false);
            } else {
                $('#terms_agree_btn').removeClass('gra_left_right_red').attr('disabled',true);
            }
        });

        $('#terms_agree_btn[disabled]').on('click', function () {
            
            window.location.replace("/signIn");
        });
    }
});
    </script>
</head>
<body>
 <div class="layer_fix pop_login pop_mem_reserve">
    <section>
        <div class="fix_title">
            <strong>요기어때 약관 동의</strong>
        </div>

        <div class="terms_agree">
            <p class="all_check">
                <label><input type="checkbox" id="checkAll" class="inp_chk_02 chk_default" /><span class="ck"></span>전체 동의</label>
            </p>
            <p>
                <label><input type="checkbox" id="terms" value="Y" class="inp_chk_02 chk_default terms_checkbox" require /><span class="ck"></span>
                    <a href="#" target="_blank">이용약관 동의</a> <span>(필수)</span></label>
            </p>
            <p>
                <label><input type="checkbox" id="privacy" value="Y" class="inp_chk_02 chk_default terms_checkbox" require /><span class="ck"></span>
                <a href="#" target="_blank">개인정보 수집 및 이용 동의</a> <span>(필수)</span></label>
            </p>
            <p>
                <label><input type="checkbox" id="teenager" value="Y" class="inp_chk_02 chk_default terms_checkbox" require /><span class="ck"></span>
                만 14세 이상 확인 <span>(필수)</span></label>
            </p>
            <p>
                <label><input type="checkbox" id="location" value="Y" class="inp_chk_02 chk_default terms_checkbox"/><span class="ck"></span>
                <a href="#" target="_blank">위치기반 서비스 이용약관 동의</a> (선택)</label>
            </p>

            <button type="button" class="btn_link" id="terms_agree_btn" disabled><span>다음</span></button>
        </div>
    </section>
</div>
</body>
</html>