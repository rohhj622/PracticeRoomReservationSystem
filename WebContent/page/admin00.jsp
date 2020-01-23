<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<style type="text/css">
	.tb:{
		width: 20px;
		height: 40px;
		margin:auto;
	}
</style>
<title>SkyMusic</title>
</head>
<body>
	<center>
		<table border="1" class="tb">
			<tr>
				<td colspan="2">
					<jsp:include page="../header/adminMenu.jsp"/>
				</td>
			</tr>
			<tr>
				<td>
					<jsp:include page="../calendar4.jsp"/>
				</td>
				<td>
					
					<p> ※ 비어있는 시간을 확인해서 예약 해주세요. </p>
					<hr>
					<jsp:include page="../process/adminResAll.jsp"/>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>