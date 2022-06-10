<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<hr/>
	<div class="row">
		<div class="col-md-10">
			<table class="table table-condensed center">
			<thead>
				<tr>
                	<th width="10%">제목</th>
                	<th width="60%">${readContentBean.content_subject}</th>
            	</tr>
            </thead>
            <tbody>
            	<tr>
                	<td>작성일</td>
                	<td>${readContentBean.content_date}</td>
            	</tr>
                <tr>
                    <td>작성자</td>
                    <td>${readContentBean.content_writer_name }</td>
                </tr>
                <tr>
                    <td colspan="3">
                    <textarea id="board_content" name="board_content" class="form-control" rows="10" style="resize:none" disabled="disabled">${readContentBean.content_text}</textarea>
                    <c:if test="${readContentBean.content_file != null }">
						<div class="form-group">
							<label for="board_file">첨부 이미지</label>
							<img src="${root}upload/${readContentBean.content_file}" width="100%"/>						
						</div>
					</c:if>
                    </td>
                </tr>
            </tbody>
			</table>

            <table class="table table-condensed center">
            	<tr>
                	<td>
                    <span class="form-inline" role="form">
                    ${loginUserBean.user_name}
                    <div class="form-group">
                   		<div class="text-right">
                    		<a href="#" class="btn btn-dark">댓글달기</a>
                    	</div>
                    </div>
                    <textarea id="commentParentText" class="form-control col-lg-12" style="width:100%" rows="4"></textarea>
                    </span>
                    </td>
                </tr>
			</table>
			
			<table class="table table-condensed center">
            	<div class="form-group">
					<div class="text-right">
						<a href="${root}board/main?board_info_idx=${board_info_idx}&page=${page}" class="btn btn-primary">목록보기</a>
						<c:if test="${loginUserBean.user_idx == readContentBean.content_writer_idx}">
							<a href="${root}board/modify?board_info_idx=${board_info_idx}&content_idx=${content_idx}&page=${page}" class="btn btn-info">수정하기</a>
							<a href="${root}board/delete?board_info_idx=${board_info_idx}&content_idx=${content_idx}" class="btn btn-danger">삭제하기</a>
						</c:if>
					</div>
				</div>
            </table>
		</div>
    </div>
    <hr/>
</div>    
        
        
<%-- <div class="container" >
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<div class="form-group">
						<label for="board_writer_name">작성자</label>
						<input type="text" id="board_writer_name" name="board_writer_name" class="form-control" value="${readContentBean.content_writer_name }" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_date">작성날짜</label>
						<input type="text" id="board_date" name="board_date" class="form-control" value="${readContentBean.content_date}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_subject">제목</label>
						<input type="text" id="board_subject" name="board_subject" class="form-control" value="${readContentBean.content_subject}" disabled="disabled"/>
					</div>
					<div class="form-group">
						<label for="board_content">내용</label>
						<textarea id="board_content" name="board_content" class="form-control" rows="10" style="resize:none" disabled="disabled">${readContentBean.content_text}</textarea>
					</div>
					<c:if test="${readContentBean.content_file != null }">
					<div class="form-group">
						<label for="board_file">첨부 이미지</label>
						<img src="${root}upload/${readContentBean.content_file}" width="100%"/>						
					</div>
					</c:if>
					<div class="form-group">
						<div class="text-right">
							<a href="${root}board/main?board_info_idx=${board_info_idx}&page=${page}" class="btn btn-primary">목록보기</a>
							<c:if test="${loginUserBean.user_idx == readContentBean.content_writer_idx}">
								<a href="${root}board/modify?board_info_idx=${board_info_idx}&content_idx=${content_idx}&page=${page}" class="btn btn-info">수정하기</a>
								<a href="${root}board/delete?board_info_idx=${board_info_idx}&content_idx=${content_idx}" class="btn btn-danger">삭제하기</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div> --%>
</section>

<!-- 하단 부분 -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script> 
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>
