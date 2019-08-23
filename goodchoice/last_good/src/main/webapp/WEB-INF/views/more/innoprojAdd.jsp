<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>혁신 프로젝트 등록 페이지입니다</h1>

	<form action="write2" method="post">
		<div>
			<label for="sub">제목</label> <input type="text" name="sub" id="sub" />
		</div>
		<div>
			<label for="sub2">제목2</label> <input type="text" name="sub2" id="sub2" />
		</div>
		<select name="tag">
			<option value="#숙박어플최초">#숙박어플최초</option>
			<option value="#숙박어플최대">#숙박어플최대</option>
			<option value="#국내최초">#국내최초</option>
		</select>
		<div>
			<label for="content">본문내용 이미지</label>
			<textarea name="content"></textarea>
		</div>
		<div>
			<button>입력</button>
		</div>
	</form>
</body>
</html>