<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
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
				<table class="table">
					<thead>
						<tr>
							<th colspan="2">${dto.depth>0?"[Re] ":""}${dto.subject }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="50%" align="left" style="padding-left: 5px;">아이디
								: ${dto.userId}</td>
							<td width="50%" align="right" style="padding-right: 5px;">
								${dto.created } | 조회 ${dto.hitCount }</td>
						</tr>
						<tr>
							<td colspan="2" align="left" style="padding: 10px 5px;"
								valign="top" height="200">${dto.content }</td>
						</tr>
						<tr>
							<td colspan="2" align="left" style="padding-left: 5px;">
								다음글:
								<c:if test="${not empty nextReadDto}">
									<a href="<%=cp%>/review/article.do?${query}&boardNum=${nextReadDto.boardNum}">${nextReadDto.subject}</a>
								</c:if>
								</td>
						</tr>
						<tr>
							<td colspan="2" align="left" style="padding-left: 5px;">
								이전글:
								<c:if test="${not empty preReadDto}">
									<a href="<%=cp%>/review/article.do?${query}&boardNum=${preReadDto.boardNum}">${preReadDto.subject}</a>
								</c:if>
								</td>
						</tr>
					</tbody>
				</table>
				<table
					style="width: 100%; margin: 0px auto 20px; border-spacing: 0px;">
					<tr height="45">
						<td width="300" align="left">
						<c:if test="${sessionScope.member.userId==dto.userId || sessionScope.member.userId=='admin'}">
								<button type="button" class="btn btn-default"
									onclick="javascript:location.href='<%=cp%>/review/reply.do?boardNum=${dto.boardNum}&page=${page}';">답변</button>
						</c:if>
							<c:if test="${sessionScope.member.userId == dto.userId}">
								<button type="button" class="btn btn-default"
									onclick="javascript:location.href='<%=cp%>/review/update.do?boardNum=${dto.boardNum}&${query}';">수정</button>
							</c:if><c:if test="${sessionScope.member.userId==dto.userId || sessionScope.member.userId=='admin'}">
								<button type="button" class="btn btn-default"
									onclick="deleteBoard('${dto.boardNum}');">삭제</button>
							</c:if> </td>

						<td align="right">
							<button type="button" class="btn btn-default"
								onclick="javascript:location.href='<%=cp%>/user/list?${query}';">리스트</button>
						</td>
					</tr>
				</table>
			</div>
		
	</div>
</div>