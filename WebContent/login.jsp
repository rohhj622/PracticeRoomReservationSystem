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


<div class="container-fluid">
	<div class="row" id="head">
		<div class="col-sm-12">
			<p>"Sky Music" </p>
			실용음악학원
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<form action="./process/loginOk.jsp" method="post">
				id : <input type="text" name="mem_id" id="id01"  ><br>
				pw :<input type="password" name="mem_pw" id="id01"><br>
				<input type="submit" value="login" id="id02">
			</form>	
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-12">
			<a href="./page/regist.jsp">회원가입</a>
		</div>
	</div>
</div>
</body>
</html>