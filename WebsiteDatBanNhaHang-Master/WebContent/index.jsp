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
						<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/">Trang Chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.html">Thực Đơn</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/DatBanServlet">Đặt Bàn</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Giới Thiệu</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="about.html">Nhà Hàng</a>
								<a class="dropdown-item" href="stuff.html">Đầu Bếp</a>
								<a class="dropdown-item" href="gallery.html">Danh Mục</a>
							</div>
						</li>
						
						<li class="nav-item"><a class="nav-link" href="contact.html">Liên Hệ</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/DatBanServlet">Tài Khoản</a></li>
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
							<h1 class="m-b-20"><strong>Xin Chào Bạn Đã Đến<br>  Nhà Hàng An Lộc</strong></h1>
							<p class="m-b-40">Nhà hàng chúng tôi tại Phạm Văn Đồng. Địa điểm được người dân địa phương yêu thích.<br> 
							Nổi bật với nước sốt và chiếc bánh pizza nức tiếng gần xa.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">Đặt Bàn</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Xin Chào Bạn Đã Đến <br>  Nhà Hàng An Lộc</strong></h1>
							<p class="m-b-40">>Nhà hàng chúng tôi tại Phạm Văn Đồng. Địa điểm được người dân địa phương yêu thích.<br> 
							Nổi bật với nước sốt và chiếc bánh pizza nức tiếng gần xa.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">Đặt Bàn</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-left">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20"><strong>Xin Chào Bạn Đã Đến <br>  Nhà Hàng An Lộc</strong></h1>
							<p class="m-b-40">Nhà hàng chúng tôi tại Phạm Văn Đồng. Địa điểm được người dân địa phương yêu thích.<br> 
							Nổi bật với nước sốt và chiếc bánh pizza nức tiếng gần xa.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">Đặt Bàn</a></p>
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
						<h1>Xin Chào Bạn Đến<span>Nhà Hàng An Lộc</span></h1>
						<h4>Câu Chuyện Nhỏ</h4>
						<p>Nhà hàng được thiết kế mang phong cách thiên nhiên, gần gũi nhằm đem đến không gian thư thái, nhẹ nhàng giúp thực khách giải tỏa căng thẳng sau những giờ làm việc mệt nhọc </p>
						<p>Bên cạnh đó, họ sẽ được phục vụ những món ăn có lợi cho sức khỏe thông qua đội ngũ nhân viên được đào tạo, có hiểu biết về ẩm thực, dinh dưỡng và phong cách phục vụ tận tình</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="${pageContext.request.contextPath}/DatBanServlet">Đặt Bàn</a>
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
						"Nếu bạn không phải là người nấu ăn, hãy đến với chúng tôi để thưởng thức "
					</p>
					<span class="lead">Nhà Hàng An Lộc</span>
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
						<h2>Thực Đơn Đặc Biệt</h2>
						<p>Thực đơn sẽ được thay đổi thường xuyên</p>
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Tất Cả</a>			
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-khaivi" role="tab" aria-controls="v-pills-messages" aria-selected="false">Khai Vị</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-monchinh" role="tab" aria-controls="v-pills-settings" aria-selected="false">Món Chính</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-trangmieng" role="tab" aria-controls="v-pills-settings" aria-selected="false">Tráng Miệng</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-nuocuong" role="tab" aria-controls="v-pills-profile" aria-selected="false">Nước Uống</a>
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
											<h4>Khai Vị 5 Món</h4>
											<p>Gồm có Tôm, Chà giò, Thịt nguội.</p>
											<h5>100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Chả Giò</h4>
											<p>Gồm có Thịt, Bánh tráng, Rau củ...</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Bò Xào</h4>
											<p>Gồm có Thịt bò, Hành, Bánh phồng tôm.</p>
											<h5>100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi44.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Súp Cua</h4>
											<p>Gồm có Tôm, Thịt Cua, Trứng.</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Khai Vị 4 Món</h4>
											<p>Gồm có Chả giò, Mực chiên giòn, Chả lụi, Gỏi ngó sen.</p>
											<h5>100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/monchinh.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Thịt Xào Chua Ngọt</h4>
											<p>Gồm có thịt, Cà chua, Thơm...</p>
											<h5>100.000 VNĐ </h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Sườn Cừu Xông Khói</h4>
											<p>Gồm có sườn non cừu...</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Mì Thịt Nướng</h4>
											<p>Gồm có Mì và Thịt nướng.</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Beef Steak</h4>
											<p>Gồm thịt bò, Rau củ.</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Cá Hấp Xả </h4>
											<p>Gồm cá và rau củ .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-01.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-02.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-03.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
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
											<h4>Khai Vị 5 Món</h4>
											<p>Gồm có Tôm, Chà giò, Thịt nguội.</p>
											<h5>100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Chả Giò</h4>
											<p>Gồm có Thịt, Bánh tráng, Rau củ...</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/khaivi2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Bò Xào</h4>
											<p>Gồm có Thịt bò, Hành, Bánh phồng tôm.</p>
											<h5>100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi44.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Súp Cua</h4>
											<p>Gồm có Tôm, Thịt Cua, Trứng.</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/khaivi4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Khai Vị 4 Món</h4>
											<p>Gồm có Chả giò, Mực chiên giòn, Chả lụi, Gỏi ngó sen.</p>
											<h5>100.000 VNĐ</h5>
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
											<h4>Thịt Xào Chua Ngọt</h4>
											<p>Gồm có thịt, Cà chua, Thơm...</p>
											<h5>100.000 VNĐ </h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Sườn Cừu Xông Khói</h4>
											<p>Gồm có sườn non cừu...</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Mì Thịt Nướng</h4>
											<p>Gồm có Mì và Thịt nướng.</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Beef Steak</h4>
											<p>Gồm thịt bò, Rau củ.</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/monchinh4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Cá Hấp Xả </h4>
											<p>Gồm cá và rau củ .</p>
											<h5> 100.000 VNĐ</h5>
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
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng1.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng2.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng3.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/trangmieng4.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
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
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-02.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-03.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4> Bánh Ngọt </h4>
											<p>Trứng gà và sửa .</p>
											<h5> 100.000 VNĐ</h5>
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
	
	
	
  <!-- Cửa Sổ Đăng Nhập -->
  	<div class="modal fade bd-example-modal-xl" id="bd-example-modal-xl"  role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
       <div class="modal-header">
                <h5 class="modal-title">Tài Khoản</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            
            <div class="modal-body">
            <div class="login-wrap">
    			<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">ĐĂNG NHẬP</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">ĐĂNG KÝ</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">TÊN TÀI KHOẢN</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">MẬT KHẨU</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Ghi nhớ Đăng Nhập</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="ĐĂNG NHẬP">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Quên mật khẩu?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">TÊN TÀI KHOẢN</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">MẬT KHẨU</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">NHẬP LẠI MẬT KHẨU</label>
					<input id="pass" type="password" class="input" data-type="password">
				</div>
				<div class="group">
					<label for="pass" class="label">HỌ TÊN</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">SỐ ĐIỆN THOẠI</label>
					<input id="pass" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">ĐỊA CHỈ EMAIL</label>
					<input id="pass" type="text" class="input">
				</div>
				
				<div class="group">
					<input type="submit" class="button" value="ĐĂNG KÝ">
				</div>
				
				
						</div>
					</div>
				</div>
				</div>
          			  </div>
    	     
    </div>
  </div>
