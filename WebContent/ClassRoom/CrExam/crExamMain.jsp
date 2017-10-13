<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<html>
<head>
<title>시험</title>
</head>
<body>
<form>
<center>
<br/><br/>
<table id="customers" border="1" width="90%">
	<tr>
		<td colspan="9">나의 강의실</td>
	</tr>
	<tr>
		<td width="10%">강의코드</td>
		<td width="10%">담당교수</td>
		<td width="10%">전공</td>
		<td width="10%">강의이름</td>
		<td width="10%">학년</td>
		<td width="10%">학점</td>
		<td width="10%">강의시간</td>
		<td width="10%">시험지 작성</td>
	</tr>

	<c:forEach var="list" items="${articleList2}">
	
	<tr>
		<td>${list.classCode}</td> 
		<td>${list.pfName }</td> 
		<td>${list.major}</td> 
		<td>${list.className}</td> 
		<td>${list.classGrade}</td> 
		<td>${list.credit}</td> 
		<td>${list.classTime}</td> 
		<td><input type="button" value="시험지 작성" onclick="javascipt:location='crExamInputForm.khcu?classCode=${list.classCode}'"></td>  
	</tr>
	</c:forEach>
</table>
</center>
</form>
</body>
</html>