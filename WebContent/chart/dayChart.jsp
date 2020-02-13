<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyMusic - dayChart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  
   
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
				<button onclick="location.href='dayChart.jsp'">일별차트</button>
				<button onclick="location.href='timeChart.jsp'">시간대차트</button>
				<button onclick="location.href='numCan.jsp'">누적페널티순위</button>
				
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="chart01.jsp"/><!-- 요일별 차트 -->
			</td>
		</tr>
	</table>
</div>
</body>
</html>