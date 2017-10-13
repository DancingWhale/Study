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
function page(value){
	 $(document).ready(function(){
         $("#content").load("classList.khcu?pageNum="+value);     
	 });
}
 
function popupOpen(classCode){
	var popUrl = "classPlanner.khcu?classCode="+classCode;
	var popOption = "width=500, height=500, resizable=no, scrollbars=no, status=no;";
		window.open(popUrl,"",popOption);
	}
    
function updateAlert(){
    	alert("강의 상태 변경이 완료되었습니다.");
    	opener.location.reload;
    }
</script>

<center>
<div id="content">
<c:if test="${count == 0 }">
<table id="customers" border="1" bordercolor="d5d5d5" width="900" height="150" cellspacing="0" cellpadding="0">
<tr border="1" bordercolor="d5d5d5">
   <td border="1" bordercolor="d5d5d5" align="center">
		신청된 강의가 없습니다.
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
 	<td align="center">
 		<font color="blue"><a onclick="popupOpen(${article.classCode})">강의계획서</a></font>
 	</td>
 	<td align="center">
 	<form method="post" action="classStateUpdatePro.khcu" onsubmit="updateAlert()">
 	  <input type="hidden" name="classCode" value="${article.classCode}">
 	<select name="state">
               <c:if test="${article.state == '대기중'}">
                  <option value="대기중" selected>대기중</option>
               </c:if>
               <c:if test="${article.state != '대기중'}">
                  <option value="대기중" >대기중</option>
               </c:if>
               <c:if test="${article.state == '개설완료'}">
                  <option value="개설완료" selected>개설완료</option>
               </c:if>
               <c:if test="${article.state != '개설완료'}">
                  <option value="개설완료" >개설완료</option>
               </c:if>
               <c:if test="${article.state == '강의폐지'}">
                  <option value="강의폐지" selected>강의폐지</option>
               </c:if>
               <c:if test="${article.state != '강의폐지'}">
                  <option value="강의폐지" >강의폐지</option>
               </c:if>
            </select> <br>
          
            <input type="submit" value="수정"/>
            </form>
            </td> 	
 
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
    