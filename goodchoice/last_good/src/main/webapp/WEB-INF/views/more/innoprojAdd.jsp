<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/event.css">
   <style type="text/css">
 
   .button_write {
   		margin-top: 10px;
   		margin-left: 660px;
   }
   

   #sub2,
   #sub {
   		margin-bottom: 10px;
   		font-size: 18px;
   		font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;
   }

	#tag {
		margin-bottom: 10px;
   		font-size: 14px;
   		font-family: "Apple SD Gothic Neo","맑은 고딕","Malgun Gothic",sans-serif;
	}
      
   #sub,
   #tag {
   		margin-left: 7px;
   }
   
	.bbs{
		margin-top: 150px;
	}
   </style>
<script src="//cdn.ckeditor.com/4.12.1/basic/ckeditor.js"></script>
<script src="js/jquery-1.12.4.min.js"></script>
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
				<li><a href="event" class="active">이벤트</a></li>
				<li><a href="innoproj"><font color="#e61c51"><b>혁신 프로젝트</b></font></a></li>
				<li><a href="faq">자주 묻는 질문</a></li>
				<li><a href="inquiry">1:1 문의</a></li>
				<li><a href="#">약관 및 정책</a></li>
			</ul>
		</nav>
		<div class="align_rt">

			<!-- Event -->
			  <table class="bbs">
	               <tr>
	                  <td>
						<form action="write2" method="post">
							<div>
								<b>제목:</b> <input type="text" name="sub"
									id="sub" style="width: 550px; height: 20px;" />
							</div>
							<div>
								<b>제목2:</b> <input type="text" name="sub2"
									id="sub2" style="width: 550px; height: 20px;" />
							</div>
							<b>태그:</b>
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
			<!-- //Event -->

		</div>

	</div>
	<%@include file="/common/footer.jspf"%>
</body>
</html>