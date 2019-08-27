<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/notice.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
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
               		<li><a id="notive_tab" class="list_que" >
                        <p>${dto.sub } </p>
	                        <span>
	                        <fmt:formatDate value="${dto.nalja}" pattern="yyyy-MM-dd"/>
	                      	<c:if test="${dto.newIco eq '1'}">
	                        <i class="ico_new">NEW</i>
							</c:if>
	                        </span>
                        </a>
                    <div class="hiddenContent">${dto.content }
                    <br>
                    <a style="height: 25px; width: 35px; background-color: lightgray; border: 0px;border-radius: 5px; color: white;" href="noticeDelete?idx=${dto.idx}">삭제</a>
                    </div>
               		</li>
               </c:forEach>
               </ul>

                    <div id="notice_pagination">
                        <!-- <my-pagination></my-pagination>-->
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

function new_flag(){
	if('dto.newIco' == 1 ) {
		$('.ico_new').show();
		} else { 
		$('.ico_new').hide();
	}
}


$(function(){
	$('.open_list li .list_que').each(function(){	
		$(this).click(function(){
			if ($(this).hasClass('open')){
				$(this).next().hide();
				$(this).removeClass('open'); 
			}
	 		else{
	 			$(this).removeClass('open');
	 			$(this).next().show();
	 			$(this).addClass('open');
			}
		});
		});
});
    </script>

      </div>  
    </div>
		
	<%@include file="/common/footer.jspf"%>
</body>
</html>