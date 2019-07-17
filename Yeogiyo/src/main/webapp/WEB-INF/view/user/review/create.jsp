<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<style type="text/css">
.reviewCreate {
		width:750px;
		text-align:center;
		height: 850px;
		background:#FCF8E3;
		margin:30px auto;
		padding:10px;
		
}
.noresize {
	resize: none; 
}

.reviewCreateIn {
	margin:20px auto;
	padding-top:60px;
	border:1px solid black;
	width:90%;
	height:90%;
}
</style>

<div class="body-container">
	<div style="padding-top:5px; padding-bottom: 50px; text-align:center;">
		<div class="reviewAbout">
				<h2> 호텔 이름 </h2>
				<h4> 방이름 </h4>
			</div>
		<div class="reviewCreate">
			<div class="reviewCreateIn">
				<h3>리뷰 작성하기</h3>	
				<form action="<%=cp%>/user/review/create" name="reviewCreateForm" method="post">
					<p>제목 </p>
					<p><input type="text" name="reviewTitle" style="width:550px;"></p>
					<p>내용 </p>
					<p><textarea rows="15" cols="75" class="noresize"></textarea></p>
					<p>★평점★ (0~10) </p>
					<p>
						<select name="score">
							<c:forEach varStatus="s" begin="1" end="10">
								<option value="${s}">${s.index}</option>
							</c:forEach>
						</select>
					</p>
					<p><button type="submit">글 작성하기</button></p>
				</form>
			</div>
		</div>
	</div>
</div>