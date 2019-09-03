<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>대한민국 1등 종합숙박웹 - 요기어때</title>
<style type="text/css">
 #topbar {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 72px;
	transition: 0.4s;
	background-color: #f7323f;
	z-index: 220;
}

a {
	text-decoration: none;
}

#topCenter {
	position: absolute;
	left : 20%;
	width: 1024px;
	height: 64px;
	background: none;
	margin: 0 auto;
}

ul, ol, li {
	list-style: none;
}

#logo {
	position: absolute;
	top: 26px;
	left: 31px;
	width: 96px;
	height: 20px;
	margin: 0;
	background: url(imgs/h1_logo_pc_w.png) 0 0 no-repeat;
	background-size: 96px auto;
}

#aLogo {
	display: block;
	text-indent: -9999px;
	text-decoration: none;
}

#search {
	position: absolute;
	border: none;
	text-indent: -9999px;
	top: 22px;
	z-index: 10;
	width: 30px;
	height: 30px;
	background: url(imgs/ico_srch_2.png) 50% 50% no-repeat;
	background-size: 24px auto;
	right: 396px;
}

#searchClose {
	position: absolute;
	border: none;
	text-indent: -9999px;
	top: 22px;
	right: 206px;
	z-index: 10;
	width: 30px;
	height: 30px;
	background: url(imgs/ico_close_2.png) 50% 50% no-repeat;
	background-size: 24px auto;
}

button {
	padding: 0;
	cursor: pointer;
	box-sizing: border-box;
	margin: 0em;
	font: 400 13.3333px Arial;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	text-rendering: auto;
}

.menubar {
	display: inline-block;
	position: absolute;
	top: 7px;
	right: 31px;
	width: 1600px;
	text-align: right;
	list-style: none;
}

.menubar li {
	display: inline-block;
	position: relative;
	min-width: 53px;
	min-height: 35px;
	margin-left: 30px;
	vertical-align: top;
}

.menubar li a {
	display: inline-block;
	font-size: 18px;
	color: #ffffff;
	letter-spacing: 0;
}

.menubar li button {
	border: none;
	padding: 0;
	background: none;
	font-size: 18px;
	line-height:;
	color: #ffffff;
	letter-spacing: 0;
}

button span {
	position: relative;
}

.menubar li ul {
	display: none;
	position: absolute;
	border-radius: 5px;
	padding: 10px;
	background: #fff;
	text-align: left;
	box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.2);
}

.menubar li:hover ul {
	display: block;
	font-size: 14px;
	line-height: 1;
	min-width: auto;
	min-height: auto;
	margin: 0 0 14px 0;
	vertical-align: top;
}

.menubar li:hover ul a {
	color: #000000;
}

.list_03 {
	top: 30px;
	left: -65px;
	width: 184px;
}

.mainContent {
	height: 2000px;
	width: auto;
	background-color: rgba(0, 0, 0, 0.5);
	margin: 0px auto;
	padding: 0px auto;
	border: 0px;
	left: 0;
	right: 0;
	position: absolute;
	z-index: 30
}

.srch_bar {
	position: absolute;
	top: 72px;
	left: 200px;
	width: 60%;
	height: 280px;
	background-color: #ffffff;
	border: 1px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 10px;
}

.srch_bar ul li {
	margin-left: 10px;
	margin-bottom: 3px;
}

.srch_bar li a {
	color: green;
}

#keyword {
	position: absolute;
	left: 240px;
	top: 22px;
	width: 500px;
	height: 25px;
	font-size: 16px;
	background-color: transparent;
	border: none;
	color: #ffffff;
}

#keyword::placeholder {
	color: #ffffff;
}

#search2 {
	position: absolute;
	border: none;
	text-indent: -9999px;
	top: 22px;
	right: 596px;
	z-index: 310;
	width: 30px;
	height: 30px;
	background: url(imgs/ico_srch_2.png) 50% 50% no-repeat;
	background-size: 24px auto;
} 


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
                    $('#keyword').css('color','#000000');

                } else {
                    $("#topbar").css("background", "#f7323f");
                    $(".menubar li a").css("color", "#ffffff");
                    $(".menubar li button").css("color", "#ffffff");
                    $('#logo').css('background', 'url(imgs/h1_logo_pc_w.png) 0 0 no-repeat');
                    $('#search').css('background', 'url(imgs/ico_srch_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('#search2').css('background', 'url(imgs/ico_srch_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('.list_03 li a').css('color', '#000000');
                    $('#searchClose').css('background', 'url(imgs/ico_close_2.png) 50% 50% no-repeat').css('background-size', '24px auto');
                    $('#keyword').css('color','#ffffff');
                    
                }
            })
        });
        
        $(document).ready(function() {

                    var srch_bar = $('.srch');
                    srch_bar.hide();
                    $('.mainContent').hide();
                });
        $(document).ready(function() {
                    var position;
                    var search = $('#search');
                    var search_close = $('#searchClose');
                    var srch_bar = $('.srch');
                    search.click(function() {
                        position = $('#search').offset().left;
                        search.animate({left: 220},{
                            complete:function(){
                                search.hide();
                        		srch_bar.slideDown();
		                        $('#keyword').focus();
                        		
                            }
                        });
                        $('.menubar').hide();
                        $('.mainContent').show();
                    });
                    search_close.click(function() {
                        var offset=search.offset();
                        search.animate({left:597},{
                            complete:function(){
                               // $('#search').css('right','106px');
                                window.location.reload();
                            }   
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
	<div id="topbar">
		<div id="topCenter">
			<form class="srch">
				<button type="submit" id="search2" style="right: 790px;">검색</button>
				<input type="text" id="keyword" placeholder="지역, 숙소명"
					autocomplete="off">
				<button type="button" id="searchClose" style="right: 220px;">취소</button>
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
			<h1 id="logo">
				<a id="aLogo" href="#/" title="여기어때">요기어때</a>
			</h1>
			<button type="button" id="search">검색</button>
			<ul class="menubar">
				<li class="po"><a href="#">내주변</a></li>
				<li><a href="#">예약내역</a></li>
				<li class="over">
					<button type="button">
						<span>더보기</span>
					</button>
					<ul class="list_03">
						<li><a href="#">공지사항</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="#">혁신 프로젝트</a></li>
						<li><a href="/goodchoice/more/faq">자주 묻는 질문</a></li>
						<li><a href="#">1:1 문의</a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</li>
				<li><a href="#"><span>로그인</span></a></li>
			</ul>
		</div>
	</div>
</body>
</html>