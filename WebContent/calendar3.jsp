<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
    Calendar cal = Calendar.getInstance();
    int year = request.getParameter("y") == null ? cal.get(Calendar.YEAR) : Integer.parseInt(request.getParameter("y"));
    int month = request.getParameter("m") == null ? cal.get(Calendar.MONTH) : (Integer.parseInt(request.getParameter("m")) - 1);

  //오늘 일. 아래에서 오늘 일보다 작으면 a태그 안걸 것.
  	int nowD = cal.get(Calendar.DATE); /* 오늘 날짜중 '일'  */
  	int nowM = cal.get(Calendar.MONTH);/*  오늘 날짜 중 '월' */
  	int nowY = cal.get(Calendar.YEAR);/* 오늘 날짜 중 '년' */
  	
  	cal.add(Calendar.DATE,14);
  	
  	int nowD2 = cal.get(Calendar.DATE); /* 오늘 날짜 +14  */
  	int nowM2 = cal.get(Calendar.MONTH);
  	int nowY2 = cal.get(Calendar.YEAR);
  	
  	System.out.println(nowY2+"/"+nowM2+"/"+nowD2);
  	
  	cal.add(Calendar.DATE,-14);
	
    // 시작요일 확인
    // - Calendar MONTH는 0-11까지임
    cal.set(year, month, 1);
    int bgnWeek = cal.get(Calendar.DAY_OF_WEEK);

    // 다음/이전월 계산
    // - MONTH 계산시 표기월로 계산하기 때문에 +1을 한 상태에서 계산함
    int prevYear = year;
    int prevMonth = (month + 1) - 1;
    int nextYear = year;
    int nextMonth = (month  + 1) + 1;

    // 1월인 경우 이전년 12월로 지정
    if (prevMonth < 1) {
        prevYear--;
        prevMonth = 12;
    }

    // 12월인 경우 다음년 1월로 지정
    if (nextMonth > 12) {
        nextYear++;
        nextMonth = 1;
    }
%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>  
<meta charset="UTF-8">

<title>SkyMusic - Calendar</title>
<style type="text/css">
	a { text-decoration: none; }
	a:link { color: Blue; }
	a:visited { color: blue; }
	a:hover { color: black; }
	a:active { color: red; }
	.tb2-td{
		/* background-color: #cce0ff; */
		color: gray; 
	}
	
	
</style>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
</head>
<body>
<%	String mem_id = session.getAttribute("mem_id").toString(); 
	String instrument = null;
