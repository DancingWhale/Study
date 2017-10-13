<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script>
		alert("삭제가 완료되었습니다.");
		self.close();
		$(document).ready(function(){
			$("#content").load("crHwList.khcu?pageNum="+"${pageNum}"+"&classcode="+"${classcode}");
		});
	</script>
<div id="content"></div>