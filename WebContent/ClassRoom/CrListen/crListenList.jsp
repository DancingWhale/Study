<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title> ���� ��� </title>
	
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
</head>

<body>
<center><b> ���� ��� </b>

<table id="customers" border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
	<tr height="30">
		<td align="center" colspan="3"> �� �� </td>
	</tr>
	<tr height="30">
		<td align="center" width="150">����</td>
		<td align="center" width="500">���� ����</td>
		<td align="center" width="50">�⼮üũ</td>
	</tr>
	<tr height="30"> 
		<td align="center"  width="150" >1�� ��</td>
		<td align="center"	width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=1&title=${dto.plan_w1}">${dto.plan_w1}</a></td>
		<td align="center" width="50">${attend_dto.w1}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >2�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=2&title=${dto.plan_w2}">${dto.plan_w2}</a></td>
		<td align="center" width="150">${attend_dto.w2}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >3�� ��</td><td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=3&title=${dto.plan_w3}">${dto.plan_w3}</a></td>
		<td align="center" width="50">${attend_dto.w3}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >4�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=4&title=${dto.plan_w4}">${dto.plan_w4}</a></td>
		<td align="center" width="50">${attend_dto.w4}</td>
	</tr>
	<tr height="30"> 
		<td align="center"  width="150" >5�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=5&title=${dto.plan_w5}">${dto.plan_w5}</a></td>
		<td align="center" width="50">${attend_dto.w5}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >6�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=6&title=${dto.plan_w6}">${dto.plan_w6}</a></td>
		<td align="center" width="50">${attend_dto.w6}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >7�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=7&title=${dto.plan_w7}">${dto.plan_w7}</a></td>
		<td align="center" width="50">${attend_dto.w7}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >8�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=8&title=${dto.plan_w8}">${dto.plan_w8}</a></td>
		<td align="center" width="50">${attend_dto.w8}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >9�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=9&title=${dto.plan_w9}">${dto.plan_w9}</a></td>
		<td align="center" width="50">${attend_dto.w9}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >10�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=10&title=${dto.plan_w10}">${dto.plan_w10}</a></td>
		<td align="center" width="50">${attend_dto.w10}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >11�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=11&title=${dto.plan_w11}">${dto.plan_w11}</a></td>
		<td align="center" width="50">${attend_dto.w11}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >12�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=12&title=${dto.plan_w12}">${dto.plan_w12}</a></td>
		<td align="center" width="50">${attend_dto.w12}</td>
	</tr>
	<tr height="30">	
		<td align="center"  width="150" >13�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=13&title=${dto.plan_w13}">${dto.plan_w13}</a></td>
		<td align="center" width="50">${attend_dto.w13}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >14�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=14&title=${dto.plan_w14}">${dto.plan_w14}</a></td>
		<td align="center" width="50">${attend_dto.w14}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >15�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=15&title=${dto.plan_w15}">${dto.plan_w15}</a></td>
		<td align="center" width="50">${attend_dto.w15}</td>
	</tr>
	<tr height="30">
		<td align="center"  width="150" >16�� ��</td>
		<td align="center" width="500">
		<a href="/KHCU/crListenContentPro.khcu?classcode=${dto.classCode}&week=16&title=${dto.plan_w16}">${dto.plan_w16}</a></td>
		<td align="center" width="50">${attend_dto.w16}</td>
	</tr>
</table>


</center>
</body>
</html>