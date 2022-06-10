<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- contextPath를 포함한 절대경로 -->
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>쇼다운 | 커뮤니티</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/jtbc_logo.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
    
    <!-- 상단 메뉴 부분 -->
	<c:import url="/WEB-INF/views/include/top_menu.jsp"/>
        
        
        <!-- Services-->
        <section class="page-section bg-light" id="services" style="margin-top:3rem;">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase" style="margin-top:7rem;" >WElCOME TO SHOWDOWN</h2>
                    <h3 class="section-subheading text-muted">쇼다운 커뮤니티에 오신걸 환영합니다!</h3>
                </div>
            </div>
            <div class="container" style="margin-top:10rem; margin-bottom: 3rem;">
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">크루소개</h4>
                        <p class="text-muted">2021 스우파를 시작으로 댄서들을 위한 방송이 많이 생겼습니다. 프로그램 위주로 참가크루들을 소개합니다. </p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">커뮤니티 게시판</h4>
                        <p class="text-muted">쇼다운 커뮤니티는 댄스와 댄서를 좋아하는 사람들이 소통하는 공간입니다. 춤이라는 공감대 하나로 함께하는 커뮤니티 함께해요.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">응원해요</h4>
                        <p class="text-muted">브레이킹이 2022 아시안게임을 시작으로 2024 올림픽까지 정식종목으로 채택 되었습니다. 브레이킹 국가대표들을 위해 함께 응원해요.</p>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- Masthead-->
        <header class="masthead text-white text-center">
            <div class="container d-flex align-items-center flex-column">
            	<img class="img-fluid" src="assets/img/header-bg.jpg" alt="..." />
            	<img class="img-fluid" src="assets/img/header-bg2.jpg" alt="..." />
                <!-- <div class="masthead-subheading">Welcome To Our ShowDown!</div>
                <div class="masthead-heading text-uppercase">당신의 크루에게 투표하세요</div>
                <a class="btn btn-primary btn-xl text-uppercase" href="#services">크루 확인하기</a> -->
            </div>
        </header>
        
<!-- 하단 부분 -->
<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
       
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
