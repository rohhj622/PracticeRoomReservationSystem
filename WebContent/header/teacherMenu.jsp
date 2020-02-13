<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyMusic-menu</title>
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  

</head>
<body>

<p id="sub">SkyMusic</p>
<%
	String mem_id= request.getParameter("mem_id");
%>
<div class="container">
	<div class="row">
		<div class="col-xs-3">
			<form action="teacher01.jsp" method="post">
					<input id="ipM" type="submit" value="예약">
				</form>
		</div>
		<div class="col-xs-3">
			<form action="teacher02.jsp" method="post">
					<input id="ipM" type="submit" value="내역" >
				</form>	
		</div>
		<div class="col-xs-3">
			<form action="board.jsp" method="post">
					<input id="ipM" type="submit" value="공지사항" >
				</form>	
		</div>
		<div class="col-xs-3">
			<form action="../process/loginOut.jsp" method="post">
					<input id="ipM" type="submit" value="logout" >
				</form>	
		</div>
</div>
</div>


</body>
</html>