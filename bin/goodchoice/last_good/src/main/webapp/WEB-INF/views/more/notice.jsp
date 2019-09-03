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
               <c:forEach items="${totalCount }" var="cnt">
					<div id="page">totalCount= ${cnt.totalCount }</div>
					<p>pageSize= ${cnt.pageSize }</p>
					<p>firstPageNo= ${cnt.firstPageNo }</p>
					<p>prevPageNo= ${cnt.prevPageNo }</p>
					<p>startPageNo= ${cnt.startPageNo }</p>
					<p>pageNo= ${cnt.pageNo }</p>
					<p>endPageNo= ${cnt.endPageNo }</p>
					<p>nextPageNo= ${cnt.nextPageNo }</p>
					<p>finalPageNo= ${cnt.finalPageNo }</p>
					</c:forEach>
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

$(function(){ //a tag인 list_que 클래스명에 오픈이 붙으면 다음 div 출력 아니면 미출력
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


function get_no_total_pagination(settings, notices, el, scroll) {
    if (settings === undefined || Object.keys(settings).length == 0)
        return false;

    if (scroll === undefined)
        scroll = true;

    var per_page = 5;
    var total_page = xReturnNumber(settings.total_page);
    var cur_page = xReturnNumber(settings.page);

    if (cur_page == 0)
        cur_page = 1;

    var templete =
        '<div class="paging">' +
        '<button v-if="start_page > 1" class="prev" v-on:click="changePage(start_page - 1)">이전</button>' +

        '<template v-for="item in items" v-if="total_page > 1">' +
        '<button v-if="cur_page != item" v-on:click="changePage(item)">{{item}}</button>' +
        '<button v-else class="on" v-on:click="changePage(item)">{{item}}</button>' +
        '</template>' +

        '<button v-if="total_page > end_page" class="next" v-on:click="changePage(end_page + 1)">다음</button>' +
        '</div>';


    // 등록
    Vue.component('my-pagination', {
        template: templete,
        data: function () {
            var start_page = ((Math.floor((cur_page - 1 ) / per_page)) * per_page ) + 1;
            var end_page = start_page + per_page - 1;
            var items = [];

            if (end_page >= total_page) end_page = total_page;
            if (total_page > 1) {
                for (var k = start_page; k <= end_page; k++) {
                    items.push(k);
                }
            }

            return {
                per_page: per_page,
                cur_page: cur_page,
                total_page: total_page,
                start_page: start_page,
                end_page: end_page,
                items: items
            }
        },
        methods: {
            changePage: function (cur_page) {
                window.location.hash = cur_page;

                var start_page = ((Math.floor((cur_page - 1) / per_page)) * per_page ) + 1;
                var end_page = start_page + per_page - 1;
                var items = [];
				var scroll_ul_top = $('#content').offset().top;

				if ($('body').hasClass('mobile')){  // 페이징 타겟 엘리먼트 위치
					// Mobile
					var scroll_ul_top_val = scroll_ul_top;
				}
				else{
					// Pc
					var scroll_ul_top_val = scroll_ul_top - 72;
				}

                if (end_page >= total_page) end_page = total_page;
                if (total_page > 1) {
                    for (var k = start_page; k <= end_page; k++) {
                        items.push(k);
                    }
                }

                settings['page'] = cur_page;

                notices.searchTerm(settings);

                this.cur_page = cur_page;
                this.start_page = start_page;
                this.end_page = end_page;
                this.items = items;

                $('.open_list li a').removeClass('open');
                $('.open_list div').hide();

                if (scroll) {
                    $('html, body').animate({
                        scrollTop: scroll_ul_top_val
                    }, 250);
                }
            }
        }
    })

	if (el !== undefined) {
        new Vue({
            el: el
        })
	}
}
    </script>

      </div>  
    </div>

	<%@include file="/common/footer.jspf"%>
</body>
</html>