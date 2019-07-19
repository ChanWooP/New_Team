<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">
$(function(){
	$(".reviewCreateBtn").click(function(){
		var userId="${sessionScope.member.userId}";
		if(! userId){
			location.href ="<%=cp%>/user/member/login";
			return false;
		}
		var hotelId = $(this).attr("data-hotelId");
		var userId=userId;
		var reviewNum = $(this).attr("data-reviewNum");	
		var $tb = $(this).closest("div");
		var replyContent=$tb.find("textarea").val().trim();
		if(! replyContent) {
			$tb.find("textarea").focus();
			return false;
		}
		content = encodeURIComponent(content);
		
		var query="reviewNum="+reviewNum+"&replyContent="+replyContent;
		var url="<%=cp%>/user/review/replycreate";
		$.ajax({
			type:"post"
			,url:url
			,data:query
			,dataType:"json"
			,success:function(data) {
				$tb.find("textarea").val("");
				
				var state=data.state;
				if(state=="true") {
					alert("댓글을 추가 하였습니다.");
				} else if(state=="false") {
					alert("댓글을 추가 하지 못했습니다.");
				}
			}
			,beforeSend : function(jqXHR) {
		        jqXHR.setRequestHeader("AJAX", true);
			}
		});
		
	});
});

</script>
<style type="text/css">

.reviewarticle{
	margin: 0 auto;
}
.reviewBtn {
	padding-bottom : 10px;
	float:right;
}

.reviewReply{
	border-bottom:2px solid #eeeeee;
	text-align:center;
	width: 100%;
	height: 200px;
	padding: 11px 10px auto;
	margin-top:50px;
	background: #f7f7f7;
	margin-bo
}
.reviewReply > button {
 	float:right;
}
.reviewReply >textarea {
	padding-top:10px;
}
.reviewReplytext{
	resize: none;
}

.reviewReplyList{
	border-top:2px solid #eeeeee;
	text-align:center;
	width: 100%;
	height: 150px;
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
			<button type="button" class="reviewDeleteBtn" data-reviewNum="${article.reviewNum}" name="reviewDeleteBtn">리뷰삭제</button>&nbsp;
			<button type="button" class="reviewUpdateBtn" data-reviewNum="${article.reviewNum}" name="reviewUpdateBtn">리뷰수정</button>
		</div>
		
		<div class="reviewReplyList">
			<table class="reviewReplyListtable">
				<tr>
					<td>글쓴이</td>
					<td>ㅁㅁㅁ</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea cols="70" rows="5">굿굿굿</textarea></td>
				</tr>
			</table>
			
			<div class="reviewReply">
				<p><textarea cols="50" rows="5" class="reviewReplytext"></textarea></p>
				<button type="button" class="reviewCreateBtn" data-reviewNum="${article.reviewNum}">댓글등록</button>
			</div>
		</div>
	</div>
</div>