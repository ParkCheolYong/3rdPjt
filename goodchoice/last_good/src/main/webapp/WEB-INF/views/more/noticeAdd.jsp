<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/notice.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@include file="/common/header.jspf"%>
	<!-- Sub Top -->
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_3">
			<h2>더보기</h2>
		</div>
	</div>
	<!-- //Sub Top -->
   <div id="content" class="sub_wrap more_wrap">

      <!-- Nav -->
      <nav>
         <ul>
            <li><a href="/good/notice" class="active">공지사항</a></li>
            <li><a href="/good/event">이벤트</a></li>
            <li><a href="/good/project">혁신 프로젝트</a></li>
            <li><a href="/good/faq">자주 묻는 질문</a></li>
            <li><a href="/good/inquiry">1:1 문의</a></li>
            <li><a href="/good/terms">약관 및 정책</a></li>
         </ul>
      </nav>
      <div class="align_rt">
      <!-- List -->
				<form action="noticeWrite" method="post">
				<div>
					<div class="list" style="display: block">
						<ul>
							<li>
								<p class="link on">
									<span>제목 : <input align=""type="text" name="sub" id="sub" style="width: 90%;align:right"/></span>
									
								</p>
							<!-- id 임시로 admin 지정해둠 로그인 완료되면 아이디 여기에 적히게 할것 -->
									<input style="display: none" type="text" name="id" value="admin" id="id"/>
								<div class="ckeditor">
									<div>
										<font face="arial" color="#252525"><span style="font-size: 13.3333px;">
										<textarea name="content" id="notice-content"></textarea></span></font>
											<script type="text/javascript">
												CKEDITOR.replace('notice-content');
											</script>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- //List -->
				
      		<br>
				<div style="text-align: right">
					<button style="background-color: #F7323F; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold; color: white;">등 록</button>
				</div>
				</form>
	</div>
</div>

	<%@include file="/common/footer.jspf"%>
</body>
</html>