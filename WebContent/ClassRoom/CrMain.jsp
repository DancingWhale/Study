<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ include file="/css/Menu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>

<style>
#content {
   padding: 10px 0 0px 0;
   width: 700px;
   margin-left: 150px !important;
   min-height: 700px;
   float: left;
}
</style>
<style>
#cssmenu, #cssmenu ul, #cssmenu ul li, #cssmenu ul li a {
   margin: 0;
   padding: 0;
   border: 0;
   list-style: none;
   line-height: 1;
   display: block;
   position: relative;
   -webkit-box-sizing: border-box;
   -moz-box-sizing: border-box;
   box-sizing: border-box;
}

#cssmenu {
   width: 200px;
   font-family: Helvetica, Arial, sans-serif;
   color: #ffffff;
   float: left;
}

#cssmenu ul ul {
   display: none;
}

.align-right {
   float: right;
}

#cssmenu>ul>li>a {
   padding: 15px 20px;
   border-left: 1px solid #ad4049;
   border-right: 1px solid #ad4049;
   border-top: 1px solid #ad4049;
   cursor: pointer;
   z-index: 2;
   font-size: 14px;
   font-weight: bold;
   text-decoration: none;
   color: #ffffff;
   text-shadow: 0 1px 1px rgba(0, 0, 0, 0.35);
   background: #ad4049;
   background: -webkit-linear-gradient(#C15A5A, #ad4049);
   background: -moz-linear-gradient(#C15A5A, #ad4049);
   background: -o-linear-gradient(#C15A5A, #ad4049);
   background: -ms-linear-gradient(#C15A5A, #ad4049);
   background: linear-gradient(#C15A5A, #ad4049);
   box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15);
}

#cssmenu>ul>li>a:hover, #cssmenu>ul>li.active>a, #cssmenu>ul>li.open>a {
   color: #eeeeee;
   background: #ad4049;
   background: -webkit-linear-gradient(#434361, #414161);
   background: -moz-linear-gradient(#434361, #414161);
   background: -o-linear-gradient(#434361, #414161);
   background: -ms-linear-gradient(#434361, #414161);
   background: linear-gradient(#434361, #414161);
}

#cssmenu>ul>li.open>a {
   box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px
      rgba(0, 0, 0, 0.15);
   border-bottom: 1px solid #414161;
}

#cssmenu>ul>li:last-child>a, #cssmenu>ul>li.last>a {
   border-bottom: 1px solid #414161;
}

.holder {
   width: 0;
   height: 0;
   position: absolute;
   top: 0;
   right: 0;
}

.holder::after, .holder::before {
   display: block;
   position: absolute;
   content: "";
   width: 6px;
   height: 6px;
   right: 20px;
   z-index: 10;
   -webkit-transform: rotate(-135deg);
   -moz-transform: rotate(-135deg);
   -ms-transform: rotate(-135deg);
   -o-transform: rotate(-135deg);
   transform: rotate(-135deg);
}

.holder::after {
   top: 17px;
   border-top: 2px solid #ffffff;
   border-left: 2px solid #ffffff;
}

#cssmenu>ul>li>a:hover>span::after, #cssmenu>ul>li.active>a>span::after,
   #cssmenu>ul>li.open>a>span::after {
   border-color: #ad4049;
}

.holder::before {
   top: 18px;
   border-top: 2px solid;
   border-left: 2px solid;
   border-top-color: inherit;
   border-left-color: inherit;
}

#cssmenu ul ul li a {
   cursor: pointer;
   border-bottom: 1px solid #32324d;
   border-left: 1px solid #32324d;
   border-right: 1px solid #32324d;
   padding: 10px 20px;
   z-index: 1;
   text-decoration: none;
   font-size: 13px;
   color: #eeeeee;
   background: #6f6f8c;
   box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
}

#cssmenu ul ul li:hover>a, #cssmenu ul ul li.open>a, #cssmenu ul ul li.active>a
   {
   background: #414161;
   color: #ffffff;
}

#cssmenu ul ul li:first-child>a {
   box-shadow: none;
}

#cssmenu ul ul ul li:first-child>a {
   box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
}

#cssmenu ul ul ul li a {
   padding-left: 30px;
}

