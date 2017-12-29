<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	try{
		String jdbcDriver="jdbc:mysql://192.168.1.6:3306/UniqueBean?"+
								"useUnicode=true&characterEncoding=utf8";
		String dbUser="uniquebean";
		String dbPass="uniquebean";
		
		String Cname,Cemail,Cpnum,Cmessage;
		
		Cname=request.getParameter("name");
		Cemail=request.getParameter("email");
		Cpnum=request.getParameter("pnum");
		Cmessage=request.getParameter("message");
		
		String query="insert into contact values('"+Cname+"','"+Cemail+"','"+Cpnum+"','"+Cmessage+"')";
		conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
		
		stmt=conn.createStatement();
		
		rs=stmt.executeQuery(query);
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if (rs != null) try { rs.close(); } catch(SQLException e) {}
		if (stmt != null) try { stmt.close(); } catch(SQLException e) {}
		if (conn != null) try { conn.close(); } catch(SQLException e) {}
	}
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Unique Bean</title>

<link href="vendor/bootstrap/css/bootstrap.min.css?ver=2" rel="stylesheet">

<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link href="css/agency.min.css?ver=1" rel="stylesheet">
<link href="css/hstboard.css?ver=1" rel="stylesheet">

</head>

<body id="page-top">

	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
         <a class="navbar-brand js-scroll-trigger" href="#page-top">Unique
            Beans</a>
         <button class="navbar-toggler navbar-toggler-right" type="button"
            data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
            Menu <i class="fa fa-bars"></i>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ml-auto">
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#About">About</a></li>
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#Shop">Shop</a></li>
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#portfolio">Library</a></li>
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#Board">Board</a></li>
               <li class="nav-item"><a class="nav-link js-scroll-trigger"
                  href="#Contact">Contact</a></li>
            </ul>
         </div>
      </div>
   </nav>

	<header class="masthead">
      <div class="container">
         
         <div class="intro-text">
         <!-- <div class="intro-heading text-uppercase">It's Nice To Meet
               You</div> -->
         <img class="rounded-circle img-fluid" src="img/logos/UniqueBeans.png" alt="">
             <div class="intro-lead-in">Welcome To Unique Beans!</div>
            <!-- <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
               href="#services">Tell Me More</a> -->
         </div>
      </div>
   </header>

   <!-- Section About -->
   <section id="About">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <h2 class="section-heading text-uppercase">About Unique Beans</h2>
               <h3 class="section-subheading text-muted">Unique Choice,
                  Better Quality</h3>
            </div>
         </div>
         <div class="row text-center">
            <div class="col-md-6">
               <span class="fa-stack fa-4x"> <i
                  class="fa fa-circle fa-stack-2x text-primary"></i> <i
                  class="fa fa-shopping-cart fa-stack-1x fa-inverse"></i>
               </span>
               <h4 class="service-heading">맞춤 주문</h4>
               <p class="text-muted">
                  Unique Beans는 대중화된 커피문화 속에서 <br>고객 맞춤형 원두를 제공함으로 고품질 원두를 <br>더욱
                  개인화한 서비스를 제공하고 있습니다.
               </p>
            </div>
            <div class="col-md-6">
               <span class="fa-stack fa-4x"> <i
                  class="fa fa-circle fa-stack-2x text-primary"></i> <i
                  class="fa fa-laptop fa-stack-1x fa-inverse"></i>
               </span>
               <h4 class="service-heading">유용한 정보</h4>
               <p class="text-muted">
                  Unique Beans는 커피에 대한 다양한 정보를 <br>고객에게 제공하고 있습니다.
               </p>
            </div>

         </div>
      </div>
   </section>
   
   <!-- Section Shop -->
   <section id="Shop">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <h2 class="section-heading text-uppercase">Shopping Process</h2>
               <h3 class="section-subheading text-muted">Unique Choice,
                  Better Quality</h3>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <ul class="timeline">
                  <li>
                     <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="img/about/1.jpg"
                           alt="">
                     </div>
                     <div class="timeline-panel">
                        <div class="timeline-heading">
                           <h4>Step 1</h4>
                           <h4 class="subheading">품종선택</h4>
                        </div>
                        <div class="timeline-body">
                           <p class="text-muted"><b>아라비카</b> 종은 깔끔하고 고급스러운 신맛이 나며 풍부한 향미를 지니며 <b>로부스타</b> 종보다 쓴맛이 덜하다. <b>로부스타</b> 종은 구수하지만 쓴맛과 바디감이 강하다. 물론 로스팅 정도에 따라 맛은 달라지므로 <b>로부스타</b> 종에도 신맛이 있고, <b>아라비카</b> 종에도 쓴맛은 난다. 이처럼 품종에 따라 커피 맛이 달라지는데 이유는 생태학적으로 다른 환경에서 자라기 때문이다.</p>
                        </div>
                     </div>
                  </li>
                  <li class="timeline-inverted">
                     <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="img/about/2.jpg"
                           alt="">
                     </div>
                     <div class="timeline-panel">
                        <div class="timeline-heading">
                           <h4>Step 2</h4>
                           <h4 class="subheading">나라선택</h4>
                        </div>
                        <div class="timeline-body">
                           <p class="text-muted">커피 원두를 생산하는 나라는 대략 60여개 정도 된다. 각 지역의 <b>고도</b>와 <b>기후</b> 그리고 <b>재배방식</b>에 따라서 커피의 맛과 품질이 달라진다.</p>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="img/about/3.jpg"
                           alt="">
                     </div>
                     <div class="timeline-panel">
                        <div class="timeline-heading">
                           <h4>Step 3</h4>
                           <h4 class="subheading">로스팅 강도</h4>
                        </div>
                        <div class="timeline-body">
                           <p class="text-muted"><b>로스팅</b>은 생두를 섭씨 200도 전후로 <br>15분~20분 정도 가열하여 볶아내는 과정으로 총 8단계로 나누어진다. 커피의 <b>향</b>과 <b>맛</b>을 결정 짓는 아주 중요한 과정이다.</p>
                        </div>
                     </div>
                  </li>
                  <li class="timeline-inverted">
                     <div class="timeline-image">
                        <img class="rounded-circle img-fluid" src="img/about/4.jpg"
                           alt="">
                     </div>
                     <div class="timeline-panel">
                        <div class="timeline-heading">
                           <h4>Step 4</h4>
                           <h4 class="subheading">분쇄도 선택</h4>
                        </div>
                        <div class="timeline-body">
                           <p class="text-muted"><b>분쇄도</b>에 따라서 커피를 추출하는 방식이 달라진다. <b>입자 크기</b>에 따라서 커피의 성분이 물과 용해되어 커피의 <b>향미</b>에 영향을 준다.</p>
                        </div>
                     </div>
                  </li>
                  <li class="timeline-inverted">
                     <div class="timeline-image">
                        <h4>
                           나만의<br>맞춤원두<br>주문하기!!
                        </h4>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
   </section>
