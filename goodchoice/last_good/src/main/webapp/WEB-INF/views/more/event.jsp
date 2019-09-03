<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/event.css">
<style type="text/css">

</style>
<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	var page = "${page}"; // 페이지
	var total_count = "${total.total}"; // 전체 게시글 갯수
	var totalPaging = parseInt((parseInt(total_count)+9)/10); // 전체 페이지 갯수
	var pagingStart = (parseInt((page-1) / 5) * 5) + 1;	// 
	var lastPaging = (parseInt(parseInt(totalPaging+4) / 5)); // 현재 페이지 블록
	var pagingPrev = pagingStart - 5
	var pagingNext = pagingStart + 5
	var pagingEnd = parseInt(totalPaging % 5); // 나머지
	
	 
	window.onload = function(){
		//alert(pagingEnd);
		
		function pagingAppend() {
			
			$("#pagination").append("<a href=/good/event?page="+pagingStart+">"+pagingStart+"</a>");
			$("#pagination").append("<a href=/good/event?page="+(pagingStart+1)+">"+(pagingStart+1)+"</a>");
			$("#pagination").append("<a href=/good/event?page="+(pagingStart+2)+">"+(pagingStart+2)+"</a>");
			$("#pagination").append("<a href=/good/event?page="+(pagingStart+3)+">"+(pagingStart+3)+"</a>");
			$("#pagination").append("<a href=/good/event?page="+(pagingStart+4)+">"+(pagingStart+4)+"</a>");
			
			}
		
		if(pagingStart == 1) {
				if(totalPaging < 5) {
					for(var i=0; i<pagingEnd; i++){
					  $("#pagination").append("<a href=/good/event?page="+(pagingStart+i)+">"+(pagingStart+i)+"</a>");
						}
					} else if(totalPaging >= 5 ){
				pagingAppend();
				$("#pagination").append("<a href=/good/event?page="+pagingNext+">"+'다음'+"</a>");
				}
			}else if(lastPaging == pagingEnd){
					$("#pagination").append("<a href=/good/event?page="+pagingPrev+">"+'이전'+"</a>");
				for(var i=0; i<pagingEnd; i++){
					$("#pagination").append("<a href=/good/event?page="+(pagingStart+i)+">"+(pagingStart+i)+"</a>");
					}
			}else {
				$("#pagination").append("<a href=/good/event?page="+pagingPrev+">"+'이전'+"</a>");
				pagingAppend();
				$("#pagination").append("<a href=/good/event?page="+pagingNext+">"+'다음'+"</a>");
				} 
	}
</script>
</head>
<body>
	<%@include file="/common/header.jspf"%>
	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<nav>
			<ul>
				<li><a href="notice">공지사항</a></li>
				<li><a href="event" class="active">이벤트</a></li>
				<li><a href="project">혁신 프로젝트</a></li>
				<li><a href="faq">자주 묻는 질문</a></li>
				<li><a href="inquiry">1:1 문의</a></li>
				<li><a href="terms">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- Event -->
			<div class="event">

				<div class="mobile_top">이벤트</div>

				<ul id="event" class="event_list">
				
				<c:forEach items="${list}" var="dto">
					<li>
							<b>${dto.SUB }</b>
							<span>기간: ${dto.STARTDATE } ~	${dto.ENDDATE }</span>
							<a href="detail?no=${dto.NO }">
							<img src="${dto.THUMBNAIL }">
							</a>
							<a href="delete?no=${dto.NO}">X</a>
					</li>
					
				</c:forEach>
				
				</ul>
				<div id="pagination">
<!-- 					<a href="/good/event?page=1">1</a> -->
<!-- 					<a href="/good/event?page=2">2</a> -->
<!-- 					<a href="/good/event?page=3">3</a> -->
<!-- 					<a href="/good/event?page=4">4</a> -->
<!-- 					<a href="/good/event?page=5">5</a> -->
<!-- 					<a href="#">다음</a> -->
				</div>
					<br>
					<a href="eventAdd">등록</a>
			</div>
			<!-- //Event -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>
<script>

</script>