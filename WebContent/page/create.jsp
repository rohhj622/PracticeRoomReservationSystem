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

<title>SkyMusic - Create</title>
</head>
<body>
<div class="container">
	<h1>공지사항 작성</h1>
	<%
		String noUpdate = request.getParameter("number"); //details에서 수정 누른 사람들. 
		System.out.println("created: "+noUpdate);
	%>
		
			<%
			String str = "수정";
			
			/* 수정 */
			if(noUpdate !=null ){
				
				/* DB 연결  */
				Class.forName("com.mysql.cj.jdbc.Driver");	
				String url = "jdbc:mysql://localhost/SkyMusic?characterEncoding=UTF-8 & serverTimezone=UTC";
				String id = "HJ";
				String pass = "shguswls12";
				
				Connection conn = DriverManager.getConnection(url,id,pass);
				
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try{
					String sql = "select * from SkyMusic.board where no='"+noUpdate+"'";/* 번호에 맞게 가져오기. */
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					String title = null; /* 글 제목  */
					String content = null; /* 글 내용 */
					
					if(rs.next()){
						title = rs.getString("subject");
						content = rs.getString("content");
					}
					
					if(title != null && content != null){
						%>
						<form action="boardTask.jsp">
							<table class="table">
								<tr>
									<td>
										제목 : <input type="text" name="title" value="<%=title %>">
									</td>
								</tr>
								<tr>
									<td>
										내용 : <textarea rows="10" cols="50" name="content" ><%=content %></textarea>
									</td>
								</tr>
							</table>
							<input type="hidden" name="noUpdate" value="<%=noUpdate %>">
							<input type="submit" value="수정">
						</form>
						<% 		
					}
				}catch(SQLException e){
					System.out.println("create :" + e);
				}finally {
			        if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			    }
				
			}
			/* 새로 작성 */
			else{
				%>
				<form action="boardTask.jsp">
							<table class="table">
								<tr>
									<td>
										제목 : <input type="text" name="title" >
									</td>
								</tr>
								<tr>
									<td>
										내용 : <textarea rows="10" cols="50" name="content" ></textarea>
									</td>
								</tr>
							</table>
					<input type="hidden" name="noUpdate" value="nothing">
					<input type="submit" value="글쓰기">
				</form>
				<% 		
				}

			%>
</div>
		
</body>
</html>