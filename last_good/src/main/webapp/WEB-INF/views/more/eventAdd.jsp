<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>이벤트 등록 페이지입니다</h1>

		<form action="write" method="post">
		<div>
			<label for="sub">제목</label>
			<input type="text" name="sub" id="sub" />
		</div>
		<div>
			<label for="startdate">시작기간</label>
			<input type="startdate" name="startdate" id="startdate" />
		</div>
		<div>
			<label for="enddate">종료기간</label>
			<input type="enddate" name="enddate" id="enddate" />
		</div>
		<div>
			<label for="thumbnail">썸네일 이미지</label>
			<textarea name="thumbnail"></textarea>
		</div>
		<div>
			<label for="bodyimage">본문내용 이미지</label>
			<textarea name="bodyimage"></textarea>
		</div>
		<div>
			<button>입력</button>
		</div>
	</form>
</body>
</html>