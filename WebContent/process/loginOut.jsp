<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<%@ page import="java.util.Date" %>  
<%@ page import ="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogOuting...</title>
</head>
<body>
<%
		session.removeAttribute("mem_id");
%>
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
		location.href="../login.jsp";
	</script>
	
</body>
</html>