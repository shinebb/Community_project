<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- contextPath를 포함한 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>쇼다운 | 커뮤니티</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../assets/jtbc_logo.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../css/styles.css" rel="stylesheet" />
</head>
<body>

<!-- 상단 메뉴 부분 -->
<c:import url="/WEB-INF/views/include/top_menu.jsp"/>

<section class="page-section" style="margin-top:7rem;">
<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root}board/modify_pro" method="post" modelAttribute="modifyContentBean" enctype="multipart/form-data">
						<form:hidden path="content_idx"/>
						<form:hidden path="content_board_idx"/>
						<input type="hidden" name="page" value="${page}" />
						<div class="form-group">
							<form:label path="content_writer_name">작성자</form:label>
							<form:input path="content_writer_name" class="form-control" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="content_date">작성날짜</form:label>
							<form:input path="content_date" class="form-control" readonly="true"/>
						</div>
						<div class="form-group">
							<form:label path="content_subject">제목</form:label>
							<form:input path="content_subject" class="form-control" />
							<form:errors path="content_subject" style="color:red"/>
						</div>
						<div class="form-group">
							<form:label path="content_text">내용</form:label>
							<form:input path="content_text" class="form-control" rows="10" style="resize:none" />
							<form:errors path="content_text" style="color:red"/>
						</div>
						<div class="form-group">
							<label for="board_file">첨부 이미지</label>
							<c:if test="${modifyContentBean.content_file != null }">
								<img src="${root}upload/${modifyContentBean.content_file}" width="100%"/>
								<form:hidden path="content_file"/>
							</c:if>	
							<form:input path="upload_file" type="file" class="form-control" accept="image/*" />
						</div>
						<div class="form-group">
							<div class="text-right">
								<form:button class="btn btn-primary">수정완료</form:button>
								<a href="${root}board/read?board_info_idx=${board_info_idx}&content_idx=${content_idx}&page=${page}" class="btn btn-info">취소</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
</section>

<!-- 하단 부분 -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script> 
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>