</div>
    <!-- kết thúc Cửa Sổ -->
	
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Danh Mục</h2>
						<p>Danh mục có thể được thay đổi</p>
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
						<h4>Số Điện Thoại</h4>
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
						<h4>Địa Chỉ</h4>
						<p class="lead">
							12, Nguyễn Văn Bảo
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
					<h3>Về Chúng Tôi</h3>
					<p>Nhà Hàng Chúng Tôi Mang Đến Sự Phục Vụ Tận Tình, Món Ăn Chất Lượng Do Các Đầu Bếp Hàng Đầu Chế Biến, Bên Cạnh Đó Cho Khách Hàng Dễ Dàng Đặt Bàn Và Theo Dõi Món Ăn Chân Thực Nhất Có Thể</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Đăng Ký Nhận Thông Báo</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input" placeholder="Email..." type="email">
							<button type="submit" class="submit">Đăng Ký</button>
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
					<h3>Địa Chỉ Liên Hệ</h3>
					<p class="lead">12, Nguyễn Văn Bảo</p>
					<p class="lead"><a href="#">0399350808</a></p>
					<p><a href="#"> nguyentanloc2998@gmail.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Giờ Mở Cửa</h3>
					<p><span class="text-color">Thứ 2 :</span>	9:00  - 22:00 </p>
					<p><span class="text-color">Thứ 3 - Thứ 4 :</span> 9:00  - 22:00</p>
					<p><span class="text-color">Thứ 5 - Thứ 6 :</span> 9:00  - 22:00</p>
					<p><span class="text-color"> Thứ 7 - Chủ Nhật :</span> 9:00  - 22:00</p>
				</div>
			</div>
		</div>
		
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">Đã Đăng Ký Bản Quyền. &copy; 2021 <a href="#">Nhà Hàng An Lộc</a> Design By : 
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
alert("Đặt Bàn Thành Công");
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
