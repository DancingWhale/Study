<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<html>
<head>
<title>����</title>
</head>
<body>
<form>
<center>
<br/><br/>
<table id="customers" border="1" width="90%">
	<tr>
		<td colspan="9">���� ���ǽ�</td>
	</tr>
	<tr>
		<td width="10%">�����ڵ�</td>
		<td width="10%">��米��</td>
		<td width="10%">����</td>
		<td width="10%">�����̸�</td>
		<td width="10%">�г�</td>
		<td width="10%">����</td>
		<td width="10%">���ǽð�</td>
		<td width="10%">������ �ۼ�</td>
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
		<td><input type="button" value="������ �ۼ�" onclick="javascipt:location='crExamInputForm.khcu?classCode=${list.classCode}'"></td>  
	</tr>
	</c:forEach>
</table>
</center>
</form>
</body>
</html>