<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- contextPath를 포함한 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />


<!-- Navigation-->
<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="${root}pic_main">SHOWDOWN | 커뮤니티</a>
		<button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		Menu
		<i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
        	<ul class="navbar-nav ms-auto">
            	<li class="nav-item dropdown mx-0 mx-lg-1">
                	<a class="nav-link dropdown-toggle py-3 px-0 px-lg-3 rounded" href="#" data-bs-toggle="dropdown" aria-expanded="false">크루소개</a>
                    	<ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            				<li><a class="dropdown-item" href="${root}info/showdownInfo">쇼다운</a></li>
            				<li><a class="dropdown-item" href="${root}info/SWFInfo">스트리트우먼파이터</a></li>
            			</ul>
            	</li>
            	<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${root}main">커뮤니티</a></li>
                        
            	<c:choose>
					<c:when test="${loginUserBean.userLogin == true }">		
						<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${root}user/modify">정보수정</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${root}user/logout">로그아웃</a></li>
					</c:when>
					<c:otherwise>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${root}user/login">로그인</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="${root}user/join">회원가입</a></li>
                    </c:otherwise>
                </c:choose>
                
			</ul>
        </div>
	</div>
</nav>
        
        
