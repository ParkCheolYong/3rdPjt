<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/event.css">
<style type="text/css">
.button_write {
	margin-top: 10px;
	margin-left: 560px;
}

#sub2, #sub {
	margin-bottom: 10px;
	font-size: 18px;
	font-family: "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
}

#tag {
	margin-bottom: 10px;
	font-size: 14px;
	font-family: "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
}

#contents,
#sub {
	margin-left: 40px;
}

#sub2,
#startdate,
#enddate,
#content,
#thumbnail {
	margin-bottom: 15px;
}

#enddate,
#startdate {
	margin-left: 12px;
}

#thumbnail {
	margin-left: 26px;
}

.bbs {
	margin-top: 154px;
}
</style>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<script src="js/jquery-1.12.4.min.js"></script>
</head>
<body>
	<%@include file="/common/header.jspf"%>

	<div class="top-background">
		<br>
		<p>더보기</p>
	</div>


	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<c:choose>
			<c:when test="${empty sessionScope.nick}">
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event"><font color="#e61c51"><b>이벤트</b></font></a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="login">1:1 문의</a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:when>
			<c:otherwise>
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event"><font color="#e61c51"><b>이벤트</b></font></a></li>
						<li><a href="innoproj">혁신 프로젝트</a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="inquiry">1:1 문의</a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:otherwise>
		</c:choose>
		<div class="align_rt">

			<!-- Event -->
			<table class="bbs">
				<tr>
					<td>
						<form action="write" method="post">
							<div>
								<b>제목:</b><input type="text" name="sub"
									id="sub" style="width: 550px; height: 20px;" />
							</div>
							<div>
								<b>시작기간:</b><input type="text" name="startdate"
									id="startdate" style="width: 550px; height: 20px;" />
							</div>
							<div>
								<b>종료기간:</b><input type="text" name="enddate"
									id="enddate" style="width: 550px; height: 20px;" />
							</div>
							<div>
								<b>썸네일:</b><input type="text" name="thumbnail"
									id="thumbnail" style="width: 550px; height: 20px;" />
							</div>
							<div>
								<b>내용:</b><input type="text" name="contents"
									id="contents" style="width: 550px; height: 20px;" />
							</div>
							<div class="button_write">
								<button style="background-color: #F7323F; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold; color: white;">등 록</button>
							</div>
						</form>
					</td>
				</tr>
			</table>
			<div style="margin-top: 30px; margin-left: 280px;">
			</div>
			<!-- //Event -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>