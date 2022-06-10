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
	
	<!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio" style="margin-top:5rem;">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">크루 소개</h2>
                    <h3 class="section-subheading text-muted">Let me introduce the crew.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/gamblerz.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">갬블러크루</div>
                                <div class="portfolio-caption-subheading text-muted">GAMBLERZ CREW</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/rivers.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">리버스크루</div>
                                <div class="portfolio-caption-subheading text-muted">RIVERS CREW</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/oneway.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">원웨이크루</div>
                                <div class="portfolio-caption-subheading text-muted">One Way Crew</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/jinjo.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">진조크루</div>
                                <div class="portfolio-caption-subheading text-muted">JINJO CREW</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/fusionMC.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">퓨전엠씨</div>
                                <div class="portfolio-caption-subheading text-muted">FusionMC</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/flowxl.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">플로우엑셀</div>
                                <div class="portfolio-caption-subheading text-muted">FLOWXL</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 7-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal7">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/soulburnz.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">소울번즈</div>
                                <div class="portfolio-caption-subheading text-muted">SOUL BURNZ</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 8-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal8">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="../assets/img/crew/emotion.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">이모션크루</div>
                                <div class="portfolio-caption-subheading text-muted">emotion crew</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">갬블러크루</h2>
                                    <p class="item-intro text-muted">GAMBLERZ CREW</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/gamblerz_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"브레이킹에 인생을 걸었다!"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
                                            테크닉과 대중성 모두를 사로잡은<br/>
                                            브레이킹 씬의 실력파 악동 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">리버스크루</h2>
                                    <p class="item-intro text-muted">RIVERS CREW</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/rivers_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"무브의 리버스화! 음악의 흐름을 표현 한다"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
                                            창단 25주년을 맞은 한국 브레이킹의 뿌리!<br/>
											'전통'과 '멋'을 대표하는 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">원웨이크루</h2>
                                    <p class="item-intro text-muted">One Way Crew</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/oneway_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"ONE WAY! 브레이킹을 향한 일방통행"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
                                            [SHOWDOWN]에 올인! 오직 '춤'을 향해 간다!<br/>
											다채로운 매력과 펑키한 에너지를 발산하는 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">진조크루</h2>
                                    <p class="item-intro text-muted">JINJO CREW</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/jinjo_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"We are JINJO CREW"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
                                            세계 최초! 세계 유일! 브레이킹 대회 그랜드슬램 달성!<br/>
											K-브레이킹을 대표하는 최정상 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">퓨전엠씨</h2>
                                    <p class="item-intro text-muted">FusionMC</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/fusionMC_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"의정부 대표에서 대한민국 대표까지"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
                                            대한민국 1호 국가대표 비보이 소속!<br/>
											브레이킹 루틴으로 전 세계를 평정한 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">플로우엑셀</h2>
                                    <p class="item-intro text-muted">FLOWXL</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/flowxl_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"브레이킹 씬 전설의 귀환!"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
                                            세계 대회를 휩쓴 어나더 클래스!<br/>
											브레이킹 열풍을 이끌어갈 국보급 어벤져스 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 7 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">소울번즈</h2>
                                    <p class="item-intro text-muted">SOULBURNZ</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/soulburnz_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"WARNING! SOUL is BURNING!"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
											브레이킹 씬의 괴물 루키 등장!<br/>
											언제 어디서 터질지 모르는 핵폭탄 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 8 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">이모션크루</h2>
                                    <p class="item-intro text-muted">emotion crew</p>
                                    <img class="img-fluid d-block mx-auto" src="../assets/img/crew/emotion_2.jpg" alt="..." />
                                    <ul class="list-inline">
                                        <li>
                                            <h3><strong>"브레이킹 씬의 새로운 흐름을 예고한다!"</strong></h3>
                                        </li>
                                    </ul>
                                    <ul class="list-inline">
                                        <li>
											어디서도 본 적 없는 조합! 예측 불가능한 시너지!<br/>
											오직 [SHOWDOWN]을 위해 뭉친 연합 크루
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
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