<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Restaurant - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Dang Nhap CSS -->
	<link rel="stylesheet" href="css/dangnhap.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">Trang Ch???</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.html">Th???c ????n</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/DatBanServlet">?????t B??n</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Gi???i Thi???u</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="about.html">Nh?? H??ng</a>
								<a class="dropdown-item" href="stuff.html">?????u B???p</a>
								<a class="dropdown-item" href="gallery.html">Danh M???c</a>
							</div>
						</li>
						
						<li class="nav-item"><a class="nav-link" href="contact.html">Li??n H???</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/DatBanServlet">T??i Kho???n</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left">
				<img src="images/slider-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Xin Ch??o B???n ???? ?????n<br>  Nh?? H??ng An L???c</strong></h1>
							<p class="m-b-40">Nh?? h??ng ch??ng t??i t???i Ph???m V??n ?????ng. ?????a ??i???m ???????c ng?????i d??n ?????a ph????ng y??u th??ch.<br> 
							N???i b???t v???i n?????c s???t v?? chi???c b??nh pizza n???c ti???ng g???n xa.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">?????t B??n</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Xin Ch??o B???n ???? ?????n <br>  Nh?? H??ng An L???c</strong></h1>
							<p class="m-b-40">>Nh?? h??ng ch??ng t??i t???i Ph???m V??n ?????ng. ?????a ??i???m ???????c ng?????i d??n ?????a ph????ng y??u th??ch.<br> 
							N???i b???t v???i n?????c s???t v?? chi???c b??nh pizza n???c ti???ng g???n xa.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">?????t B??n</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Xin Ch??o B???n ???? ?????n <br>  Nh?? H??ng An L???c</strong></h1>
							<p class="m-b-40">Nh?? h??ng ch??ng t??i t???i Ph???m V??n ?????ng. ?????a ??i???m ???????c ng?????i d??n ?????a ph????ng y??u th??ch.<br> 
							N???i b???t v???i n?????c s???t v?? chi???c b??nh pizza n???c ti???ng g???n xa.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">?????t B??n</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->
	
	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Xin Ch??o B???n ?????n<span>Nh?? H??ng An L???c</span></h1>
						<h4>C??u Chuy???n Nh???</h4>
						<p>Nh?? h??ng ???????c thi???t k??? mang phong c??ch thi??n nhi??n, g???n g??i nh???m ??em ?????n kh??ng gian th?? th??i, nh??? nh??ng gi??p th???c kh??ch gi???i t???a c??ng th???ng sau nh???ng gi??? l??m vi???c m???t nh???c </p>
						<p>B??n c???nh ????, h??? s??? ???????c ph???c v??? nh???ng m??n ??n c?? l???i cho s???c kh???e th??ng qua ?????i ng?? nh??n vi??n ???????c ????o t???o, c?? hi???u bi???t v??? ???m th???c, dinh d?????ng v?? phong c??ch ph???c v??? t???n t??nh</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">?????t B??n</a>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="images/about-img.jpg" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->
	
	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						"N???u b???n kh??ng ph???i l?? ng?????i n???u ??n, h??y ?????n v???i ch??ng t??i ????? th?????ng th???c "
					</p>
					<span class="lead">Nh?? H??ng An L???c</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Th???c ????n ?????c Bi???t</h2>
						<p>Th???c ????n s??? ???????c thay ?????i th?????ng xuy??n</p>
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">T???t C???</a>			
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-khaivi" role="tab" aria-controls="v-pills-messages" aria-selected="false">Khai V???</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-monchinh" role="tab" aria-controls="v-pills-settings" aria-selected="false">M??n Ch??nh</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-trangmieng" role="tab" aria-controls="v-pills-settings" aria-selected="false">Tr??ng Mi???ng</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-nuocuong" role="tab" aria-controls="v-pills-profile" aria-selected="false">N?????c U???ng</a>
					</div>
				</div>
				
				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Khai V??? 5 M??n</h4>
											<p>G???m c?? T??m, Ch?? gi??, Th???t ngu???i.</p>
											<h5>100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Ch??? Gi??</h4>
											<p>G???m c?? Th???t, B??nh tr??ng, Rau c???...</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>B?? X??o</h4>
											<p>G???m c?? Th???t b??, H??nh, B??nh ph???ng t??m.</p>
											<h5>100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi44.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>S??p Cua</h4>
											<p>G???m c?? T??m, Th???t Cua, Tr???ng.</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Khai V??? 4 M??n</h4>
											<p>G???m c?? Ch??? gi??, M???c chi??n gi??n, Ch??? l???i, G???i ng?? sen.</p>
											<h5>100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/monchinh.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Th???t X??o Chua Ng???t</h4>
											<p>G???m c?? th???t, C?? chua, Th??m...</p>
											<h5>100.000 VN?? </h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>S?????n C???u X??ng Kh??i</h4>
											<p>G???m c?? s?????n non c???u...</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>M?? Th???t N?????ng</h4>
											<p>G???m c?? M?? v?? Th???t n?????ng.</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Beef Steak</h4>
											<p>G???m th???t b??, Rau c???.</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>C?? H???p X??? </h4>
											<p>G???m c?? v?? rau c??? .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-01.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-02.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-03.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>		
																
							</div>							
						</div>
						<div class="tab-pane fade" id="v-khaivi" role="tabpanel" aria-labelledby="v-pills-profile-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Khai V??? 5 M??n</h4>
											<p>G???m c?? T??m, Ch?? gi??, Th???t ngu???i.</p>
											<h5>100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Ch??? Gi??</h4>
											<p>G???m c?? Th???t, B??nh tr??ng, Rau c???...</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>B?? X??o</h4>
											<p>G???m c?? Th???t b??, H??nh, B??nh ph???ng t??m.</p>
											<h5>100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi44.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>S??p Cua</h4>
											<p>G???m c?? T??m, Th???t Cua, Tr???ng.</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Khai V??? 4 M??n</h4>
											<p>G???m c?? Ch??? gi??, M???c chi??n gi??n, Ch??? l???i, G???i ng?? sen.</p>
											<h5>100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								
								
							</div>
							
						</div>
						<div class="tab-pane fade" id="v-monchinh" role="tabpanel" aria-labelledby="v-pills-messages-tab">
							<div class="row">
									<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/monchinh.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Th???t X??o Chua Ng???t</h4>
											<p>G???m c?? th???t, C?? chua, Th??m...</p>
											<h5>100.000 VN?? </h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>S?????n C???u X??ng Kh??i</h4>
											<p>G???m c?? s?????n non c???u...</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>M?? Th???t N?????ng</h4>
											<p>G???m c?? M?? v?? Th???t n?????ng.</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Beef Steak</h4>
											<p>G???m th???t b??, Rau c???.</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>C?? H???p X??? </h4>
											<p>G???m c?? v?? rau c??? .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								
								
							</div>
						</div>
						<div class="tab-pane fade" id="v-trangmieng" role="tabpanel" aria-labelledby="v-pills-settings-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>							
				
							</div>
						</div>
					
					<div class="tab-pane fade" id="v-nuocuong" role="tabpanel" aria-labelledby="v-pills-settings-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-01.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-02.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-03.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> B??nh Ng???t </h4>
											<p>Tr???ng g?? v?? s???a .</p>
											<h5> 100.000 VN??</h5>
										</div>
									</div>
								</div>		
							</div>
						</div>
					
					
					
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- End Menu -->
	
	
	
  <!-- C???a S??? ????ng Nh???p -->
  	<div class="modal fade bd-example-modal-xl" id="bd-example-modal-xl"  role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
       <div class="modal-header">
                <h5 class="modal-title">T??i Kho???n</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            
            <div class="modal-body">
            <div class="login-wrap">
    			<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">????NG NH???P</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">????NG K??</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">T??N T??I KHO???N</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">M???T KH???U</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Ghi nh??? ????ng Nh???p</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="????NG NH???P">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Qu??n m???t kh???u?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">T??N T??I KHO???N</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">M???T KH???U</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">NH???P L???I M???T KH???U</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">H??? T??N</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">S??? ??I???N THO???I</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">?????A CH??? EMAIL</label>
					<input id="pass" type="text" class="input">
				</div>
				
				<div class="group">
					<input type="submit" class="button" value="????NG K??">
				</div>
				
				
						</div>
					</div>
				</div>
				</div>
          			  </div>
    	     
    </div>
  </div>