<!-- 장 -->

	 <!-- Portfolio Grid -->
    <!-- 라이브러리 구축 페이지(담당자: 박혜성) -->
    <section class="bg-light" id="portfolio">
      <div class="container">
         <!-- 제목, 부제목 부분 -->
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Library</h2>
            <h3 class="section-subheading text-muted">UniqueBean이 처음이신가요?
                                          <br> 그럼 어쩌구 저쩌구~
             </h3>
          </div>
        </div>
        <!-- 내용 부분! -->
        <div class="row">
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/coffeebean.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Kind</h4>
              <p class="text-muted">Kind</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/coffeebean.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Country</h4>
              <p class="text-muted">Country</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/coffeebean.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Roasting</h4>
              <p class="text-muted">Roasting</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/coffeebean.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Blending</h4>
              <p class="text-muted">Blending</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/coffeebean.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Grinding</h4>
              <p class="text-muted">Grinding</p>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
              <div class="portfolio-hover">
                <div class="portfolio-hover-content">
                  <i class="fa fa-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/coffeebean.png" alt="">
            </a>
            <div class="portfolio-caption">
              <h4>Taste</h4>
              <p class="text-muted">taste</p>
            </div>
          </div>
        </div>
      </div>
    </section>
   <!-- 라이브러리 페이지 끝.... -->
	

