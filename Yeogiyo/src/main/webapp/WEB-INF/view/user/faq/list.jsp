<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<script type="text/javascript">
function updateFaq(faqNum) {
	<c:if test="${sessionScope.member.userId=='admin'}">
		var url="<%=cp%>/user/faq/update?faqNum="+faqNum;
		location.href=url;
	</c:if>
	<c:if test="${sessionScope.member.userId!='admin'}">
		alert("게시물을 수정할 수 없습니다.");
	</c:if>
}
$(function() {
	$("body").on("click", ".deleteFaq", function() {
		<c:if test="${sessionScope.member.userId=='admin'}">
			if(! confirm("게시물을 삭제하시겠습니까?")) {
				return false;
			}
			
			var faqNum=$(this).attr("data-faqNum");
			var url="<%=cp%>/user/faq/delete";
			var query="faqNum="+faqNum;
			var deleteclass=".tr"+faqNum;
			
			$.ajax({
				type:"post"
				,url:url
				,data:query
				,dataType:"json"
				,success:function(data) {
					var state=data.state;
					if(state="true") {
						alert("게시물을 삭제하였습니다.");
						$(deleteclass).remove();
					} else {
						alert("게시물을 삭제에 실패하였습니다.");
					}
				}
				,error:function(e) {
					console.log(e.responseText);
				}
			});
		</c:if>
		<c:if test="${sessionScope.member.userId!='admin'}">
			alert("게시물을 삭제할 수 없습니다.");
		</c:if>
	});
});

$(function() {
	$("body").on("click", ".faqTitle", function() {
		
		var $div = $(this).closest("tr").next().find("div");

		var isVisible=$div.is(":visible");
		if(isVisible) {
			$div.hide().delay(1000);
		} else {
			$div.show().delay(1000);
		}
	});
	
});

</script>
<div class="container">
	<div style="margin: 0px auto; padding-top: 70px; width: 800px; margin-bottom:200px">
		<div class="mainform">
			<span style="font-weight: bold; font-size: 30px;">FAQ</span>
		</div>

		<div>
			<div class="panel panel-default">
				<div class="panel-body">
					<table style="  border-collapse: separate; border-spacing: 0 5px;">
						<tbody>
						<c:forEach var="dto" items="${list }">
							<tr class="tr${dto.faqNum }">
								<td>
								<c:if test="${sessionScope.member.userId!='admin' }">
									<button type="button" class="btn btn-default faqTitle" style="width:770px;">
										<div align="left">
											${dto.faqTitle }
										</div>
									</button>
								</c:if>
								<c:if test="${sessionScope.member.userId=='admin' }">
									<button type="button" class="btn btn-default faqTitle" style="width:650px;">
										<div align="left">
											${dto.faqTitle }
										</div>
									</button>
									<button type="button" class="btn" onclick="updateFaq(${dto.faqNum})">수정</button>
									<button type="button" class="btn deleteFaq" data-faqNum="${dto.faqNum }">삭제</button>
								</c:if>
								</td>
							</tr>
							<tr class="tr${dto.faqNum }">
								<td>
									<div style="width:700px; text-align: left; display: none; margin:10px; margin-top:0;"  class="faqContent">
									${dto.faqContent }
									</div>
								</td>
							</tr>
							
						</c:forEach>	
						</tbody>
					</table>
					<div style="margin-top:20px;">
					<c:if test="${sessionScope.member.userId=='admin' }">
					<button type="button" class="btn btn-default btn-sm" 
						onclick="javascript:location.href='<%=cp%>/user/faq/created';">
						FAQ 작성</button>
					</c:if>
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>

