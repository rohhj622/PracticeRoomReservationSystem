<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registering...</title>
</head>
<body>
	<%

	request.setCharacterEncoding("UTF-8");

	Class.forName("com.mysql.cj.jdbc.Driver");	
	String url = "jdbc:mysql://localhost/SkyMusic?characterEncoding=UTF-8 & serverTimezone=UTC";
	String id = "HJ";
	String pass = "shguswls12";
	
	Connection conn =DriverManager.getConnection(url,id,pass);;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String mem_id=request.getParameter("id");
	String mem_pw = request.getParameter("pw");
	String mem_name=request.getParameter("name");
	String mem_type=request.getParameter("type");
	String mem_inst=request.getParameter("inst");
	
	System.out.println(mem_id+","+mem_pw+","+mem_name+","+mem_type+","+mem_inst);
	
	if(mem_id.isEmpty()||mem_pw.isEmpty()||mem_name.isEmpty()||mem_type.isEmpty()||mem_inst.isEmpty()){
		%>	
			<script type="text/javascript">
				alert("빈 항목이 있습니다.");
				location.href="../page/regist.jsp";
			</script>
		<% 
	}
	
	ArrayList<String> id_list = new ArrayList<String>();
	
	try{
		String sql="Select mem_id from SkyMusic.member where mem_id='"+mem_id+"'";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		System.out.println("같아/1");
		
		if(rs.next()){
			%>	
				<script type="text/javascript">
					alert("이미 사용중인 아이디입니다.");
					location.href="../page/regist.jsp";
				</script>
			<% 
		}
		else{
			String sql1="INSERT INTO SkyMusic.member (mem_id,mem_pw,mem_name,mem_type,mem_instrument,mem_penalty,mem_accP)"
					+"VALUES ('"+mem_id+"','"+mem_pw+"','"+mem_name+"','"+mem_type+"','"+mem_inst+"',0,0)";
			pstmt=conn.prepareStatement(sql1);
			pstmt.executeUpdate(sql1);
			
			%>	
				<script type="text/javascript">
					alert("가입되었습니다.");
					location.href="../login.jsp";
				</script>
			<%
		}

		
	}catch(SQLException e){
		System.out.println(e);
	}
	
%>
</body>
</html>