<!-- ↓허성태 수정 부분 -->
	<section class="bg-light" id="Board">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Coffee Board</h2>
					<h3 class="section-subheading text-muted">신선한 원두 제공을 위해 마련된 여러분의 공간입니다.</h3>
				</div>
			</div>
			
			<div class="card card-form">
			  <h3 class="card-header center">리뷰 게시판</h3>
			  <div class="card-body">
			    <h4 class="card-title">Special title treatment</h4>
			    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
			    <a href="#!" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
			
			<div class="card card-form">
			  <h3 class="card-header">Featured</h3>
			  <div class="card-body">
			    <h4 class="card-title">Special title treatment</h4>
			    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
			    <a href="#!" class="btn btn-primary">Go somewhere</a>
			  </div>
			</div>
			
			<div class="row row-form">
				<div class="col-lg-8 mx-auto text-center">
					<p class="large text-muted">안녕하세요. Unique Bean 입니다.
					저희들은 회원님들의 의견에 항상 귀를 기울이고 있습니다.</p>
				</div>
			</div>
		</div>
	</section>

<!-- ↑허성태 수정부분 -->

<!-- Contact -->
<!-- Contact.jsp 분리 -->
    <section id="Contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Contact Us</h2>
            <h3 class="section-subheading text-muted">문의사항을 남겨주시면 답변 드리겠습니다.<br>
            										모든 항목은 필수 입력사항입니다.</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form acton="./Contact.jsp" id="contactForm" name="sentMessage" novalidate>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" id="pnum" type="pnum" placeholder="주문번호*" required data-validation-required-message="주문번호는 필수입력사항입니다.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="name" type="name" placeholder="성명*" required data-validation-required-message="이름은 필수입력사항입니다.">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="email" type="email" placeholder="이메일*" required data-validation-required-message="이메일 필수입력사항입니다.">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="message" placeholder="문의 내용을 입력하세요*" required data-validation-required-message="상세 문의사항을 입력하세요"></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Send Message</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
          <ul class="list-inline-quicklinks">
          <b>COMPANY</b>
          <br>
          <li class="list-inline-item">
          	<a href="#">회사소개</a>
          </li>
          <br>
          <li class="list-inline-item">
          	<a href="#">이용약관</a>
          </li>
          <br>
          <li class="list-inline-item">
          	<a href="#">개인정보 취급방침</a>
          </li>
          <br>
          <li class="list-inline-item">
          	<a href="#">이용안내</a>
          </li>
          </ul>
<!--           <ul class="list-inline social-buttons">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-linkedin"></i>
                </a>
              </li>
            </ul>-->
          </div>
          <div class="col-md-4">
          	<ul class="list-inline-item">
          	<b>INFORMATION</b>
          	<br>
          	  <li class="list-inline-item">
                COMPANY:UNIQUEBEAN
              </li>
              <br>
              <li class="list-inline-item">
                ADDRESS: 서울특별시
              </li>
              <br>
              <li class="list-inline-item">
                TELEPHONE: 070-7727-1401
              </li>
              <br>
              <li class="list-inline-item">
                EMAIL:help@uniquebean.com
              </li>
              <br>
              <li class="list-inline-item">
                        개인정보책임자:노루
              </li>
              <br>
          	</ul>
          </div>
          <div class="col-md-4">
            <ul class="list-inline-list">
            <b>CS CENTER</b>
            <br>
              <li class="list-inline-item">
                WEEKDAY:09:00-18:00
              </li>
              <br>
              <li class="list-inline-item">
                LUNCH:12:00-13:00
              </li>
              <br>
              <li class="list-inline-item">
              	CLOSED:Weekend and Holidays
              </li>
            </ul>
            
          </div>

        </div>
        <div>
            <span class="copyright">Copyright &copy; UniqueBean 2017</span>
          </div>
      </div>
    </footer>
<!-- model 1 -->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/01-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Threads</li>
									<li>Category: Illustration</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 2 -->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/02-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Explore</li>
									<li>Category: Graphic Design</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/03-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Finish</li>
									<li>Category: Identity</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/04-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Lines</li>
									<li>Category: Branding</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/05-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Southwest</li>
									<li>Category: Website Design</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="close-modal" data-dismiss="modal">
					<div class="lr">
						<div class="rl"></div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">Project Name</h2>
								<p class="item-intro text-muted">Lorem ipsum dolor sit amet
									consectetur.</p>
								<img class="img-fluid d-block mx-auto"
									src="img/portfolio/06-full.jpg" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>Date: January 2017</li>
									<li>Client: Window</li>
									<li>Category: Photography</li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="button">
									<i class="fa fa-times"></i> Close Project
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<script src="js/agency.min.js"></script>

</body>

</html>
