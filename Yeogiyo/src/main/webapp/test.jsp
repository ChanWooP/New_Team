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
html,body{
	margin:0px;
}

.backgroundColor{
   background-color:#FFC153;
   height:100px;
}

.headerContainer{
 	margin: 0px auto;
	width:1080px;
	height:100px;
}

.header-leftContainer{
	width:540px;
	height:100px;
	float:left;
}

.header-right li{
	float:right;
	list-style-type: none;
}

.header-left *{
	float:left;
}

.header-rightContainer{
	width:540px;
	height:100px;
	float:left;
}

.body{
	margin: 0px auto;
	min-height:500px;
	width:1080px;
}

.footer {
   width: 1080px;
   height: 100px;
   margin: 0 auto;
   color: black;
   text-align: center;
}

.footer a {
	text-decoration:none;
}
}

li a{
	text-decoration:none
}

</style>
</head>

<body>
	<header class="backgroundColor">
		<div class="headerContainer">
			<div class="header-leftContainer">
				<img style="width:85px; height:85px" src="https://yt3.ggpht.com/a/AGF-l7_6P2fu7GYM2w8ywTE2excqeixsZP8sbgud6Q=s900-mo-c-c0xffffffff-rj-k-no">
			</div>
			<div class="header-rightContainer">
				<ul class="header-right">
					<li><a href="#">회원가입</a></li>
					<li><a href="#">로그인&nbsp; | &nbsp;</a></li>
				</ul>
				<br>
				<ul class="header-right">
					<li><a href="#">커뮤니티관리</a></li>
					<li><a href="#">QNA&nbsp; | &nbsp;</a></li>
					<li><a href="#">예약&nbsp; | &nbsp;</a></li>
				</ul>
			</div>
		</div>
	</header>
	
<div class="body">
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>
본문입니다.<br>

</div>
	
<footer class="footerContainer">
	<hr>
	<div class="footer">
		<a href="">SPRING 정책 및 약관</a>&nbsp;&nbsp;&nbsp;
		<a href="">회사소개</a>&nbsp;&nbsp;&nbsp;
		<a href="">제휴제안</a>&nbsp;&nbsp;&nbsp;
		<a href="">이용약관</a>&nbsp;&nbsp;&nbsp;
		<a href="">개인정보취급방침</a>&nbsp;&nbsp;&nbsp;
		<a href="">고객센터</a>&nbsp;&nbsp;&nbsp;
		© SPRING Corp.
	</div>
</footer>
</body>
</html>