<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.header{
   width:100%;
   border:solid 1px;
   text-align:center;
}

.left-header{
   float:left;
   display:inline-block;
   margin:3px;
}

.right-header{
   text-align:right;
}

.navContent{
   display:inline;
   padding:7px;
   text-align:center;
}

.container{
   width:1080px;
   margin: auto;
}

.contents{
   clear:left;
}
</style>
</head>
<body style="margin:0;">
<div class="container">
   <nav class="header">
      <div class="left-header">
         <img style="width:85px; height:85px" src="https://yt3.ggpht.com/a/AGF-l7_6P2fu7GYM2w8ywTE2excqeixsZP8sbgud6Q=s900-mo-c-c0xffffffff-rj-k-no">
      </div>
      <div class="right-header">
         <ul>
            <li class="navContent"><a href="#">로그인</a></li>
            <li class="navContent"><a href="#">회원가입</a></li>
         </ul>
         <div>
            <ul>
               <li class="navContent"><a href="#">커뮤니티관리</a></li>
               <li class="navContent"><a href="#">커뮤니티관리</a></li>
               <li class="navContent"><a href="#">커뮤니티관리</a></li>
            </ul>
         </div>
      </div>
   </nav>

   <div class="contents">
   본문입니다.
   </div>
</div>

</body>
</html>