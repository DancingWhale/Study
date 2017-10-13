<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title> ���� </title>
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
				alert("������ �Է��ϼ���");
				return false;
			}
			if(!document.modifyForm.content.value){
				alert("������ �Է��ϼ���");
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
<center><b> ���� �ۼ� </b>
<br>
<form method="post" name="modifyForm" action="crHwModifyPro.khcu" onsubmit="return writeCheck()" enctype="multipart/form-data">
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="classcode" value="${classcode }">
<table id="customers" width="400" border="1" cellspacing="0" cellpadding="0"  align="center">
	<tr>
		<td align="right" colspan="2">
			<a href="crHwList.khcu?classcode=${classcode }"> �۸��</a> 
		</td>
	</tr>
	<tr>
		<td width="100" align="center">���� ������</td>
		<td width="300">		  	
			<input type="text" id="endDate" name="end_date" value="${article.end_date }" onclick="fnPopUpCalendar(endDate,endDate,'yyyymmdd')" class='text_box1' placeholder="����)20160101">
  		</td>
	</tr>
	<tr>
		<td width="100" align="center">��������</td>
		<td width="300">${article.type }</td>
	</tr>
	<tr>
		<td width="100" align="center" >�� ��</td>
		<td width="300"><input type="text" name="title" size="50" value="${article.title }"></td>
	</tr>
	<tr>
		<td width="400" colspan="2"><textarea name="content" rows="13" cols="60">${article.content}</textarea></td>
	</tr>
	<tr>
		<td width="100" align="center">������</td>
		<td width="300"><input type="file" name="reference"/>
		${article.reference_name}�� �̹� �����մϴ�.<br/> ���� ÷���ϸ� ������ ������ ������ϴ�.</td>
	</tr>
	<tr>      
		<td align="center" colspan="2"> 
			<input type="submit" value="����">
			<input type="button" value="���" OnClick="window.location='crHwList.khcu?classcode=${classcode}'">
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>