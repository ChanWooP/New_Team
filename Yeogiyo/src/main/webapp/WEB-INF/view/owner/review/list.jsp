<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<style>
.modal{
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0,0,0); /* Fallback color */
	background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

.modal-content {
	background-color: #fefefe;
	margin: 10% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 23%; /* Could be more or less, depending on screen size */  
	height: 40%;  

	                       
}

.modal-content label{
	color:gray;
}

.modal-content h2{
	text-align:center;
}
</style>

<script type="text/javascript">

function hotSearch(){
	var f = document.searchForm;
	f.submit();
}

function article(reviewNum){
	
	var query = "?reviewNum="+reviewNum;
	query += "&page=${page}&condition=${condition}&keyword=${keyword}";
	
	location.href = "<%=cp%>/owner/review/article"+query;
}

function report(){
	var reviewNum = $("#reviewNum").val();
	var reportcontent = $("#reportcontent").val();
	
	var query = "?reviewNum="+reviewNum+"&reportContent="+reportcontent;
	query += "&page=${page}&condition=${condition}&keyword=${keyword}";
	
	location.href = "<%=cp%>/owner/review/report"+query;
}

function closes(){
	$("#Modal").hide();
}

$(function(){
	$("body").on("click",".report", function(){
		var reviewNum = $(this).parent().children().first().val();
		$("#reviewNum").val(reviewNum);
		$("#reportcontent").val("");
		$("#Modal").show();
	});
});
</script>
<div class="container">
	<div style="width:100%; margin:0 auto; padding-top:30px;">
		 <h1><span class="glyphicon glyphicon-comment"></span>&nbsp;<b>리뷰</b></h1>
	</div>
	<div style="border:1px solid gray; padding:10px; border-radius:20px; margin-bottom:10px;">
		<table style="margin-bottom:10px; width:100%;">
			<tr>
				<td>${dataCount }개(${page}/${total_page } 페이지)</td>
				<td align="right">
				${msg }
				<form name="searchForm" action="<%=cp%>/owner/review/list" method="post">
					<select name="condition" style="height:30px;">
						<option value="all" ${condition=="all"?"selected='selected'":"" }>모두</option>
						<option value="reviewTitle" ${condition=="reviewTitle"?"selected='selected'":"" }>제목</option>
						<option value="reviewCreated" ${condition=="reviewCreated"?"selected='selected'":"" }>작성일</option>
						<option value="userId" ${condition=="userId"?"selected='selected'":"" }>아이디</option>
					</select>
	 				<input type="text" name="keyword" style="height:30px;" placeholder="리뷰 검색" value="${keyword }">
	 				<button type="button" class="btn" onclick="hotSearch()">검색</button>
				</form>
				</td>
			</tr>
		</table>
		<div style="width:100%; margin:0 auto; padding:10px; margin-top:10px;" >
			<table style="width:100%; margin-left:auto; margin-right:auto;" >
				<tr style="border-bottom: 2px solid gray;">
					<th style="width:10%;">번호</th>
					<th style="width:50%;">제목</th>
					<th style="width:15%; text-align:center;">작성자</th>
					<th style="width:15%; text-align:center;">작성일</th>
					<th style="width:10%; text-align:center;">신고</th>
				</tr>
				<c:forEach var="dto" items="${list }" >
				<tr style="border-bottom:1px solid gray;">
					<td style="width:10%;">${dto.rnum }</td>
					<td style="width:50%"><a style="cursor:pointer" onclick="article('${dto.reviewNum}')">${dto.reviewTitle}</a></td>
					<td style="width:15%; text-align:center;">${dto.userId}</td>
					<td style="width:15%;text-align:center;">${dto.reviewCreated}</td>
					<td style="width:10%; text-align:center;">
						<input type="hidden" value="${dto.reviewNum }">
						<span style="cursor:pointer" class="glyphicon glyphicon-thumbs-down report"></span>
					</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<table style="width:100%; margin-bottom:15px;">
		<tr>
			<td align="center">
				<c:if test="${dataCount==0 }">
					등록된 호텔 리뷰가 없습니다.
				</c:if>
				<c:if test="${dataCount!=0 }">
					${paging }
				</c:if>
			</td>
		</tr>
	</table>
	</div>
		<div id="Modal" class="modal">
		<div class="modal-content">
			<span class="close" onclick="closes()">&times;</span>
			<div id="report" style="height:100%; overflow: auto;">
				<h3>신고사유</h3>
					<input type="hidden" id="reviewNum">
					<textarea id="reportcontent" rows="11" cols="45">
					</textarea>
					<p><button type="button" class="btn" id="reportAdd" onclick="report()">작성</button></p>
			</div>
		</div>
	</div>
</div>