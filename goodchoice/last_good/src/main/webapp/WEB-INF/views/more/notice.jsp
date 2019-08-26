<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/notice.css">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/common/header.jspf"%>
   <div id="content" class="sub_wrap more_wrap">

      <!-- Nav -->
      <nav>
         <ul>
            <li><a href="/more/notice">공지사항</a></li>
            <li><a href="/more/event">이벤트</a></li>
            <li><a href="/more/project">혁신 프로젝트</a></li>
            <li><a href="/more/faq" class="active">자주 묻는 질문</a></li>
            <li><a href="/more/inquiry">1:1 문의</a></li>
            <li><a href="/more/terms">약관 및 정책</a></li>
         </ul>
      </nav>
      <div class="align_rt">	
	 <!-- Notice -->
         <div class="notice">


            <!-- Tab -->
            <div class="tab">
               <span class="tab_btn active">서비스 공지사항 <i class="ico_new">NEW</i></span>
               <!-- <span class="tab_btn">여기어때 언론보도 <i class="ico_new">NEW</i></span> -->
            </div>

            <!-- 공지사항  -->
            <div class="tab_each">
                    <!-- 게시판에서 리스트렌더링 Vue.js를 쓰고있는듯 함 -->
               <ul id="notices" class="show_list open_list">
                        <!-- <template v-for="row in result"> -->
                        <li><a href="" id="notive_tab" class="list_que open"><p>[발표] 7월 4차 무료초대권 이벤트</p> <span>2019.07.22
                                    <!----></span></a> 
                        </li>
                            
                        <li>
                     <a href="" id="notive_tab" class="list_que">
                        <p>{{row.nttitle}}</p>
                        <span>{{row.ntreg2}}
                                    <i class="ico_new" v-if="row.new_icon_show == 'Y'">NEW</i>
                                </span>
                     </a>
                     <div v-html="row.ntcont"></div>
                  </li>
                       <!--  </template> -->
               </ul>

                    <div id="notice_pagination">
                        <!-- <my-pagination></my-pagination>-->
                    </div>
            </div>
            </div>
         <!-- //Notice -->
<!-- 스크립트 -->  
    <script type="text/javascript" src="/js/library/vue.min.js" ></script>
    <script type="text/javascript">
    function get_notice_list() {
    var hash = window.location.hash;
    //var cur_page = xReturnNumber(hash.replace('#', ''));

    new Vue({
        el: '#notices',
        created: function () {
            var settings = {
                // page: cur_page
                page: 1
            };

            settings = this.searchTerm(settings);
            get_no_total_pagination(settings, this, '#notice_pagination');
        },
        data: function () {
            return {
                result: [],
                page: hash.replace('#', '')
            }
        },
        methods: {
            searchTerm: function (settings) {
                var _self = this

                $.xResponse('/more/get_notice_non', settings).done(function (data) {
                    _self.result = $.extend({}, data.result);
                    _self.page = settings.page;

                    settings['total_page'] = data.total_page;
                });

                return settings;
            }
        }
    });
}

function get_notice_release_list() {
    var hash = window.location.hash;
    // window.location.hash : 주소값에 붙어있는 anchor값 반환
    //var cur_page = xReturnNumber(hash.replace('#', ''));

    new Vue({
        el: '#notice_release',
        created: function () {
            var settings = {
                //page: cur_page
                page: 1
            };

            settings = this.searchTerm(settings);
            get_no_total_pagination(settings, this, '#notice_release_pagination');
        },
        data: function () {
            return {
                result: [],
                page: hash.replace('#', '')
            }
        },
        methods: {
            searchTerm: function (settings) {
                var _self = this

                $.xResponse('/more/get_notice_release_non', settings).done(function (data) {
                    _self.result = $.extend({}, data.result);
                    _self.page = settings.page;

                    settings['total_page'] = data.total_page;
                });

                return settings;
            }
        }
    });
}

// TODO: 세그먼트 값
var segments = function (key) {
    var segments;
    var path = window.location.pathname;

    if (path.search('/') == 0)
        path = path.replace('/', '');

    segments = path.split("/");

    if (segments.length == 1)
        segments[1] = 'index';

    if (key === undefined)
        return segments;

    return segments[key];
}

$(function(){
    switch (segments(1)) {
        case 'notice':
            get_notice_list();
            get_notice_release_list();
            break;
        case 'event':
            get_event_list();
            break;
    }
   
   /* 리스트 펼침 */
   var show_target = '.open_list li .list_que'; //ul 클래스가 open_list 하위 li 클래스가 list_que
   $(document).on('click',show_target,function(e){
      e.preventDefault();
      if ($(this).hasClass('open')){  
            //list class의 .list_que open 가 open을 가지고 있으면 열려있단소리니 다음을 숨기고(접힘상태가됨) 클래스에서 open이란 단어를 삭제한다(그럼 class가 .list_que가 됨 = 접힘상태)
         $(this).next().hide();
         $(this).removeClass('open');
      }else{
         $(show_target).removeClass('open'); //이거 좀 이해가 안되는데...없을텐디 왜 지우지?확인차?
         $('.open_list .list_ans').hide(); //이건 없어도 되는 줄같고
         $(this).next().show(); //list 다음의 div인 v-html ntcont를 보여주게 하는거같음
         $(this).addClass('open'); //보여주게 했으니 클래스명을 open을 붙여줌
      }
   });

   $('.tab .tab_btn').each(function(e){
      $(this).click(function(i){
         i.preventDefault();
         $('.tab .tab_btn').removeClass('active');
         $('.tab .tab_btn').eq(e).addClass('active');
         $('.tab_each').hide();
         $('.tab_each').eq(e).show();
            window.location.hash = '#1';
      });
   });
});
    </script>

      </div>  
    </div>
			
	
	
	<%@include file="/common/footer.jspf"%>
</body>
</html>