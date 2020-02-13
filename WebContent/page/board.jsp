<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  
 
<title>SkyMusic - Board</title>
</head>

<body>
	<%
	String mem_id = session.getAttribute("mem_id").toString();
	
	/* DB Connect */
	Class.forName("com.mysql.cj.jdbc.Driver");	
	String url = "jdbc:mysql://localhost/SkyMusic?characterEncoding=UTF-8 & serverTimezone=UTC";
	String id = "HJ";
	String pass = "shguswls12";

	
	Connection conn = DriverManager.getConnection(url,id,pass);
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String mem_type=null;
	
	try{
		String sql1 = "select mem_type from SkyMusic.member where mem_id='"+mem_id+"'";
		pstmt = conn.prepareStatement(sql1);
		rs = pstmt.executeQuery(sql1);
		
		
		
		if(rs.next()){
			mem_type=rs.getString("mem_type");
		}
		
	}catch(SQLException e){
		System.out.println(e);
	}
	
	%>
	
	

<div class="container">
	<table class="table">
		<tr >		
		<%
			
			if(mem_type.equals("관리자")){
		%>
					<td>
						<jsp:include page="../header/adminMenu.jsp"/>
					</td>
		<%
			}else if(mem_type.equals("선생님")){
				%>
				<td>
					<jsp:include page="../header/teacherMenu.jsp"/>
				</td>
	<%
			}else{
		%>
					<td>
						<jsp:include page="../header/menu.jsp"/>
					</td>
		<%
			}
		%>
			
		</tr>
		<tr>
			<td>
				<jsp:include page="read.jsp"/>
			</td>
		</tr>
	</table>
	
</div>
	
</body>
</html>