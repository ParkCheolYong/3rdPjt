<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/event.css">
   <style type="text/css">
   
	#pagination {
		margin-top: 20px;	
		text-align: center;
	}
	
	a:link {
		text-decoration:none; color:#646464;
	}
		
	a:visited {
		text-decoration:none; color:#646464;
	}
	
	#pagination button {
	    width: 32px;
	    height: 32px;
	    box-sizing: inherit;
	    align-items: center;
	    border-radius: 3px;
	    border: none;
	    box-shadow: none;
	    background: none;
	    font-size: 13px;
	    line-height: 1.5;
	    text-align: center;
	}
	
	


   </style>
<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	var page = "${page}"; // 페이지
	var total_count = "${total.total}"; // 전체 게시글 갯수
	var totalPaging = parseInt((parseInt(total_count)+9)/10); // 전체 페이지 갯수
	var pagingStart = (parseInt((page-1) / 5) * 5) + 1;
	var lastPaging = (parseInt(parseInt(totalPaging+4) / 5)); // 전체 페이지 블록 갯수
	var pagingPrev = pagingStart - 5; // 이전 블록
	var pagingNext = pagingStart + 5; // 다음 블록
	var pagingEnd = parseInt(totalPaging % 5); // 나머지 페이지 숫자
	var paingBlock = parseInt((parseInt(page-1)/5)+1); // 현재 페이지 블록
	 
	window.onload = function(){
	//	alert(paingBlock);
		
		function pagingAppend() {
			
			$("#pagination").append("<button><a href=/good/event?page="+pagingStart+">"+pagingStart+"</a></button>");
			$("#pagination").append("<button><a href=/good/event?page="+(pagingStart+1)+">"+(pagingStart+1)+"</a></button>");
			$("#pagination").append("<button><a href=/good/event?page="+(pagingStart+2)+">"+(pagingStart+2)+"</a></button>");
			$("#pagination").append("<button><a href=/good/event?page="+(pagingStart+3)+">"+(pagingStart+3)+"</a></button>");
			$("#pagination").append("<button><a href=/good/event?page="+(pagingStart+4)+">"+(pagingStart+4)+"</a></button>");
			
			}
		
		if(pagingStart == 1) {
				if(totalPaging < 5) {
					for(var i=0; i<pagingEnd; i++){
					  $("#pagination").append("<button><a href=/good/event?page="+(pagingStart+i)+">"+(pagingStart+i)+"</a></button>");
						}
					} else if(totalPaging >= 5 ){
						pagingAppend();
						$("#pagination").append("<button><a href=/good/event?page="+pagingNext+">"+'다음'+"</a></button>");
					}
			}else if(lastPaging == paingBlock){
					$("#pagination").append("<button><a href=/good/event?page="+pagingPrev+">"+'이전'+"</a></button>");
				for(var i=0; i<pagingEnd; i++){
					$("#pagination").append("<button><a href=/good/event?page="+(pagingStart+i)+">"+(pagingStart+i)+"</a></button>");
					}
			}else {
					$("#pagination").append("<button><a href=/good/event?page="+pagingPrev+">"+'이전'+"</a></button>");
					pagingAppend();
					$("#pagination").append("<button><a href=/good/event?page="+pagingNext+">"+'다음'+"</a></button>");
				}
	}
</script>
</head>
<body>
	<%@include file="/common/header.jspf"%>
		
		<div class="top-background">
            <br><p>더보기</p>
         </div>
	
	
	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<nav>
			<ul>
				<li><a href="#">공지사항</a></li>
				<li><a href="event" class="active"><font color="#e61c51"><b>이벤트</b></font></a></li>
				<li><a href="innoproj">혁신 프로젝트</a></li>
				<li><a href="faq">자주 묻는 질문</a></li>
				<li><a href="inquiry">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- Event -->
			<div class="event">
				<ul id="event" class="event_list">
				
				<c:forEach items="${list}" var="dto">
					<li>
							<b>${dto.SUB }</b><br>
							<span>기간: ${dto.STARTDATE } ~	${dto.ENDDATE }</span>
							<a href="detail?no=${dto.NO }">
							<img src="${dto.THUMBNAIL }">
							</a>
							<a href="delete?no=${dto.NO}">X</a>
					</li>
					
				</c:forEach>
				
				</ul>
				<div id="pagination">
					
				</div>
				<div style="margin-top: 20px; margin-left: 630px;">
					<button style="background-color: #e51048; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold;"><a style="color: white;" href="eventAdd">글쓰기</a></button>
				</div>
			</div>
			<!-- //Event -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>