<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혁신 프로젝트</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/event.css">
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
	
	.sub_wrap nav {
		margin-top: 150px;
	}
	
	.event {
		margin-top: 150px;
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
   
   .prev {
   		width: 724px;
   		height: 80px;
   		border-top: 1px solid #ebebeb;
  		border-bottom: 1px solid #ebebeb;
  		margin-top: 60px;
  		padding-top: 30px;
  		background: url(imgs/innoproj/ico_arr_up.png) 7.2% 50% no-repeat;
    	background-size: 18px auto;
   }
   
   
   .next span,
   .prev span {
   		margin-right: 60px;
   		font-size: 16px;
   		font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;
   		font-color: #F21114C;
   		font-weight: bold;
   }
   
	.txt:link {text-decoration:none; color:#F21114C;}
	.txt:visited {text-decoration:none; color:#f2114c;}
   
   .txt2 {
      	font-size: 16px;
   		font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;
   		font-color: #272727;
   }
   
   	.txt2:link {text-decoration:none; color:#272727;}
	.txt2:visited {text-decoration:none; color:#272727;}
  
   .next{
   		width: 724px;
   		height: 80px;
  		border-bottom: 1px solid #ebebeb;
  		padding-top: 30px;
  		background: url(imgs/innoproj/ico_arr_down.png) 7.3% 50% no-repeat;
    	background-size: 18px auto;
   }
	
	.bbs{
		margin-top: 150px;
	}
   </style>
<script src="js/jquery-1.12.4.min.js"></script>
</head>
<body>
	<%@include file="/common/header.jspf"%>
		
		<div class="top-background">
            <br><p>더보기</p>
         </div>
	
	
	<div id="content" class="sub_wrap more_wrap">

		<!-- Nav -->
		<c:choose>
			<c:when test="${empty sessionScope.nick}">
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj"><font color="#e61c51"><b>혁신 프로젝트</b></font></a></li>
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
						<li><a href="event">이벤트</a></li>
						<li><a href="innoproj"><font color="#e61c51"><b>혁신 프로젝트</b></font></a></li>
						<li><a href="faq">자주 묻는 질문</a></li>
						<li><a href="inquiry">1:1 문의</a></li>
						<li><a href="#">약관 및 정책</a></li>
					</ul>
				</nav>
			</c:otherwise>
		</c:choose>
		<div class="align_rt">

			<!-- InnoprojDetail start -->
			  <table class="bbs">
	               <tr>
	                  <td>${detail.content }</td>
	               </tr>               
	            </table>
	            <div class="prev">
	           		<span><a href="innoprojDetail?no=${prev.prev_no }" class="txt">이전글</a></span><a href="innoprojDetail?no=${prev.prev_no }" class="txt2">${prev.prev_sub }</a><br><br>
	           	</div>
	           	<div class="next">	
	           		<span><a href="innoprojDetail?no=${prev.next_no }" class="txt">다음글</a></span><a href="innoprojDetail?no=${prev.next_no }" class="txt2">${prev.next_sub }</a>
	            </div>
	            <div style="margin-top: 30px; margin-left: 280px;">
					<button class="buttonList"><a style="color: white;" href="innoproj">목록보기</a></button>
				</div>
			<!-- InnoprojDetail end -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>