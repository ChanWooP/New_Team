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
			<span style="font-weight: bold; font-size: 30px;">FAQ</span>
		</div>
		<form name="boardForm" method="post">
		<table
			style="width: 100%; margin: 20px auto 0px; border-spacing: 0px;">
			<tr>
				<td width="80" valign="top"
					style="text-align: right; padding-top: 5px;"><label
					style="font-weight: 900;">질문</label></td>
				<td style="padding: 0 0 15px 15px;">
					<p style="margin-bottom: 5px;">
						<input type="text" name="" id="" value=""
							style="width: 95%;" maxlength="15" class="boxTF">
					</p>
				</td>
			</tr>

			<tr>
				<td width="80" valign="top"
					style="text-align: right; padding-top: 5px;"><label
					style="font-weight: 900;">답변</label></td>
				<td style="padding: 0 0 15px 15px;">
					<p style="margin-bottom: 10px;">
						<textarea name="summary" rows="15" class="boxTA"
							style="width: 95%;"></textarea>
					</p>
				</td>
			</tr>
		</table>
		<table style="width: 100%; margin: 0px auto; margin-top: 10px;">
			<tr height="45">
				<td align="center">
					<button type="button" class="btn btn-default" onclick="sendFaq();">${mode=='update'?'수정완료':'등록하기'}</button>
					<button type="reset" class="btn btn-default">다시입력</button>
					<button type="button" class="btn btn-default"
						onclick="javascript:location.href='<%=cp%>/user/faq/list';">${mode=='update'?'수정취소':'등록취소'}</button>
				</td>
			</tr>
		</table>
	</form>
	</div>
	
</div>
