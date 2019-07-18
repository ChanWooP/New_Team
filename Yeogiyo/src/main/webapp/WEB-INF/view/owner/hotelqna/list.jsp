<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">
function hotSearch(){
	var f = document.searchForm;
	f.submit();
}

$(function(){
	$("body").on("click",".qnalist", function(){
		var qnaNum = $(this).next().val();
		var isHidden = $(this).next().next().is(':hidden');
		var $list = $(this).next().next();
		var parentContent = $(this).next().next().next().val();
		var url = "<%=cp%>/owner/hotelqna/lists";
		var query = "qnaNum="+qnaNum;
		$(".qna").hide();
		if(isHidden){
			$(this).next().next().show();
			$.ajax({
				type:"post"
				,url:url
				,data:query
				,dataType:"json"
				,success:function(data){
					$list.empty();
					
					var out = "<p>└<strong>&nbsp;문의</strong></p>";
					$.each(data.list, function(index, item){
						out += "<p>└<strong>답변&nbsp;</strong>"+ item.qnaContent + "</p>"
					});
					$list.html(out);
				}
				,error:function(e){
					console.log(e.responseText);
				}
			});
		} else {
			$(this).next().next().hide();
		}
		
	});
});
</script>
<div class="container">
	<div style="width:100%; margin:0 auto; padding-top:10px;">
		<strong style="font-size:30px">문의사항</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
	</div>
	<table style="margin-bottom:10px; width:80%; margin:auto;">
		<tr>
			<td>${dataCount }개(${page}/${total_page } 페이지)</td>
			<td align="right">
			<form name="searchForm" action="<%=cp%>/owner/hotelqna/list" method="post">
				<select name="condition" style="height:30px;">
					<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
					<option value="qnaTitle" ${condition=="qnaTitle"?"selected='selected'":"" }>제목</option>
					<option value="qnaCreated" ${condition=="qnaCreated"?"selected='selected'":"" }>작성일</option>
					<option value="userId" ${condition=="userId"?"selected='selected'":"" }>아이디</option>
				</select>
 				<input type="text" name="keyword" style="height:30px;" placeholder="문의사항 검색" value="${keyword }">
 				<button type="button" class="btn" onclick="hotSearch()">검색</button>
			</form>
			</td>
		</tr>
	</table>
	<div style="width:80%; margin:0 auto;" >
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
				<td style="padding:3px;">
					<a style="cursor:pointer" class="qnalist">${dto.qnaTitle }</a>
					<input type="hidden" value="${dto.qnaNum }">
					<div class="qna"></div>
					<input type="hidden" value="${dto.qnaContent }">
				</td>
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