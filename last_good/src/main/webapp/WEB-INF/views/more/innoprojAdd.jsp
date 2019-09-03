<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <title>Document</title>
   <style type="text/css">
   
	.top-background {
		position: absolute;
		width: 100%;
		height: 205px;
		background-color: #F7323F;
		margin: 0px 0px 0px 0px;
	}
	
	.top-background p {
		position: absolute;
		margin: 82px 0px 0px 310px;
		font-size: 37px;
		color: white;
	}
	
	.nav {
		position: absolute;
		width: 150px;
		color: #646464;
		margin: 240px 0px 0px 290px;
	}
	
	.nav-list {
		list-style: none;
		margin: 0;
		padding: 10px 0;
	}
	
	.nav-item {
		margin: 12px 0;
	}
	
	.nav-link {
		display: block;
		text-decoration: none;
		padding: 4px 10px;
		color: #646464;
		font-size: 18px;
	}
	
	.nav-list li:nth-child(3) {
		color: #e61c51;
	}
	   
   .bbs {
		width: 730px;
		height: 500px;
		margin-top: 0px;
		line-height: 1.6em;
	}
	
	.bbs td a {
		text-decoration: none;
		color: white;
		margin-left: 8px;
	}
	
   .innoContent {
   		padding-top: 200px;
   		margin-left: 550px;
   }
   
   .buttonList {
   		background-color: #e51048;
   		border: 0px;
   		border-radius: 5px;
   		width: 152px;
   		height: 53px;
   		font-weight: bold;
   		font-size: 12pt;
   }
   
   
   .button_write {
   		margin-top: 10px;
   		margin-left: 660px;
   }
   
   #tag,
   #sub2,
   #sub {
   		margin-bottom: 10px;
   		font-size: 16px;
   		font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;
   }
   
   #sub,
   #tag {
   		margin-left: 7px;
   }
   
   
   </style>
   <script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
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
	<%@include file="/common/header.jspf"%>

         <div class="top-background">
            <br><p>더보기</p>
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
	         </div>
	         <div class="innoContent">
	            <table class="bbs">
	               <tr>
	                  <td>
						<form action="write2" method="post">
							<div>
								<label for="sub">제목:</label> <input type="text" name="sub"
									id="sub" style="width: 550px; height: 20px;" />
							</div>
							<div>
								<label for="sub2">제목2:</label> <input type="text" name="sub2"
									id="sub2" style="width: 550px; height: 20px;"" />
							</div>
							태그:
							<select name="tag" id="tag" style="width:140px; height:25px;">
								<option selected>태그선택</option>
								<option value="#숙박어플최초">#숙박어플최초</option>
								<option value="#숙박어플최대">#숙박어플최대</option>
								<option value="#국내최초">#국내최초</option>
							</select>
							<div>
								<textarea name="content" id="faq-content" style="width:550px;"></textarea>
								<script type="text/javascript">
									CKEDITOR.replace('faq-content');
								</script>
							</div>
							<div class="button_write">
								<button style="background-color: #F7323F; border: 0px; border-radius: 5px;  width: 60px; height: 35px; font-weight: bold; color: white;">등 록</button>
							</div>
						</form>

					</td>
	               </tr>               
	            </table>
	            <div style="margin-top: 30px; margin-left: 280px;">
					<button class="buttonList"><a style="color: white;" href="innoproj">목록보기</a></button>
				</div>
	         </div>
         </div>
		<%@include file="/common/footer.jspf"%>
</body>
</html>