#cssmenu>ul>li>ul>li:last-child>a, #cssmenu>ul>li>ul>li.last>a {
   border-bottom: 0;
}

#cssmenu>ul>li>ul>li.open:last-child>a, #cssmenu>ul>li>ul>li.last.open>a
   {
   border-bottom: 1px solid #414161;
}

#cssmenu>ul>li>ul>li.open:last-child>ul>li:last-child>a {
   border-bottom: 0;
}

#cssmenu ul ul li.has-sub>a::after {
   display: block;
   position: absolute;
   content: "";
   width: 5px;
   height: 5px;
   right: 20px;
   z-index: 10;
   top: 11.5px;
   border-top: 2px solid #eeeeee;
   border-left: 2px solid #eeeeee;
   -webkit-transform: rotate(-135deg);
   -moz-transform: rotate(-135deg);
   -ms-transform: rotate(-135deg);
   -o-transform: rotate(-135deg);
   transform: rotate(-135deg);
}

#cssmenu ul ul li.active>a::after, #cssmenu ul ul li.open>a::after,
   #cssmenu ul ul li>a:hover::after {
   border-color: #ffffff;
}
</style>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
   var classcode = ${classCode};
   $(document).ready(function(){
      $("#content").load("crNoticeList.khcu?classcode="+classcode);
         $("#main").click(function(){
            $("#content").load("crNoticeList.khcu?classcode="+classcode);
         });
         $("#attend").click(function(){
             $("#content").load("attendBookForm.khcu?classCode="+classcode);
          });
         $("#stattend").click(function(){
             $("#content").load("crSelfAttendCheck.khcu?classcode="+classcode);
          });
         $("#Notice").click(function(){
            $("#content").load("crNoticeList.khcu?classcode="+classcode);
         });
         $("#qna").click(function(){
            $("#content").load("crQnAList.khcu?classcode="+classcode);
         })
         $("#listenRecord").click(function(){
             window.open("/KHCU/crListenList.khcu?classcode="+classcode, "confirm", 
                 "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=1000, height=700");
         });
         $("#hw").click(function(){
            $("#content").load("crHwList.khcu?classcode="+classcode);
         });
         $("#examst").click(function(){
             $("#content").load("crExamContent.khcu?classcode="+classcode);
          });
         $("#exam").click(function(){
             $("#content").load("crExamInputForm.khcu?classCode="+classcode);
          });
         $("#memo").click(function(){
             $("#content").load("memoBox.khcu?classcode="+classcode);
          });
      });
      
</script>
</head>
<body> 
   <div>
      <div id='cssmenu'>
         <ul>
            <li><a id="main"><span>강의장</span></a>             
            <li><a id="Notice"><span>공지사항</span></a></li>
            <li><a id="qna"><span>질의응답</span></a></li>
            <li><a id="hw"><span>과제</span></a></li>
            <c:if test="${sessionScope.checkId == 3}">
               <li><a id="examst"><span>시험</span></a></li>
               <li><a id="stattend"><span>나의출석현황</span></a></li>
               <c:if test="${classtype==2}">
               <li><a id="listenRecord"><span>수업듣기(녹화)</span></a></li>
               </c:if>
               <c:if test="${classtype==1}">
               <li><a id="listenLive" href="crListenRoom.khcu?classcode=${classCode}"><span>수업듣기(라이브)</span></a></li>
               </c:if>
            </c:if>
            <c:if test="${sessionScope.checkId == 2}">
            <li><a id="attend"><span>출석부</span></a></li>
            <li><a id="exam"><span>시험출제</span></a></li>
            <li><a id="memo"><span>쪽지시험리스트</span></a></li>
               <c:if test="${classtype==2}">
               <li><a id="listenRecord"><span>수업하기(녹화)</span></a></li>
               </c:if>
               <c:if test="${classtype==1}">
               <li><a id="listenLive" href="crListenRoom.khcu?classcode=${classCode}"><span>수업하기(라이브)</span></a></li>
               </c:if>
            </c:if>
         </ul>
      </div>
      <div id="content"></div>
   </div>
</body>
<html>