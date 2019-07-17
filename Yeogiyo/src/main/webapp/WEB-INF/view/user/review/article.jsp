<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">
function reviewDeleteBtn(){
	var reviewNum=$(this).attr("data-reviewNum");
	
}

function reviewUpdateBtn(){
	var reviewNum=$(this).attr("data-reviewNum");
	$("button[name=reviewUpdateBtn]").val(reviewNum);
	$("button[name=reviewUpdateBtn]").submit();
}
</script>
<style type="text/css">

.reviewBtn {
	padding-bottom : 10px;
	float:right;
}

.reviewReply{
	border-bottom:2px solid #eeeeee;
	text-align:center;
	width: 100%;
	height: 200px;
	padding: 11px 20px auto;
	margin-top:50px;
	background: #f7f7f7;
	margin-bo
}
.reviewReply > button {
 	float:right;
}

.reviewReplytext{
	resize: none;
}

.reviewReplyList{
	border-top:2px solid #eeeeee;
	text-align:center;
	width: 100%;
	height: 200px;
	padding: 11px 26px auto;
	margin-top:50px;
	background: #f7f7f7;
}
</style>
<div class="container" style="width:700px;">
	<div style="padding-top: 10px; padding-bottom: 20px;">
		<div class="page-header">
		    <h1><span class="reviewHeader"></span>&nbsp;<b>리뷰★</b></h1>      
		</div>
		<div class="reviewarticle">
			<table>
				<tr>
					<td>제목 :<td>
					<td>${article.reviewTitle}</td>
				</tr>
				<tr>
					<td>작성일 :<td>
					<td>${article.reviewCreated}</td>
				</tr>
				
				<tr>
					<td>작성자 :<td>
					<td>${article.userName}</td>
				</tr>
				<tr>
					<td>내용 :<td>
					<td>${article.reviewContent}</td>
				</tr>
				<tr>
					<td>평점 :<td>
					<td>${article.score}점</td>
				</tr>
			</table>
		</div>	
			
		<div class="reviewBtn">
			<button type="button" onclick="reviewDeleteBtn()" data-reviewNum="${article.reviewNum}" name="reviewDeleteBtn">리뷰삭제</button>&nbsp;
			<button type="button" onclick="reviewUpdateBtn()" data-reviewNum="${article.reviewNum}" name="reviewUpdateBtn">리뷰수정</button>
			<button type="button" onclick="">답변하기</button>
		</div>
		
		<div class="reviewReplyList">
			<p>글쓴이</p>
			<p><textarea cols="80" rows="5" readonly="readonly" class="reviewReplytext">ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</textarea></p>
			<button>등록</button>
		</div>
		<div class="reviewReply">
			<p>글쓴이</p>
			<p><textarea cols="80" rows="5" class="reviewReplytext"></textarea></p>
			<button>등록</button>
		</div>
	
	</div>
</div>