</div>
    <!-- k???t th??c C???a S??? -->
	
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Danh M???c</h2>
						<p>Danh m???c c?? th??? ???????c thay ?????i</p>
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-01.jpg">
							<img class="img-fluid" src="images/gallery-img-01.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-02.jpg">
							<img class="img-fluid" src="images/gallery-img-02.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-03.jpg">
							<img class="img-fluid" src="images/gallery-img-03.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-04.jpg">
							<img class="img-fluid" src="images/gallery-img-04.jpg" alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-05.jpg">
							<img class="img-fluid" src="images/gallery-img-05.jpg" alt="Gallery Images">
						</a>
					</div> 
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox" href="images/gallery-img-06.jpg">
							<img class="img-fluid" src="images/gallery-img-06.jpg" alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->
	
	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>S??? ??i???n Tho???i</h4>
						<p class="lead">
							0399350808
						</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							nguyentanloc1998@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>?????a Ch???</h4>
						<p class="lead">
							12, Nguy???n V??n B???o
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>V??? Ch??ng T??i</h3>
					<p>Nh?? H??ng Ch??ng T??i Mang ?????n S??? Ph???c V??? T???n T??nh, M??n ??n Ch???t L?????ng Do C??c ?????u B???p H??ng ?????u Ch??? Bi???n, B??n C???nh ???? Cho Kh??ch H??ng D??? D??ng ?????t B??n V?? Theo D??i M??n ??n Ch??n Th???c Nh???t C?? Th???</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>????ng K?? Nh???n Th??ng B??o</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input" placeholder="Email..." type="email">
							<button type="submit" class="submit">????ng K??</button>
							<div class="clearfix"></div>
						</form>
					</div>
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>?????a Ch??? Li??n H???</h3>
					<p class="lead">12, Nguy???n V??n B???o</p>
					<p class="lead"><a href="#">0399350808</a></p>
					<p><a href="#"> nguyentanloc2998@gmail.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Gi??? M??? C???a</h3>
					<p><span class="text-color">Th??? 2 :</span>	9:00  - 22:00 </p>
					<p><span class="text-color">Th??? 3 - Th??? 4 :</span> 9:00  - 22:00</p>
					<p><span class="text-color">Th??? 5 - Th??? 6 :</span> 9:00  - 22:00</p>
					<p><span class="text-color"> Th??? 7 - Ch??? Nh???t :</span> 9:00  - 22:00</p>
				</div>
			</div>
		</div>
		
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">???? ????ng K?? B???n Quy???n. &copy; 2021 <a href="#">Nh?? H??ng An L???c</a> Design By : 
					</p>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- End Footer -->
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

<c:if test="${DatBanSucess==1}">
   <script type="text/javascript">
alert("?????t B??n Th??nh C??ng");
</script>
</c:if>
	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
