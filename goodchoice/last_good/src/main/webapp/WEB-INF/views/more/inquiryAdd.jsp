<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/faq.css">
<style type="text/css">

.alert_top {
	width: 726px;
	height: 64px;
	font-size: 16px;
    color: rgba(0,0,0,0.56);
    text-align: left;
    margin-top: 40px;
}

.info_wrap b {
    margin-bottom: 20px;
    font-size: 18px;
	color: rgba(0,0,0,0.56);
	font-weight: normal;
}

.select_type_2 {
    width: 100%;
    height: 40px;
    padding: 0 12px;
    border: 1px solid rgba(0,0,0,0.08);
    border-radius: 4px;
    background: rgb(250,250,250) url(imgs/ico_arr_down_4.png) right 10px top 50% no-repeat;
    background-size: 18px auto;
    font-size: 16px;
    color: rgba(0,0,0,0.56);
    cursor: pointer;
    margin-top: 20px;
    margin-bottom: 45px;
}

.inp_wrap {
    border: 1px solid rgba(0,0,0,0.08);
    padding: 8px 14px 8px 16px;
    position: relative;
    height: 44px;
    border-radius: 4px;
}

.inp_wrap input {
    border: none;
    background: none;
    width: 100%;
    margin-top: 0px;
    font-size: 18px;
    margin-left: -4px;
}

input::placeholder {
	color: #bfbfbf;
}

.phone-block .inp_wrap {
    margin-top: 20px;
    margin-bottom: 50px;
}

.reset_val {
    visibility: hidden;
    display: inline-block;
    position: absolute;
    top: 50%;
    right: 14px;
    width: 20px;
    height: 20px;
    margin-top: -10px;
    border: none;
    background: url(//image.goodchoice.kr/images/web_v3/ico_reset.png) 50% 50% no-repeat;
    background-size: 20px auto;
    text-indent: -9999px;
}

.text_wrap {
	padding: 0;
}

.text_wrap b {
    margin-bottom: 20px;
    font-size: 18px;
    font-weight: normal;
    color: rgba(0,0,0,0.56);
}

textarea {
    width: 100%;
    height: 256px;
    padding: 33px 32px;
    border-radius: 4px;
    font-size: 18px;
    line-height: 29px;
    border: 1px solid rgba(0,0,0,0.08);
    color: rgba(0,0,0,0.56);
    resize: none;
    box-sizing: border-box;
    margin-top: 25px;
}

input:focus::-webkit-input-placeholder {
	color:transparent;
}

#questionTextarea {
	line-height:2.3em;
}

</style>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
</head>
<body>
	<%@include file="/common/header.jspf"%>

		<div class="top-background">
            <br><p>더보기</p>
         </div>

	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<c:choose>
			<c:when test="${empty sessionScope.nick}">
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="login"><font color="#e61c51"><b>1:1 문의</b></font></a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:when>
			<c:otherwise>
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="inquiry"><font color="#e61c51"><b>1:1 문의</b></font></a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:otherwise>
		</c:choose>
		<div class="align_rt">

			<!-- Faq -->
			<div class="faq">



				<!-- 상단 탭 버튼 -->
				<div class="top_link">
					<li><a href="inquiry"> 나의 문의 내역</a></li>
					<li><a href="inquiryAdd" class="on"> 새 문의 작성</a></li>
				</div>
				<!-- //상단 탭 버튼 -->

				<!-- List -->
				<form name="inq-form" method="post" action="inquiryWrite">
                    <div class="alert_top">
                        <p>여기어때 이용 중 불편하신 점을 문의주시면 <em>최대한 빠른 시일내에 답변 드리겠습니다.</em></p>
                    </div>

                    <section class="info_wrap">
                        <b>카테고리유형</b>
                        <select name="room_type" id="" class="select_type_2">
                            <option value="">카테고리유형을 선택하세요</option>
                                                            <option value="1">모텔</option>
                                                            <option value="2">호텔</option>
                                                            <option value="4">리조트</option>
                                                            <option value="3">펜션</option>
                                                            <option value="6">게스트하우스</option>
                                                            <option value="5">캠핑/글램핑</option>
                                                            <option value="7">한옥</option>
                                                            <option value="10">액티비티</option>
                                                    </select>
                        <b>문의유형</b>
                        <select name="inq_type" id="" class="select_type_2">
                            <option value="">문의유형을 선택하세요</option>
                                                            <option value="8">이벤트</option>
                                                            <option value="7">예약/결제</option>
                                                            <option value="2">혜택받기</option>
                                                            <option value="1">이용문의</option>
                                                            <option value="4">회원정보</option>
                                                            <option value="3">리뷰</option>
                                                            <option value="99">기타</option>
                                                    </select>
						<div class="phone-block">
							<b>휴대폰 번호</b>
							<p class="inp_wrap"><input data-type="phoneNumber" type="tel" maxlength="11" name="uphone" value="" placeholder="선택사항입니다."><button type="button" class="reset_val">초기화</button></p>
						</div>
                    </section>

                    <section class="text_wrap">
                        <b>문의내용</b><br>
                        <div>
                            <textarea name="content" id="questionTextarea" placeholder="문의하실 내용을 10자 이상 입력해 주세요.&#13;&#10;문의하시는 제휴점 이름과 예약정보를 남겨주시면 보다 빠른 상담이 가능합니다.&#13;&#10;휴대폰 번호는 유선 답변을 위해 수집되며, 답변 완료 후 즉시 삭제됩니다."></textarea>
                        </div>
                    </section>
                    <section class="btn_wrap ">
                        <button class="btn_red_fill" type="button" onclick="$.inqSubmit();">작성 완료</button>
                    </section>
                </form>
				<!-- //List -->
				<br>
				<div style="text-align: right">
					<button style="background-color: #F7323F; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold; color: white;">등 록</button>
				</div>
				</form>
			</div>
			<!-- //Faq -->

		</div>

	</div>

	<%@include file="/common/footer.jspf"%>
</body>
</html>