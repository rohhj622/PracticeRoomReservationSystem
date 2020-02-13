<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  
 
<title>SkyMusic - timeChart</title>
</head>
<body>
<div class="container">
	<table class="table">
		<tr>
			<td>
				<jsp:include page="../header/adminMenu.jsp"/>
			</td>
		</tr>
		<tr>
			<td>
				<button onclick="location.href='dayChart.jsp'">요일별차트</button>
				<button onclick="location.href='timeChart.jsp'">시간대차트</button>
				<button onclick="location.href='numCan.jsp'">누적페널티순위</button>
				<br>
				<button onclick="location.href='drumChart.jsp'">드럼</button>
				<button onclick="location.href='guitarChart.jsp'">기타&베이스</button>
				<button onclick="location.href='pianoChart.jsp'">피아노</button>
			</td>
		</tr>
	</table>
</div>
</body>
</html>