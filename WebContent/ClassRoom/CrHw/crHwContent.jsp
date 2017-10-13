<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<title> 과제 </title>
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
	<script>
	    function HwSubmit(){
	    	var num = ${article.num};
	    	var pageNum = ${pageNum};
	    	var classcode = ${classcode};
			var type = document.getElementById('type');
	    	 url = "crHwSubmitForm.khcu?num="+num+"&pageNum="+pageNum+"&classcode="+classcode+"&type=";
	    	open(url, "confirm", 
	        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=900, height=500");
    	}
	    function HwSubmitList(){
	    	var classcode = ${classcode};
			var type = document.getElementById('type');
	    	 url = "crHwSubmitList.khcu?classcode="+classcode;
	    	open(url, "confirm", 
	        "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=900, height=500");
	    }
</script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
	$(document).ready(function(){       
		$("#modify").click(function(){
			$("#content").load("crHwModifyForm.khcu?classcode="+"${classcode}"+"&num="+"${article.num}"+"&pageNum="+"${pageNum}");
		  });
		$("#delete").click(function(){
			$("#content").load("crHwDeleteForm.khcu?classcode="+"${classcode}"+"&num="+"${article.num}"+"&pageNum="+"${pageNum}");
		  });
		$("#list").click(function(){
			$("#content").load("crHwList.khcu?classcode="+"${classcode}"+"&pageNum="+"${pageNum}");
		  });
	 });
</script>
</head>

<body>
<center><b> 과제 </b>
<br>

<form name="form1" method="post">
<input type="hidden" id="type" value="${article.type }"/>
<table id="customers" width="700" border="1" cellspacing="0" cellpadding="5"  align="center">  
	<tr height="30">
		<td align="center" width="100">글번호</td>
		<td align="center" width="100" align="center">${article.num}</td>
		<td align="center" width="100">조회수</td>
		<td align="center" width="100" align="center">${article.readcount}</td>
	</tr>
	<tr height="30">
		<td align="center" width="100">작성날짜</td>
		<td align="center" width="300" align="center">
			<fmt:formatDate value="${article.reg_date}" type="both"  pattern="yyyy-MM-dd"/>
		</td>
		<td align="center" width="100">과제형태</td>
		<td align="center" width="300">${article.type}</td>
	</tr>

	<tr>
		<td align="center" width="100">과제 제출일</td>
		<td align="center" width="300" colspan="3">
			${article.end_date}
		</td>
	</tr>
	<tr height="30">
		<td align="center" width="100">제목</td>
		<td align="center" width="300" colspan="3">${article.title}</td>
	</tr>
	<c:if test="${id==2}">
	<tr height="30">
		<td align="center" width="100">제출자 수</td>
		<td align="center" width="300" colspan="3">asdfasdf / 40</td>
	</tr>
	</c:if>
	<tr>
		<td align="left" width="400" colspan="4" height="200"><pre>${article.content}</pre></td>
	</tr>
	<tr>
		<td align="center" width="100">과제물</td>
		<td align="center" width="400" colspan="3">
		<a href="https://192.168.50.84:8443/KHCU/crHwContentDown.khcu?reference_name=${article.reference_name }">${article.reference_name }</a>
		</td>
	</tr>
	<tr height="30">      
		<td colspan="4" align="right">
			<c:if test="${id==3}">
			<input type="button" value="제출하기" onclick="HwSubmit()">
			&nbsp;&nbsp;&nbsp;&nbsp;
			</c:if>
			<c:if test="${id==2 }">
			<input type="button" value="제출자 확인" onclick="HwSubmitList()">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="수정" id="modify"/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="삭제" id="delete"/>
			&nbsp;&nbsp;&nbsp;&nbsp;
			</c:if>
			<input type="button" value="목록" id="list"/>
		</td>
	</tr>
</table>
</form>

</center>
</body>
</html>