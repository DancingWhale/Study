<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��������</title>
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
	function exit(){
		self.close();
	}
</script>
</head>
<body>
	<form method="post" name="submitForm" action="crHwSubmitPro.khcu" enctype="multipart/form-data">
		<input type="hidden" name="classcode" value="${classcode }"/>
		<input type="hidden" name="num" value="${num }"/>
		<input type="hidden" name="type" value="${type }"/>
		<center>�� �� �� ��</center>
		<br/>
		<table id="customers" width="500" border="1"  cellspacing="0" cellpadding="5"  align="center">
			<tr>
			<td width="100" align="center">��������</td>
			<td width="400" align="center">${type }</td>
			</tr>
			<tr>
			<td width="500" align="center" colspan="2">�� ��</td>
			</tr>
			<tr>
			<td width="500" align="center" colspan="2"><textarea name="title"  rows="13" cols="60"></textarea></td>
			</tr>
			<tr>
			<td width="100" align="center">÷������</td>
			<td width="400" align="center"><input type="file" name="submitfile"/></td>
			</tr>
			<tr>
			<td width="500" align="center" colspan="2">
				<input type="submit" value="�� ��"/>&nbsp;&nbsp;&nbsp;
				<input type="button" value="�� ��" onclick="exit()"/>
			</td>
			</tr>
		</table>
	</form>
</body>
</html>