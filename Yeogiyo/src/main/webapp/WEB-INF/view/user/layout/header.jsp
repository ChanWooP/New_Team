<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<nav class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<%=cp%>/user/main">YEOGIYO</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">마이페이지
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">회원정보확인</a></li>
          <li><a href="#">예약확인</a></li>
          <li><a href="#">포인트정보</a></li>
          <li><a href="#">위시리스트</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">고객센터
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%=cp%>/user/event/list">이벤트</a></li>
          <li><a href="<%=cp%>/user/faq/list">FAQ</a></li>
          <li><a href="<%=cp%>/user/qna/list">Q&A</a></li>
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<%=cp%>/user/member/join"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<%=cp%>/user/member/join"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>