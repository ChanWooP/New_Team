<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function sendBbs() {
	var f=document.bbsForm;
	var s=f.subject.value;
	if(! s) {
		alert("제목을 입력하세요");
		f.subject.focus();
		return;
	}
	s=f.content.value;
	if(! s) {
		alert("내용을 입력하세요");
		f.content.focus();
		return;
	}
	f.action="<%=cp%>/user/bbs/${mode}";
	f.submit();
}
</script>
<div class="container">
	<div style="margin: 0px auto; padding-top: 30px; margin-bottom:100px;">
		<div class="page-header">
		    <h1><span class="glyphicon glyphicon-comment"></span>&nbsp;<b>자유게시판</b></h1>      
		</div>
		<div style="margin-top: 0">
			<div class="panel panel-default">
				<div class="panel-body">
					<form name="bbsForm" method="post">
						<table
							style="width: 100%; margin: 20px auto 0px; border-spacing: 0px;">
							<tr>
								<td width="80" valign="top"
									style="text-align: right; padding-top: 5px;"><label
									style="font-weight: 900;">제목</label></td>
								<td style="padding: 0 0 15px 15px;">
									<p style="margin-bottom: 5px;">
										<input type="text" name="subject" value="${dto.subject }" style="width: 95%;"
											maxlength="100" class="boxTF">
									</p>
								</td>
							</tr>
							<tr>
								<td width="80" valign="top"
									style="text-align: right; padding-bottom: 5px;"><label
									style="font-weight: 900;">작성자</label></td>
								<td style="padding: 0 0 15px 15px;">
									<p style="margin-bottom: 5px;">${sessionScope.member.userId }</p>
								</td>
							</tr>
		
							<tr>
								<td width="80" valign="top"
									style="text-align: right; padding-top: 5px;"><label
									style="font-weight: 900;">내용</label></td>
								<td style="padding: 0 0 15px 15px;">
									<p style="margin-bottom: 10px;">
										<textarea name="content" rows="15" class="boxTA"
											style="width: 95%;">${dto.content }</textarea>
									</p>
								</td>
							</tr>
						</table>
						<table style="width: 100%; margin: 0px auto; border-spacing: 0px;">
							<tr height="40">
								<td align="center"><c:if test="${mode=='update'}">
										<input type="hidden" name="num" value="${dto.num}">
										<input type="hidden" name="page" value="${page}">
										<input type="hidden" name="condition" value="${condition}">
										<input type="hidden" name="keyword" value="${keyword}">
									</c:if> 
									<button type="button" class="btn btn-default" onclick="sendBbs();">${mode=='update'?'수정완료':'등록하기'}</button>
									<button type="reset" class="btn btn-default">다시입력</button>
									<button type="button" class="btn btn-default"
										onclick="javascript:location.href='<%=cp%>/user/bbs/list';">${mode=='update'?'수정취소':'등록취소'}</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>		
		</div>

	</div>
</div>