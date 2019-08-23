<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/notice.css">
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@include file="/common/header.jsp"%>
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
            <li><a href="/more/notice" class="active">공지사항</a></li>
            <li><a href="/more/event">이벤트</a></li>
            <li><a href="/more/project">혁신 프로젝트</a></li>
            <li><a href="/more/faq">자주 묻는 질문</a></li>
            <li><a href="/more/inquiry">1:1 문의</a></li>
            <li><a href="/more/terms">약관 및 정책</a></li>
         </ul>
      </nav>
      
      <!-- List -->
				<form action="noticeWrite" method="post">
				<div class="notice_list">
					<div class="list" style="display: block">
						<ul>
							<li>
								<p class="link on">
									<span>제목 : <input type="text" name="sub" id="sub" style="width: 550px;"/></span>
									
								</p>
								<div class="ans on">
									<div>
										<font face="arial" color="#252525"><span style="font-size: 13.3333px;">
										<textarea name="contentEditor" id="notice-content"></textarea></span></font>
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

	<%@include file="/common/footer.jsp"%>
</body>
</html>