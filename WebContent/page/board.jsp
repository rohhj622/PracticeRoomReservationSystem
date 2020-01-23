<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	
</style>
<title>SkyMusic - Board</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
</head>

<body>
<center>

	<table border ="1" class="tb">
		<tr >		
		<%
			String mem_id = session.getAttribute("mem_id").toString();
			if(mem_id.equals("admin")){
		%>
					<td>
						<jsp:include page="../header/adminMenu.jsp"/>
					</td>
		<%
			}else if(mem_id.equals("teacher")){
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

</center>
</body>
</html>