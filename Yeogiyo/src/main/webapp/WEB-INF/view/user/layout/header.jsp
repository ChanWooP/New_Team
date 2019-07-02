<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>

<style>
.header{
   width:100%;
   border:solid 1px;
   text-align:center;
}

.header-left{
   float:left;
   display:inline-block;
   margin:3px;
}

.header-center{
   float:left;
   display:inline-block;
   margin:3px;
}

.header-right{
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

<div class="container">
   <div class="header-top">
      <div class="header-left">
         <img style="width:85px; height:85px" src="https://yt3.ggpht.com/a/AGF-l7_6P2fu7GYM2w8ywTE2excqeixsZP8sbgud6Q=s900-mo-c-c0xffffffff-rj-k-no">
      </div>
      <div class="header-cender">
       <ul class="nav">
        <li>
            <a href="#">회사소개</a>
            <ul>
                <li><a href="#">회사개요</a></li>
                <li><a href="#">회사연혁</a></li>
                <li><a href="#">사업분야</a></li>
                <li><a href="#">조직도</a></li>
                <li><a href="#">찾아오시는길</a></li>
            </ul>
        </li>
			
        <li>
            <a href="#">커뮤니티</a>
            <ul>
                <li><a href="#">방명록</a></li>
                <li><a href="<%=cp%>/bbs/list">게시판</a></li>
                <li><a href="#">자료실</a></li>
                <li><a href="#">포토갤러리</a></li>
				<li><a href="#">채팅</a></li>
            </ul>
        </li>

        <li>
            <a href="#">스터디룸</a>
        </li>

        <li>
            <a href="#">고객센터</a>
            <ul>
                <li><a href="#" style="margin-left:150px; " onmouseover="this.style.marginLeft='150px';">자주하는질문</a></li>
                <li><a href="<%=cp%>/notice/list.do">공지사항</a></li>
                <li><a href="<%=cp%>/board/list.do">질문과 답변</a></li>
                <li><a href="#">주요일정</a></li>
                <li><a href="#">이벤트</a></li>
            </ul>
        </li>

        <c:if test="${not empty sessionScope.member}">
        <li>
            <a href="#">마이페이지</a>
            <ul>
                <li><a href="#" style="margin-left:230px; " onmouseover="this.style.marginLeft='230px';">정보확인</a></li>
                <li><a href="#">쪽지</a></li>
                <li><a href="#">일정관리</a></li>
                <li><a href="#">친구관리</a></li>
                <li><a href="#">사진첩</a></li>
            </ul>
        </li>
        </c:if>
			
        <li style="float: right;"><a href="#"><span style="font-size: 17px; font-weight: 700;">▦</span></a></li>

    </ul>      
      </div>
      <div class="header-right">       
          <a href="#">로그인</a>
          <a href="#">회원가입</a>
      </div>
   </div>

</div>
