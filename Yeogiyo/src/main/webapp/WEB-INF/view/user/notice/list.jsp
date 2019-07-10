<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>

<div class="container">
	<div style="margin: 0px auto; padding-top: 70px; width: 800px; margin-bottom:100px;">
		<div class="mainform">
			<span style="font-weight: bold; font-size: 30px;">Notice</span>
		</div>

		<div>
			<div class="panel panel-default">
				<div class="panel-body">
					<table
							style="width: 100%; margin: 5px auto 0px; border-spacing: 0px;">
							<tr height="10">
								<td align="left" width="50%">
									${dataCount}개(${page}/${total_page} 페이지)</td>
								<td align="right">&nbsp;</td>
							</tr>
						</table>
						<table class="table">
							<thead>
								<tr>
									<th width="80">번호</th>
									<th>제목</th>
									<th width="100">작성일</th>
									<th width="60">공지</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="dto" items="${list }">
									<tr>
										<td>${dto.listNum }</td>
										<td>
										<a href="${articleUrl }&boardNum=${dto.boardNum}">${dto.subject }</a>
										</td>
										<td>${dto.userId }</td>
										<td>${dto.created }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<table style="width: 100%; margin: 0px auto; border-spacing: 0px;">
							<tr height="35">
								<td align="center">${dataCount!=0 ? paging : "등록된 게시물이 없습니다." }
								</td>
							</tr>
						</table>
					</div>
				</div>

				<table style="width: 100%; margin: 10px auto; border-spacing: 0px;">
					<tr height="40">
						<td align="right" width="100">
							<button type="button" class="btn btn-default btn-sm"
								onclick="javascript:location.href='<%=cp%>/user/notice/created';">
								Notice 작성
								</button>
						</td>
					</tr>
				</table>

			</div>
		</div>
	</div>


