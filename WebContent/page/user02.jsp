<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyMusic - Reservation</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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
					<jsp:include page="../calendar2.jsp"/>
				</td>
				<td>
					<jsp:include page="../process/reservation.jsp"/>
				</td>
				<td>
					<jsp:include page="../process/reservation1.jsp"/>
				</td>
			</tr>
		</table>
</center>
</body>
</html>