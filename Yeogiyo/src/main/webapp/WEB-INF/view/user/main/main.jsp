<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
	$(function() {
		$("#form-sday").datepicker({
			showMonthAfterYear : true
		});
		$("#form-eday").datepicker({
			showMonthAfterYear : true
		});
	});
</script>




<div class="container">
	
	<div id="mainsearch" style="margin-top: 30px; height: 500px;">
		<div
			style="width: 500px; margin: 60px; margin-bottom: 10px; min-height: 330px; border: 1px solid yellow; background-color: white;">
			<form action="<%=cp%>/user/hotel/list" method="post"
				name="searchForm">
				<div style="margin: 20px;">
					<div>
						<label><b>여행지</b></label>
					</div>
					<div style="margin-top: 10px;">
						<input
							style="width: 430px; height: 40px; border: 1px solid #ccc; border-radius: 4px;"
							type="text" placeholder="가고싶은 여행지를 입력해주세요" name="place"
							required="required">
					</div>
				</div>
				<div style="margin: 20px;">
					<div>
						<label><b>체크인 날짜</b></label> <span style="margin-right: 140px;"></span>
						<label><b>체크 아웃 날짜</b></label>
					</div>
					<div style="margin-top: 10px;">
						<input type="text" name="checkinday" id="form-sday"
							readonly="readonly"
							style="width: 200px; height: 40px; border: 1px solid #ccc; border-radius: 4px;">

						<span style="margin-right: 20px;"></span> <input type="text"
							name="checkoutday" id="form-eday" readonly="readonly"
							style="width: 200px; height: 40px; border: 1px solid #ccc; border-radius: 4px;">
					</div>
				</div>

				<div style="margin: 20px;">
					<div>
						<label><b>인원</b></label>
					</div>
					<div style="margin-top: 10px;">
						<select
							style="width: 200px; height: 40px; border: 1px solid #ccc; border-radius: 4px;"
							name="pnum">
							<option>인원수 선택</option>
							<option value="1">성인1명</option>
							<option value="2">성인2명</option>
							<option value="4">성인4명</option>
							<option value="0">4명이상</option>
						</select> <span style="margin-right: 30px;"></span>
						<button type="submit"
							style="width: 200px; height: 40px; background-color: #4CAF50; border: none; border-radius: 4px;">
							<b>검색</b>
						</button>
					</div>
				</div>
				<div style="margin: 20px;">
					<a href="#" id="option">추가 옵션 선택</a>
				</div>
			</form>
		</div>
		<div
			style="width: 500px; margin-left: 60px; min-height: 60px; border: 1px solid yellow; background-color: white;">
			<div style="margin: 5px; margin-left: 20px;">
				<b>인기 여행지 : </b>
			</div>
		</div>
	</div>
</div>
