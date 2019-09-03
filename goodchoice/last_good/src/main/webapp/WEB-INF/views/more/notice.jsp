<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/notice.css">
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
	 <!-- Notice -->
         <div class="notice">


            <!-- Tab -->
            <div class="tab">
               <span class="tab_btn active">서비스 공지사항</span>
               <!-- <span class="tab_btn">여기어때 언론보도 <i class="ico_new">NEW</i></span> -->
            </div>

            <!-- 공지사항  -->
            <div class="tab_each">
               <ul id="notices" class="show_list open_list">
               <c:forEach items="${list }" var="dto">
               		<li class="noticeLi"><a id="notive_tab" class="list_que" >
                        <p>${dto.sub } </p>
	                        <span>
	                        <fmt:formatDate value="${dto.nalja}" pattern="yyyy-MM-dd"/>
	                      	<c:if test="${dto.newIco eq '1'}">   <!-- //3일 이내에 작성된 글이면 newIcon 출력, 아니면 미출력 -->
	                        <i class="ico_new">NEW</i>
							</c:if>
	                        </span>
                        </a>
                    <div class="hiddenContent">${dto.content }
                    <p style="text-align:right;">
                    <a style="background-color: lightgray; border: 0px;border-radius: 5px; color: white;" href="noticeDelete?idx=${dto.idx}">삭제</a>
                    </p>
                    </div>
               		</li>
               </c:forEach>
               </ul>
              <c:if test="${paging.totalCount >= '1' }">
					<div id="page">totalCount= ${paging.totalCount }</div>
					<p>pageSize= ${paging.pageSize }</p>
					<p>firstPageNo= ${paging.firstPageNo }</p>
					<p>prevPageNo= ${paging.prevPageNo }</p>
					<p>startPageNo= ${paging.startPageNo }</p>
					<p>pageNo= ${paging.pageNo }</p>
					<p>endPageNo= ${paging.endPageNo }</p>
					<p>nextPageNo= ${paging.nextPageNo }</p>
					<p>finalPageNo= ${paging.finalPageNo }</p>
					<div class="paging">
					<c:if test="${paging.pageNo >= '6' }">
					<button class="prev" onclick="changePage(start_page - 1)">이전</button>
					</c:if>
					</div>
				</c:if>
					
                    <div id="notice_pagination">
                        <!-- <my-pagination></my-pagination>-->
                        <!-- //https://hsol.tistory.com/894 참고할것 -->
                    </div>
               <br>
				<div style="text-align: right">
					<button style="background-color: #F7323F; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold;"><a style="color: white;" href="noticeAdd">글쓰기</a></button>
				</div>
            </div>
        </div>
         <!-- //Notice -->
<!-- 스크립트 -->  
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
var page = "${page}";
var total_count = "${total.total}"; // 전체 게시글 갯수
var totalPaging = parseInt((parseInt(total_count)+9)/10); // 전체 페이지 갯수
var pagingStart = (parseInt((page-1) / 5) * 5) + 1;	// 
var lastPaging = (parseInt(parseInt(totalPaging+4) / 5)); // 현재 페이지 블록
var pagingPrev = pagingStart - 5
var pagingNext = pagingStart + 5
var pagingEnd = parseInt(totalPaging % 5); // 나머지


window.onload = function(){
	function pagingAppend() {
		$("#notice_pagination").append("<a href=/good/notice?page="+pagingStart+">"+pagingStart+"</a>");
		$("#notice_pagination").append("<a href=/good/notice?page="+(pagingStart+1)+">"+(pagingStart+1)+"</a>");
		$("#notice_pagination").append("<a href=/good/notice?page="+(pagingStart+2)+">"+(pagingStart+2)+"</a>");
		$("#notice_pagination").append("<a href=/good/notice?page="+(pagingStart+3)+">"+(pagingStart+3)+"</a>");
		$("#notice_pagination").append("<a href=/good/notice?page="+(pagingStart+4)+">"+(pagingStart+4)+"</a>");
		
		}
	
	if(pagingStart == 1) {
			pagingAppend();
			$("#notice_pagination").append("<a href=/good/notice?page="+pagingNext+">"+'다음'+"</a>");
		}else if(lastPaging == pagingEnd){
				$("#notice_pagination").append("<a href=/good/notice?page="+pagingPrev+">"+'이전'+"</a>");
			for(var i=0; i<pagingEnd; i++){
				$("#notice_pagination").append("<a href=/good/notice?page="+(pagingStart+i)+">"+(pagingStart+i)+"</a>");
				}
		}else {
			$("#notice_pagination").append("<a href=/good/notice?page="+pagingPrev+">"+'이전'+"</a>");
			pagingAppend();
			$("#notice_pagination").append("<a href=/good/notice?page="+pagingNext+">"+'다음'+"</a>");
			}

}
    </script>

      </div>  
    </div>

	<%@include file="/common/footer.jspf"%>
</body>
</html>