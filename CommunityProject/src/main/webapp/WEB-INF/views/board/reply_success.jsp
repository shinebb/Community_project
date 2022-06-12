<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- contextPath를 포함한 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<script>
	alert("댓글을 달았습니다.")
	location.href = "${root}board/read?board_info_idx=${replyContentBean.reply_board_idx}&content_idx=${replyContentBean.reply_content_idx}&page=${page}"
</script>