%>
	<script type="text/javascript">
		function selInst(ths){
			var val1 = $("#selBox option:selected").val(); //선택된 악기이름 가져옴.
		
			if(val1=="drum"){
				<% instrument="drum";%>
				console.log("<%=instrument%>");
			}
			if(val1=="guitar"){
				<% instrument="guitar";%>
				console.log("<%=instrument%>");
			}	
		}; 
	</script>
	
	내역
	<!--  -->
	<%-- <select id="selBox" onchange="selInst()" >
		<option >악기 선택</option>
		<option value="drum" <c:if test="${instrument eq 'drum'}"> selected</c:if>>드럼</option>
		<option value="guitar" <c:if test="${instrument eq 'guitar'}"> selected</c:if>>기타</option>
	</select> --%>
	<!-- Calendar -->
	<table class="table" border="1" >
	<tr>
	    <td>
		    <a href="./admin01.jsp?y=<%=prevYear%>&m=<%=prevMonth%>">◁</a> 
		    <%=year%>년 <%=month+1 %>월 
		    <a href="./admin01.jsp?y=<%=nextYear%>&m=<%=nextMonth%>">▷</a>
	    </td>
	</tr>
	<tr>
	    <td>
	        <table class="table">
	        <tr>
	            <td>일</td>
	            <td>월</td>
	            <td>화</td>
	            <td>수</td>
	            <td>목</td>
	            <td>금</td>
	            <td>토</td>
	        </tr>
	        
	        <tr>
	<%
	    // 시작요일까지 이동
	    for (int i=1; i<bgnWeek; i++) {
	    	/* out.println("<td>&nbsp;</td>"); */
	%>
		<td>&nbsp;</td>
	<%
	    };
	    
	    // 첫날~마지막날까지 처리
	    // - 날짜를 하루씩 이동하여 월이 바뀔때까지 그린다
	     while (cal.get(Calendar.MONTH) == month) {
	    	
	    	int i = 0;
	    	
	    	
	    	if(nowY != nowY2 && nowM != nowM2){
	    		if(nowY == cal.get(Calendar.YEAR) && nowM  == cal.get(Calendar.MONTH) && nowD <= cal.get(Calendar.DATE)){
	    			%>
	    				<td class="tb2-td" style="cursor:pointer;" > 
					    	<a href="admin01.jsp?y=<%=year %>&m=<%=month+1%>&day=<%= cal.get(Calendar.DATE) %>" >
					    		<%= cal.get(Calendar.DATE) %> 
					    	</a>   		
				    	</td>
	    			<%
	    		}else if (nowY2 == cal.get(Calendar.YEAR)&& nowM2 == cal.get(Calendar.MONTH)&& nowD2 >= cal.get(Calendar.DATE)){
	    			%>
	    				<td class="tb2-td" style="cursor:pointer;" > 
					    	<a href="admin01.jsp?y=<%=year %>&m=<%=month+1%>&day=<%= cal.get(Calendar.DATE) %>" >
					    		<%= cal.get(Calendar.DATE) %> 
					    	</a>   		
				    	</td>
    				<%
	    		}else{
	    			%>			
					    <td class="tb2-td" style="cursor:default;" > 
			    			<%= cal.get(Calendar.DATE) %>   
			    		</td>
					<%   	
	    		}

	    	}else if(nowY==nowY2 && nowM != nowM2){
	    		if(nowM == cal.get(Calendar.MONTH) && nowD <= cal.get(Calendar.DATE)){
	    			%>
	    				<td class="tb2-td" style="cursor:pointer;" > 
					    	<a href="admin01.jsp?y=<%=year %>&m=<%=month+1%>&day=<%= cal.get(Calendar.DATE) %>" >
					    		<%= cal.get(Calendar.DATE) %> 
					    	</a>   		
				    	</td>
					<%
	    		}else if(nowM2 == cal.get(Calendar.MONTH) && nowD2 >= cal. get(Calendar.DATE)){
	    			%>
	    				<td class="tb2-td" style="cursor:pointer;" > 
					    	<a href="admin01.jsp?y=<%=year %>&m=<%=month+1%>&day=<%= cal.get(Calendar.DATE) %>" >
					    		<%= cal.get(Calendar.DATE) %> 
					    	</a>   		
				    	</td>
					<%
	    		}else{
	    			%>			
					    <td class="tb2-td" style="cursor:default;" > 
			    			<%= cal.get(Calendar.DATE) %>   
			    		</td>
					<%   	
    			}
	    	}else if(nowY==nowY2 &&  nowM == nowM2){
	    		 if( nowD <= cal.get(Calendar.DATE) && cal.get(Calendar.DATE) < nowD2 && cal.get(Calendar.MONTH) == nowM && cal.get(Calendar.YEAR) == nowY) 
			    	{ //이번달인데 오늘 +14일인 날들.. 2주간만 가능잼. 
			%>		
					    <td class="tb2-td" style="cursor:pointer;" > 
					    	<a href="admin01.jsp?y=<%=year %>&m=<%=month+1%>&day=<%= cal.get(Calendar.DATE) %>" >
					    		
					    		<%= cal.get(Calendar.DATE) %> 
					    	</a>
					    		
					    </td>
			<%	    		
			    	}else{		
			    		%>			
					    <td class="tb2-td" style="cursor:default;" > 
			    			<%= cal.get(Calendar.DATE) %>   
			    		</td>
			<%   		
			    	}
	    	}
	   	
	        // 토요일인 경우 다음줄로 생성
	        if (cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY){ 	
	%>
	        </tr>
	        <tr>
	<%   	}
	        // 날짜 증가시키지
	        cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DATE)+1);
	    	i++;
	    }
	    
	    // 끝날부터 토요일까지 빈칸으로 처리
	    for (int i=cal.get(Calendar.DAY_OF_WEEK); i<=7; i++){
	%>
	 		<td>&nbsp;</td>
	    	<!-- out.println("<td>&nbsp;</td>"); -->
	<%}
	%>
	        </tr>
	    </table>
	    </td>
	</tr>
	</table>
<%-- 	<div id="myDiv"  >
		<%=year %><%=month %><%=cal.get(Calendar.DATE) %>
	<div> --%>
	
	
</body>
</html>



