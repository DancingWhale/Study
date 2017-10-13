<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>출석체크</title>
<style>
		h1{
		text-align:center;
		}
		#customers {
		    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		    border-collapse: collapse;  
		}
		#customers td, #customers th {
		    border: 1px solid #EAEAEA;
		    text-align: left;
		    padding: 8px;
		}
		#customers tr:nth-child(even){
			background-color: #FFFFFF
		}
		#customers tr:hover {
			background-color: #EAEAEA;
		}
		#customers th {
		    padding-top: 12px;
		    padding-bottom: 12px;
		    background-color: #FFFFFF;
		    color: white;
		}
		#customers a{
			text-decoration:none; 
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		}
	</style>
<script language="javaScript">
	var classcode = ${classcode};
	var checkTime = ${checkTime};
	function ManualCheck(){
		if(checkTime>1500){
			window.open("/KHCU/crListenRoomManualCheck.khcu?classcode="+classcode, "confirm", 
	        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
		}else if(checkTime==0){
			window.open("/KHCU/crListenRoomManualCheck.khcu?classcode="+classcode, "confirm", 
	        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
		}else{
			alert("지금은 출석체크할 수 없습니다.")
		}
	}
	
	function finalCheck(){
		window.open("/KHCU/crListenRoomFinalCheck.khcu?classcode="+classcode, "confirm", 
        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
	}
	
	function AutoCheck(){
		alert("15분마다 한번씩 자동으로 출석체크를 보내줍니다.");
		window.open("/KHCU/crListenAutoAttendCheck.khcu?classcode="+classcode, "confirm",
		"toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
	}
</script>
</head>
<body>
	<center><h2>출석 체크</h2></center>
	<table id="customers" align="center" width="700" border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center" width="100"> 전체 학생 </td><td align="center" width="100">${countAllStudent}</td>
			<td align="center" width="100"> 오늘 출석 학생</td><td align="center" width="100">${countTodayStudent}</td>
		</tr>
		<tr>
			<td align="center" colspan="4">
			<input type="button" value="출석체크" onclick="ManualCheck()"/>
			</td>
		</tr>
	</table>
	<hr>
	<table id="customers" align="center" width="700" border="1" cellspacing="0" cellpadding="0">
			<tr>
				<td align="center">학 번</td>
				<td align="center">출석체크</td>
				<td align="center">최종체크</td>
			</tr>
		<c:forEach var="article" items="${articleList}">
			<tr>
				<td align="center">${article.stnum}</td>
				<td align="center">${article.attendcheck}</td>
				<td align="center">${article.end_check}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>