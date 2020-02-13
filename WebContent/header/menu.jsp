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

<div class="row">
	<div class="col-xs-3">
		<form action="user01.jsp" method="post">
				<input id="ipM" type="submit" value="예약" class="btn btn-default btn-md btn-block">
			</form>
	</div>
	<div class="col-xs-3">
		<form action="user02.jsp" method="post">
			<input id="ipM" type="submit" value="내역" class="btn btn-default btn-md btn-block">
		</form>	
	</div>
	<div class="col-xs-3">
		<form action="board.jsp" method="post">
				<input id="ipM" type="submit" value="공지" class="btn btn-default btn-md btn-block">
			</form>
	</div>
	<div class="col-xs-3">
		<form action="../process/loginOut.jsp" method="post">
				<input id="ipM" type="submit" value="logout" class="btn btn-default btn-md btn-block">
			</form>
	</div>
</div>


</body>
</html>