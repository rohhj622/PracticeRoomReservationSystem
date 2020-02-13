<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyMusic - menu</title>
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  

</head>
<body>
<%
		String mem_id= request.getParameter("mem_id");
%>
<div class="container">

	<div class="row">
		<div class="col-xs-4">
			<p id="sub">SkyMusic</p>
		</div>	
	</div>
	<div class="row">
		<div class="col-xs-2 ">
			<form action="../page/admin00.jsp" method="post">
					<input class="btn btn-default btn-md" type="submit" value="예약" >
				</form>
		</div>
		<div class="col-xs-2">
			<form action="../page/admin01.jsp" method="post">
					<input class="btn btn-default btn-md " type="submit" value="내역" >
				</form>	
		</div>
		<div class="col-xs-2">
			<form action="../page/admin02.jsp" method="post">
					<input class="btn btn-default btn-md" type="submit" value="통계" >
				</form>
		</div>
		<div class="col-xs-2">
			<form action="../page/board.jsp" method="post">
					<input class="btn btn-default btn-md" type="submit" value="공지" >
				</form>
		</div>
		<div class=" col-xs-2 ">
			<form action="../process/loginOut.jsp" method="post">
				<input class="btn btn-default btn-md " type="submit" value="logout" >
			</form>
		</div>	
	</div>
</div>
</body>
</html>