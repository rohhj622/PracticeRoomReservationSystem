<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<style>
	.tb:{
		width: 20px;
		height: 40px;
	}
</style>
<title>SkyMusic</title>
</head>
<body>
	<center>
		<table border="1" class="tb" >
		<tr>
			<td colspan="3">
				<jsp:include page="../header/adminMenu.jsp"/>
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="../calendar3.jsp"/>
			</td>
			<td>
				<p>00빌딩</p>
				<hr>
				<jsp:include page="../process/adminRes.jsp"/>
			</td>
			<td>
				<p>서련빌딩</p>
				<hr>
				<jsp:include page="../process/adminRes2.jsp"/>
			</td>
		</tr>
	</table>
	</center>
	
</body>
</html>