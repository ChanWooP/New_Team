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
			<span style="font-weight: bold; font-size: 30px;">EVENT</span>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th colspan="2">${dto.subject}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="50%" align="right" style="padding-right: 5px;">
						${dto.created } | 조회 ${dto.hitCount }</td>
				</tr>
				<tr>
					<td colspan="2" align="left" style="padding: 10px 5px;"
						valign="top" height="200">${dto.content }</td>
				</tr>
				<tr>
					<td colspan="2" align="left" style="padding-left: 5px;">다음글: 
					</td>
				</tr>
				<tr>
					<td colspan="2" align="left" style="padding-left: 5px;">이전글: 
					</td>
				</tr>
			</tbody>
		</table>
		<table
			style="width: 100%; margin: 0px auto 20px; border-spacing: 0px;">
			<tr height="45">
				<td width="300" align="left">
					<c:if test="${sessionScope.member.userId=='admin'}">
						<button type="button" class="btn btn-default"
							onclick="javascript:location.href='<%=cp%>/}';">수정</button>
					</c:if>
					<c:if test="${sessionScope.member.userId=='admin'}">
						<button type="button" class="btn btn-default"
							onclick="deleteEvent('${dto.boardNum}');">삭제</button>
					</c:if>
				</td>

				<td align="right">
					<button type="button" class="btn btn-default"
						onclick="javascript:location.href='<%=cp%>/user/event/list';">리스트</button>
				</td>
			</tr>
		</table>
	</div>
</div>
