<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>SkyMusic - Reserve</title>

<style>
	.tb:{
		width: 20cm;
		height: 40cm;
	}
</style>
</head>
<body>
	<center>
		<table border ="1" class="tb">
			<tr >
				<td colspan="3">
					<jsp:include page="../header/menu.jsp"/>
				</td>
			</tr>
			<tr>
				<td>
					<jsp:include page="../calendar.jsp"/>
				</td>
				<td>
					<jsp:include page="../process/reserve.jsp"/>
				</td>
				<td>
					<jsp:include page="../process/reserve1.jsp"/>
				</td>
			</tr>
		</table>
	</center>

</body>
</html>