<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#lay_pop {
		position: absolute;
		z-index: 500;
		width: 600px;
		height: 600px;
		display: none;
		background-color: #ffffff;
	}
	
	#all_body {
		position: absolute;
		z-index: 9;
		display: block;
		filter: alpha(opacity=50);
		opacity: 1;
		-moz-opacity: 1;
		background-color: lightblue;
		left: 0;
		top: 0;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script language="javascript">
	function pushLayer(){
		var $width=parseInt($("#lay_pop").css("width"));
		var $height=parseInt($("#lay_pop").css("height"));
		var left=($(window).width()-$width)/2;
		var sctop=$(window).scrollTop()*2;
		var top=($(window).height()-$height+sctop)/2;
		var height=document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop").css("left",left);
		$("#lay_pop").css("top",top);
		$("#lay_pop").css("display","block");
		$("#lay_pop").css("z-index","555");
		$("#all_body").css("display","block");
		$("#all_body").css("width",$(window).width());
		$("#all_body").css("height",height);

	}
	function layerClose(lay1,lay2){
		$("#"+lay1).css("display","none");
		$("#"+lay2).css("display","none");
	}
</script>
</head>
<body>
<div id="lay_pop"><a href="javascript:;" onclick="layerClose('lay_pop','all_body')">닫기</a></div>
<div id="all_body"></div>
<input type="button" value="레이어" onclick="pushLayer()">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>