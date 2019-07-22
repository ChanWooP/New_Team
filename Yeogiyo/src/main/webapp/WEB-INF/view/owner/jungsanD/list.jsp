<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<script type="text/javascript">

function jungsan(){
	var f = document.formInsert;
	f.submit();
}

function view(){
	var f = document.formSelect;
	f.submit();
}

$(function() {
	$("#form-sday").datepicker({
		showMonthAfterYear : true
	});
	$("#form-fday").datepicker({
		showMonthAfterYear : true
	});
});
</script>
<div class="container">
	<div style="width:100%; margin:0 auto; padding-top:10px;">
		<strong style="font-size:30px">정산</strong>
		<hr style="width: 100%; color: black; height: 1px; background-color:black; margin-top:0px; margin-bottom:10px" />
	</div>
	<div style="width:100%; margin:0 auto;">
		<div>
			<div style="float:left;">
			<form action="<%=cp%>/owner/jungsanD/list" name="formSelect">
				<input type="text" name="day" id="form-fday"readonly="readonly" value="${day }"
				style="text-align:center; width: 100px; height: 30px; border: 1px solid #ccc; border-radius: 4px;">
				<button type="button" class="btn btn-sm" onclick="view()">보기</button>
			</form>
			</div>
			<div style="display:inline-block; float:right;">
			<form action="<%=cp%>/owner/jungsanD/insert" name="formInsert">
				<strong>${msg }</strong>
				<input type="text" name="day" id="form-sday"readonly="readonly" value="${day }"
				style="text-align:center; width: 100px; height: 30px; border: 1px solid #ccc; border-radius: 4px;">
				<button type="button" class="btn btn-sm" onclick="jungsan()">정산</button>
			</form>
			</div>
		</div>
		<table style="width:100%; margin-left:auto; margin-right:auto; border:1px solid black;" >
			<tr style="border-bottom: 2px solid gray; background-color:gray;">
				<th style="text-align:center">결제일</th>
				<th style="text-align:center">방이름</th>
				<th style="text-align:center">결제종류</th>
				<th style="text-align:center">인원수</th>
				<th style="text-align:center">체크인</th>
				<th style="text-align:center">체크아웃</th>	
				<th style="text-align:center">금액</th>
			</tr>
			<c:forEach var="dto" items="${list }">
				<tr style="border-bottom: 1px solid gray; ">
					<td style="width:10%; text-align:center;">${dto.payDate }</td>
					<td style="width:40%; text-align:left; border-left:1px solid black;" >&nbsp;${dto.roomName }</td>
					<td style="width:10%; text-align:center; border-left:1px solid black;">${dto.payType }</td>
					<td style="width:10%; text-align:center; border-left:1px solid black;">${dto.peopleCount }</td>
					<td style="width:10%; text-align:center; border-left:1px solid black;">${dto.checkinDay }</td>
					<td style="width:10%; text-align:center; border-left:1px solid black;">${dto.checkoutDay }</td>
					<td style="width:10%; text-align:right; border-left:1px solid black;">￦${dto.price }&nbsp;</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<c:if test="${sum == 0}">
		<div style="width:100%; text-align:center;">정산자료가 존재하지 않습니다.</div>
	</c:if>
		<c:if test="${sum != 0}">
		<div style="width:100%; text-align:right;"><strong>총금액 : ￦${sum }</strong></div>
	</c:if>
</div>