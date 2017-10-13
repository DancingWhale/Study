<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		function writeCheck(){
			if(!document.modifyForm.title.value){
				alert("제목을 입력하세요");
				return false;
			}
			if(!document.modifyForm.content.value){
				alert("내용을 입력하세요");
				return false;
			}
		}
	</script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
$(document).ready(function(){       
	$("#list").click(function(){
		$("#content").load("crHwList.khcu?pageNum="+"${pageNum}"+"&classcode="+"${classcode}");
	  });
 });
</script>
</head>
   
<body>  
<center><b> 과제 작성 </b>
<br>
<form method="post" name="modifyForm" action="crHwModifyPro.khcu" onsubmit="return writeCheck()" enctype="multipart/form-data">
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="classcode" value="${classcode }">
<table id="customers" width="400" border="1" cellspacing="0" cellpadding="0"  align="center">
	<tr>
		<td align="right" colspan="2">
			<a href="crHwList.khcu?classcode=${classcode }"> 글목록</a> 
		</td>
	</tr>
	<tr>
		<td width="100" align="center">과제 제출일</td>
		<td width="300">		  	
			<input type="text" id="endDate" name="end_date" value="${article.end_date }" onclick="fnPopUpCalendar(endDate,endDate,'yyyymmdd')" class='text_box1' placeholder="예시)20160101">
  		</td>
	</tr>
	<tr>
		<td width="100" align="center">과제형태</td>
		<td width="300">${article.type }</td>
	</tr>
	<tr>
		<td width="100" align="center" >제 목</td>
		<td width="300"><input type="text" name="title" size="50" value="${article.title }"></td>
	</tr>
	<tr>
		<td width="400" colspan="2"><textarea name="content" rows="13" cols="60">${article.content}</textarea></td>
	</tr>
	<tr>
		<td width="100" align="center">과제물</td>
		<td width="300"><input type="file" name="reference"/>
		${article.reference_name}이 이미 존재합니다.<br/> 새로 첨부하면 기존의 파일은 사라집니다.</td>
	</tr>
	<tr>      
		<td align="center" colspan="2"> 
			<input type="submit" value="수정">
			<input type="button" value="목록" OnClick="window.location='crHwList.khcu?classcode=${classcode}'">
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>