<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
</script>
<div class="container">
	<div style="margin-top:10px;">
		<strong style="font-size:30px">문의사항</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
	</div>
	<table style="margin-bottom:10px; width:100%;">
		<tr>
			<td>${dataCount }개(${page}/${total_page } 페이지)</td>
			<td align="right">
			<form name="searchForm" action="" method="post">
				<select name="codition" style="height:30px;">
					<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
					<option value="qnaTitle" ${condition=="qnaTitle"?"selected='selected'":"" }>제목</option>
					<option value="qnaCreated" ${condition=="qnaCreated"?"selected='selected'":"" }>내용</option>
					<option value="userId" ${condition=="userId"?"selected='selected'":"" }>아이디</option>
				</select>
 				<input type="text" name="keyword" style="height:30px;" placeholder="문의사항 검색" value="${keyword }">
 				<button type="button" class="btn" onclick="hotSearch()">검색</button>
			</form>
			</td>
		</tr>
	</table>
	<div style="width:100%;" >
		<table style="width:100%; margin-left:auto; margin-right:auto;" >
			<tr style="border-bottom: 2px solid gray;">
				<th style="width:10%">번호</th>
				<th style="width:70%">제목</th>
				<th style="width:10%">작성자</th>
				<th style="width:10%">작성일</th>
			</tr>
			<c:forEach var="dto" items="${list }" >
			<tr style="border-bottom: 1px solid gray;">
				<td style="padding:3px;">${dto.rnum }</td>
				<td style="padding:3px;"><a href="#">${dto.qnaTitle }</a></td>
				<td style="padding:3px;">${dto.userId }</td>
				<td style="padding:3px;">${dto.qnaCreated }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<table style="width:100%; margin-bottom:15px;">
		<tr>
			<td align="center">
				<c:if test="${dataCount==0 }">
					등록된 호텔 명소가 없습니다.
				</c:if>
				<c:if test="${dataCount!=0 }">
					${paging }
				</c:if>
			</td>
		</tr>
	</table>
</div>