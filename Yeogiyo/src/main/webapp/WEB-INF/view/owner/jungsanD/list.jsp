<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
	function jungsan() {
		var f = document.formName;
		f.action = "<%=cp%>/owner/jungsanD/insert";
		f.submit();
	}

	function view() {
		var f = document.formName;
		f.action = "<%=cp%>/owner/jungsanD/list";
		f.submit();
	}
	
	function excel() {
		var f = document.formName;
		f.action = "<%=cp%>/owner/jungsanD/excel";
		f.submit();
	}
	
	$(function() {
		$("#form-sday").datepicker({
			showMonthAfterYear : true
		});
	});
	
	$(function(){
		var url = "<%=cp%>/owner/jungsanD/bar";
		var day = "day=${day}";
		$.getJSON(url, day, function(data){
			$("#barContainer").highcharts({
				chart:{
					type:"column"
				},
				title:{
					text:"일별 매출"
				},
				xAxis:{
					categories: data.list
				},
				yAxis:{
					title:{
						text:"매출(￦)"
					}
				},
				series:data.series
			});
		});
	});
	
	$(function(){
		var url = "<%=cp%>/owner/jungsanD/bar2";
		var day = "day=${day}";
		$.getJSON(url, day, function(data) {
			$("#barContainer2").highcharts({
				chart : {
					type : "column"
				},
				title : {
					text : "일별 방문객수"
				},
				xAxis : {
					categories : data.list
				},
				yAxis : {
					title : {
						text : "인원(명)"
					}
				},
				series : data.series
			});
		});
	});
</script>
<div class="container">
	<div style="width: 100%; margin: 0 auto; padding-top: 10px;">
		<strong style="font-size: 30px">일일정산</strong>
		<hr
			style="width: 100%; color: black; height: 1px; background-color: black; margin-top: 0px; margin-bottom: 10px" />
	</div>
	<div style="width: 100%; margin: 0 auto;">
		<div style="float: right;">
			<form action="" name="formName">
				<strong>${msg }</strong> <input type="text" name="day"
					id="form-sday" readonly="readonly" value="${day }"
					style="text-align: center; width: 100px; height: 30px; border: 1px solid #ccc; border-radius: 4px;">
				<button type="button" class="btn btn-sm" onclick="view()">보기</button>
				<button type="button" class="btn btn-sm" onclick="jungsan()">정산</button>
				<button type="button" class="btn btn-sm" onclick="excel()">엑셀</button>
			</form>
		</div>
		<table style="width: 100%; margin-left: auto; margin-right: auto;">
			<tr style="border-bottom: 2px solid gray;">
				<th style="width: 13%; text-align: center">결제일</th>
				<th style="width: 30%; text-align: center">방이름</th>
				<th style="width: 10%; text-align: center">결제종류</th>
				<th style="width: 10%; text-align: center">인원수</th>
				<th style="width: 13%; text-align: center">체크인</th>
				<th style="width: 13%; text-align: center">체크아웃</th>
				<th style="width: 11%; text-align: center">금액</th>
			</tr>
		</table>
	</div>
	<div
		style="width: 100%; height: 300px; margin: 0 auto; overflow: auto;">
		<table style="width: 100%; margin-left: auto; margin-right: auto;">

			<c:forEach var="dto" items="${list }">
				<tr
					style="border-bottom: 1px solid gray; background-color:${dto.num%2 == 0?'#FFFFFF':'#E6E6E6'};">
					<td style="width: 13%; text-align: center;">${dto.payDate }</td>
					<td style="width: 30%; text-align: left;">&nbsp;${dto.roomName }</td>
					<td style="width: 10%; text-align: center;">${dto.payType }</td>
					<td style="width: 10%; text-align: center;">${dto.peopleCount }</td>
					<td style="width: 13%; text-align: center;">${dto.checkinDay }</td>
					<td style="width: 13%; text-align: center;">${dto.checkoutDay }</td>
					<td style="width: 11%; text-align: right;">￦${dto.price }&nbsp;</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<c:if test="${sum == 0}">
		<div style="width: 100%; text-align: center;">정산자료가 존재하지 않습니다.</div>
	</c:if>
	<c:if test="${sum != 0}">
		<div style="width: 100%; text-align: right;">
			<strong>총금액 : ￦${sum }</strong>
		</div>
	</c:if>
	<div style="clear: both;">
		<div id="barContainer"
			style="width: 100%; height: 300px; margin: 10px;"></div>
	</div>
	<div style="clear: both;">
		<div id="barContainer2"
			style="width: 100%; height: 300px; margin: 10px;"></div>
	</div>
</div>