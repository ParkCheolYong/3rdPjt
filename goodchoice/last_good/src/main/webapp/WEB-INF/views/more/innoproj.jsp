<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <title>InnoProj</title>
   <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/innoproj.css">
   <style type="text/css">
   </style>
   <script src="js/jquery-1.12.4.min.js"></script>
   <script type="text/javascript">
      $(document).ready(function() {
         $(window).scroll(function() {
            var scroll = $(window).scrollTop();
            if (scroll > 30) {
               $("#topbar").css("background", "#ffffff");
               $(".menubar li a").css("color", "#000000");
               $(".menubar li button").css("color", "#000000");
               $('#logo').css('background', 'url(imgs/h1_logo_pc.png) 0 0 no-repeat');
               $('#search').css('background', 'url(imgs/ico_srch.png) 50% 50% no-repeat').css('background-size', '24px auto');
               $('#search2').css('background', 'url(imgs/ico_srch.png) 50% 50% no-repeat').css('background-size', '24px auto');
               $('.list_03 li a').css('color', '#000000');
               $('#searchClose').css('background', 'url(imgs/ico_close.png) 50% 50% no-repeat').css('background-size', '24px auto');


            } else {
               $("#topbar").css("background", "#f7323f");
               $(".menubar li a").css("color", "#ffffff");
               $(".menubar li button").css("color", "#ffffff");
               $('#logo').css('background', 'url(imgs/h1_logo_pc_w.png) 0 0 no-repeat');
               $('#search').css('background', 'url(imgs/ico_srch_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
               $('#search2').css('background', 'url(imgs/ico_srch_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
               $('.list_03 li a').css('color', '#000000');
               $('#searchClose').css('background', 'url(imgs/ico_close_2.png) 50% 50% no-repeat').css('background-size', '24px auto');

            }
         })
      });

      $(document).ready(function() {

         var srch_bar = $('.srch');
         srch_bar.hide();
         $('.mainContent').hide();
      });
      $(document).ready(function() {

         var search = $('#search');
         var search_close = $('#searchClose');
         var srch_bar = $('.srch');
         search.click(function() {
            srch_bar.slideDown();
            search.animate({
               left: 400
            }, {
               complete: function() {
                  search.hide();
               }
            });
            $('.menubar').hide();
            $('.mainContent').show();
         });
         search_close.click(function() {
            var offset = search.offset();
            search.animate({
               left: 1047
            });
            srch_bar.css('display', 'none');
            $('.menubar').show();
            search.show();
            $('.mainContent').hide();
         });
      });

   </script>
</head>

<body>
   <div class="frame">
      <div class="header">
         <div id="topbar">
            <div id="topCenter">
               <form class="srch">
                  <button type="submit" id="search2" style="right: 1139px;">검색</button>
                  <input type="text" id="keyword" placeholder="지역, 숙소명" autocomplete="off">
                  <button type="button" id="searchClose" style="right: 400px;">취소</button>
                  <div class="srch_bar">
                     <strong style="margin-left: 45px;">추천 검색어</strong>
                     <ul>
                        <li><a href="#">오션뷰</a></li>
                        <li><a href="#">파티룸</a></li>
                        <li><a href="#">야외수영장</a></li>
                        <li><a href="#">속초</a></li>
                        <li><a href="#">애견동반펜션</a></li>
                        <li><a href="#">여수</a></li>
                        <li><a href="#">제주도</a></li>
                        <li><a href="#">안면도</a></li>
                        <li><a href="#">남해</a></li>
                        <li><a href="#">부산</a></li>
                     </ul>
                  </div>
               </form>
               <h1 id="logo"><a id="aLogo" href="#/" title="여기어때">요기어때</a></h1>
               <button type="button" id="search" style="right: 396px;">검색</button>
               <ul class="menubar">
                  <li><a href="#">내주변</a></li>
                  <li><a href="#">예약내역</a></li>
                  <li class="over">
                     <button type="button"><span>더보기</span></button>
                     <ul class="list_03">
                        <li><a href="#">공지사항</a></li>
                        <li><a href="event">이벤트</a></li>
                        <li><a href="innoproj">혁신 프로젝트</a></li>
                        <li><a href="faq">자주 묻는 질문</a></li>
                        <li><a href="#">1:1 문의</a></li>
                        <li><a href="#">약관 및 정책</a></li>
                     </ul>
                  </li>
                  <li><a href="#"><span>로그인</span></a></li>
               </ul>
            </div>
         </div>
         <div class="top-background">
            <p>더보기</p>
         </div>
      </div>
      <div class="container">
         <div class="nav">
            <ul class="nav-list">
               <li class="nav-item"><a href="#" class="nav-link">공지사항</a></li>
               <li class="nav-item"><a href="event" class="nav-link">이벤트</a></li>
               <li class="nav-item"><a href="innoproj" class="nav-link"><font color="#e61c51"><b>혁신 프로젝트</b></font></a></li>
               <li class="nav-item"><a href="faq" class="nav-link">자주 묻는 질문</a></li>
               <li class="nav-item"><a href="#" class="nav-link">1:1 문의</a></li>
               <li class="nav-item"><a href="#" class="nav-link">약관 및 정책</a></li>
            </ul>
            <div class="mainContent">
            </div>
         </div>
         <div class="content">
            <b><font color="#272727" size="4">혁신 프로젝트 란?</font></b><br>
            <font color="#646464">건전한 예약 문화를 조성하기 위해 여기어때가 시행하는 인식개선 캠페인 입니다.</font>
            <table class="bbs">
               
               <c:forEach items="${list}" var="dto">
               <tr>
                  <td style="background-image: url('imgs/circlebutton.PNG');
         					background-repeat: no-repeat;
         					background-position: 0% 50%;
         					width: 45px;
         					text-align: center;
         					font-size: 12pt;
         					padding-right: 15px;"><a href="innoprojDetail?no=${dto.no }"><b>${dto.no }탄</b></a></td>
                  <td><font color="#272727" size="4">${dto.sub }</font>　<span style="background-color:#ebebeb"><font color="#666666">${dto.tag }</font></span><br><font color="#666666">${dto.sub2 }</font></td>
               </tr>               
               </c:forEach>
            </table>
            <a href="innoprojAdd">등록</a>  
         </div>
      </div>
      <div class="footer">

      </div>
   </div>
</body>
</html>