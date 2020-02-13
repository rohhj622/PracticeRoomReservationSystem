<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SkyMusic</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  
 
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Mansalva|Ranga|Shadows+Into+Light&display=swap');
    #head{
    	margin-top:10em;
    }
    p{
        color:#000080;
        font-weight: 700; 
        font-size: 5em;
        text-align: center;
        font-family: 'Shadows Into Light', cursive;
    }
    div{
        margin:auto; 
        text-align: center;
    }
    a { text-decoration: none; }
	a:link { color: Blue; }
	a:visited { color: blue; }
	a:hover { color: black; }
	a:active { color: red; }
	.tb2-td{
		/* background-color: #cce0ff; */
		color: gray; 
	}
    
    #id01{
/*     	//df
    	  */
        font-size:1rem;
        text-align:left;
        margin-top: 1em;
        align:center;
    }
    #id02{
        background:#1AAB8A;
        color:#fff;
        border:none;
        position:relative;
        height:50px;
        font-size:1.6em;
        padding:0 2em;
        cursor:pointer;
        transition:800ms ease all;
        outline:none;
        margin-top: 1em;
        align:center;
        
    }
    #id02:hover{
        background:#fff;
        color:#1AAB8A;
    }
    #id02:before,#id02:after{
        content:'';
        position:absolute;
        top:0;
        right:0;
        height:2px;
        width:0;
        background: #1AAB8A;
        transition:400ms ease all;
    }
    #id02:after{
        right:inherit;
        top:inherit;
        left:0;
        bottom:0;
    }
    #id02:hover:before,#id02:hover:after{
        width:100%;
        transition:800ms ease all;
    }
</style>
</head>


<body>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");	
	String url = "jdbc:mysql://localhost/SkyMusic?characterEncoding=UTF-8 & serverTimezone=UTC";
	String id = "HJ";
	String pass = "shguswls12";
	
	Connection conn =DriverManager.getConnection(url,id,pass);;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql="Select mem_id from SkyMusic.member";
	ArrayList<String> id_list = new ArrayList<String>();
	
	try{
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			id_list.add(rs.getString("mem_id"));
		}
		
	}catch(SQLException e){
		System.out.println(e);
	}
	
%>

<script type="text/javascript">

	function check(){
		console.log("hi");
		if(!document.frm.writeId.value){
			alert("아이디를 입력하시오.");
			return false;
		}
		if(!document.frm.writePw.value){
			alert("비밀번호를 입력하시오.");
			return false;
		}
		if(!document.frm.writeName.value){
			alert("이름을 입력하시오.");
			return false;
		}
		if(!document.frm.writeType.value){
			alert("종류를 선택하시오.");
			return false;
		}
		if(!document.frm.writeInst.value){
			alert("유형을 선택하시오.");
			return false;
		}
	}
	
</script>
<div class="container-fluid">
	<div class="row" id="head">
		<div class="col-sm-12">
			<p>"Sky Music" </p>
				실용음악학원
		</div>
	</div>
	<form action="../process/registProc.jsp" method="post" name="frm" onsubmit="return check()">
		<div class="row">
			<div class="col-xs-12">
					회원가입		
			</div>
		</div>
		<br><br>
		<div class="row">
			<div class="col-xs-2">		
					이름 
			</div> 
			<div class="col-xs-10">
				<input  class="form-control" type="text" name="name" id="writeName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-2">		
					ID 
			</div> 
			<div class="col-xs-10">
				<input  class="form-control" type="text" name="id" id="writeId"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-2">		
					비밀번호 
			</div> 
			<div class="col-xs-10">
				<input  class="form-control" type="text" name="pw" id="wrtiePw"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-2">
				유형
			</div>
			<div class="col-xs-4">
				<select class="custom-select" name="type" id="writeType">
				    <option value="입시">입시</option>
				    <option value="취미">취미</option>
				    <option value="선생님">선생님</option>
				  </select>
			</div>
			<div class="col-xs-2">
				종류
			</div>
			<div class="col-xs-4">
				<select class="custom-select" name="inst" id= "writeInst">
				    <option value="drum">드럼</option>
				    <option value="piano">피아노</option>
				    <option value="guitar">기타</option>
				    <option value="bass">베이스</option>
				    <option value="vocal">보컬</option>
				  </select>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12">
				<input class="btn btn-primary btn-md btn-block" type="submit" value="가입하기"/>
			</div>
		</div>
	</form>	
</div>

</body>
</html>