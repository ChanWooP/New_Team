<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="body-container">
	<div style="margin: 0px auto; padding-top: 70px; width: 800px;">
		<div class="mainform">
			<span style="font-weight: bold; font-size: 30px;">Q&A</span>
		</div>
		<div>
			<form name="boardForm" method="post">
				<table
					style="width: 100%; margin: 20px auto 0px; border-spacing: 0px;">
					<tr>
						<td width="80" valign="top"
							style="text-align: right; padding-top: 5px;"><label
							style="font-weight: 900;">제목</label></td>
						<td style="padding: 0 0 15px 15px;">
							<p style="margin-bottom: 5px;">
								<input type="text" name="" id="" value="" style="width: 95%;"
									maxlength="15" class="boxTF">
							</p>
						</td>
					</tr>
					<tr>
						<td width="80" valign="top"
							style="text-align: right; padding-bottom: 5px;"><label
							style="font-weight: 900;">작성자</label></td>
						<td style="padding: 0 0 15px 15px;">
							<p style="margin-bottom: 5px;">${dto.userId }</p>
						</td>
					</tr>

					<tr>
						<td width="80" valign="top"
							style="text-align: right; padding-top: 5px;"><label
							style="font-weight: 900;">내용</label></td>
						<td style="padding: 0 0 15px 15px;">
							<p style="margin-bottom: 10px;">
								<textarea name="content" rows="15" class="boxTA"
									style="width: 95%;"></textarea>
							</p>
						</td>
					</tr>
				</table>
				<table style="width: 100%; margin: 0px auto; border-spacing: 0px;">
					<tr height="40">
						<td align="center"><c:if test="${mode=='update'}">
								<input type="hidden" name="boardNum" value="${dto.boardNum}">
								<input type="hidden" name="page" value="${page}">
								<input type="hidden" name="condition" value="${condition}">
								<input type="hidden" name="keyword" value="${keyword}">
							</c:if> <c:if test="${mode=='reply' }">
								<input type="hidden" name="groupNum" value="${dto.groupNum }">
								<input type="hidden" name="orderNo" value="${dto.orderNo }">
								<input type="hidden" name="depth" value="${dto.depth }">
								<input type="hidden" name="parent" value="${dto.boardNum }">
								<input type="hidden" name="page" value="${page}">
							</c:if>

							<button type="button" class="btn btn-default" onclick="sendOk();">${mode=='update'?'수정완료':(mode=='reply'? '답변완료':'등록하기')}</button>
							<button type="reset" class="btn btn-default">다시입력</button>
							<button type="button" class="btn btn-default"
								onclick="javascript:location.href='<%=cp%>/user/qna/list';">${mode=='update'?'수정취소':(mode=='reply'? '답변취소':'등록취소')}</button>
						</td>
					</tr>
				</table>
			</form>
		</div>

	</div>
</div>