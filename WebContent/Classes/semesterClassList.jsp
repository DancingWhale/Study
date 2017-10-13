<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
#content {
    width: 700px;
    margin-left: 80px !important;
    min-height: 700px;
    float: left;
}
a:hover { font-weight:bold; color:#ad4049; cursor:pointer;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){   
	document.search.classGrade.value="${classGrade}";
	document.search.semester.value="${semester}";
});

function selectGrade(value){
	 $(document).ready(function(){       
	  $("#content").load("semesterClassList.khcu?semester=${semester}&classGrade="+value);
	});   
}
function selectSemester(value){
	 $(document).ready(function(){       
	  $("#content").load("semesterClassList.khcu?classGrade=${classGrade}&semester="+value);
	});
 }  
 
function page(value){
	 $(document).ready(function(){
         $("#content").load("semesterClassList.khcu?pageNum="+value);     
	 });
}
 
function popupOpen(classCode){
	var popUrl = "classPlanner.khcu?classCode="+classCode;
	var popOption = "width=500, height=500, resizable=no, scrollbars=no, status=no;";
		window.open(popUrl,"",popOption);
	}

</script>

<center>
<div id="content">
<table border="0" width="900"><tr><td align="center"><b>학기별 개설 강의 목록</b><br/><br/>
<form name="search" action="semesterClassList.khcu" method="post">
<select name="classGrade" onChange="selectGrade(this.value)">
	<c:if test="${classGrade == '1'}">
		<option value="1" selected>1학년</option>
	</c:if>
	<c:if test="${classGrade != '1'}">
		<option value="1">1학년</option>
	</c:if>
	<c:if test="${classGrade == '2'}">
		<option value="2" selected>2학년</option>
	</c:if>
	<c:if test="${classGrade != '2'}">
		<option value="2">2학년</option>
	</c:if>
	<c:if test="${classGrade == '3'}">
		<option value="3" selected>3학년</option>
	</c:if>
	<c:if test="${classGrade != '3'}">
		<option value="3">3학년</option>
	</c:if>
	<c:if test="${classGrade == '4'}">
		<option value="4" selected>4학년</option>
	</c:if>
	<c:if test="${classGrade != '4'}">
		<option value="4">4학년</option>
	</c:if>		
</select>

<select name="semester" onChange="selectSemester(this.value)">
	<c:if test="${semester == '1'}">
		<option value="1" selected>1학기</option>
	</c:if>
	<c:if test="${semester != '1'}">
		<option value="1">1학기</option>
	</c:if>
	<c:if test="${semester == '2'}">
		<option value="2" selected>2학기</option>
	</c:if>
	<c:if test="${semester != '2'}">
		<option value="2">2학기</option>
	</c:if>			
</select>
</form>
</td></tr></table>


<c:if test="${count == 0 }">
<table id="customers" border="1" bordercolor="d5d5d5" width="900" height="150" cellspacing="0" cellpadding="0">
<tr border="1" bordercolor="d5d5d5">
   <td border="1" bordercolor="d5d5d5" align="center">
	해당 학기에 개설된 강의가 없습니다.
   </td>
</tr>
</table>
</c:if>


<c:if test="${count > 0 }">
<table id="customers" border="1" align="center" width="900">
<tr >
	<td align="center" >번호</td>
	<td align="center" >강의명</td>
	<td align="center" >교수명</td>
	<td align="center" >학기</td>
	<td align="center" >학점</td>
	<td align="center" >강의 종류</td>
	<td align="center" >수강가능인원</td>
	<td align="center" >강의계획서</td>
	<td align="center" >강의 상태</td>
</tr>

<c:forEach var="article" items="${articleList}">
<tr height="30">
	<td align="center" width="50">
		<c:out value="${number}"/>
		<c:set var="number" value="${number -1 }"/>
	</td>
 	<td align="center">${article.className}</td>
 	<td align="center">${article.pfName}</td>
 	<td align="center">${article.semester}</td>
 	<td align="center">${article.credit}</td>
 	<td align="center">
	 	<c:if test="${article.classType==1}">
	 		라이브강의
	 	</c:if>
	 	<c:if test="${article.classType==2}">
	 		녹화강의
	 	</c:if> 	
 	</td>
 	<td align="center">${article.maxNum}</td>
 	<td align="center"><font color="blue"><a onclick="popupOpen(${article.classCode})">강의계획서</a></font></td>
 	<td align="center">${article.state}</td> 	
</tr>
</c:forEach>
</table>


<br>
	<c:set var="pageCount" value="${count / pageSize + (count % pageSize == 0 ? 0 : 1) }"/>
	<c:set var="pageBlock" value="${10 }"/>
	<fmt:parseNumber var="result" value="${currentPage/10 }" integerOnly="true"/>
	<c:set var="startPage" value="${result * 10 + 1 }"/>
	<c:set var="endPage" value="${startPage + pageBlock -1 }"/>
	<c:if test="${endPage > pageCount }">
		<c:set var="endPage" value="${pageCount }"/>
	</c:if>
	
	<c:if test="${startPage > 10 }">
		<a onclick="page(${startPage - 10})">[이전]</a>
	</c:if>
	
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<a onclick="page(${i})">${i}</a>
	</c:forEach>
	
	<c:if test="${endPage < pageCount }">
		<a onclick="page(${startPage + 10})">[다음]</a>
	</c:if>
</c:if>
<br/>
</div>
</center>
</body>