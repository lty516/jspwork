<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	</head>
		<body>
		<a href="src/reqtest/RequsetTest2?id=tiger&age=30"> get 방식으로 데이터 전달 </a><br><br>
		<form action="/RequestTest2" method="post">
		<h2>좋아하는 가수를 입력해 주세요</h2>
		<ul>
			<li><input type="text" name="singer"/></li>
			<li><input type="text" name="singer"/></li>
			<li><input type="text" name="singer"/></li>
			<li><input type="text" name="singer"/></li>
		</ul>
		<br><br>
		<h2>좋아하는 음식을 선택해 주세요</h2>
			<input type="checkbox" name="food" 
				value="짜장면"/>짜장면<br>
			<input type="checkbox" name="food" 
				value="쫄면"/>쫄면<br>
			<input type="checkbox" name="food" 
				value="돼지갈비"/>돼지갈비<br>
			<input type="checkbox" name="food" 
				value="잔치국수"/>잔치국수<br>
		<br><br>
		<h2>좋아하는 도시를 선택해 주세요</h2>
		<select name="city" multiple="multiple" size="4">
			<option value="seoul">서울</option>
			<option>파리</option>
			<option>런던</option>
			<option>헬싱키</option>
		</select>
		<br><br>
		<input type="submit" value="전송" />
		</form>
	</body>
</html>