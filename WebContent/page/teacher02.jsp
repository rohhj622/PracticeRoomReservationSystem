<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  

<title>SkyMusic</title>
</head>
<body>
<div class="container">
	<table class="table">
		<tr>
			<td colspan="3">
				<jsp:include page="../header/teacherMenu.jsp"/>
			</td>
		</tr>
		<tr>
			<td>
				내역
				<jsp:include page="../calendar6.jsp"/>
			</td>
		</tr>
		<tr>
			<td>
				<p>서련빌딩</p>
				<hr>
				<jsp:include page="../process/teacherRes2.jsp"/>
			</td>
		</tr>
	</table>
</div>
</body>
</html>