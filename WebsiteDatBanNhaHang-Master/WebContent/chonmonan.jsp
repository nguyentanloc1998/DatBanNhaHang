<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->

<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   
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
	<!-- Pickadate CSS -->
    <link rel="stylesheet" href="css/classic.css">    
	<link rel="stylesheet" href="css/classic.date.css">    
	<link rel="stylesheet" href="css/classic.time.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    
    <!-- Mennu -->
    <link rel="stylesheet" href="css/bootstrap.min.menu.css">
    <link rel="stylesheet" href="css/mainmenu.css">
    <link rel="stylesheet" href="css/responsivemenu.css">
<!-- Dang Nhap CSS -->
	<link rel="stylesheet" href="css/dangnhap.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<link rel="stylesheet" href="css/toastr.min.css">
</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Trang Chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.html">Thực Đơn</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/WebsiteDatBanNhaHang/DatBanServlet">Đặt Bàn</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Giới Thiệu</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="about.html">Nhà Hàng</a>
								<a class="dropdown-item" href="stuff.html">Đầu Bếp</a>
								<a class="dropdown-item" href="gallery.html">Danh Mục</a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Địa Chỉ</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/WebsiteDatBanNhaHang/DatBanServlet">Tài Khoản</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Chọn Món Ăn</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-4 clearfix">
						<div class="logo pull-left">
							<a href="index.html"><img src="images/logochonmon.jpg" alt="" /></a>
						</div>
						
					</div>
					<div class="col-md-8 clearfix">
						<div class="shop-menu clearfix pull-right">
							<ul class="nav navbar-nav">
								<li><a href='${pageContext.request.contextPath}/GioHangSerlvet' ><i class="fa fa-shopping-cart"></i> Thức Ăn Đã Chọn</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-8">
						<div class="mainmenu pull-left">
							
								<a href="#" class="btn btn-success btn-shadow font-weight-bold mr-2">Không Chọn Món</a>
								
							
						</div>
					</div>
					<div class="col-sm-4">
						<div class="search_box pull-right">
							<input type="text" placeholder="Tìm Món Ăn"/>
						</div>
					</div>
				</div>
				</div>
			</div>
	
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
					
						<div class="inner-menu-box"><!--brands_products-->
							<h2>Thực Đơn</h2>
							<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Tất Cả</a>			
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-khaivi" role="tab" aria-controls="v-pills-messages" aria-selected="false">Khai Vị</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-monchinh" role="tab" aria-controls="v-pills-settings" aria-selected="false">Món Chính</a>
						<a class="nav-link" id="trangmieng" data-toggle="pill" href="#v-trangmieng" role="tab" aria-controls="v-pills-settings" aria-selected="false">Tráng Miệng</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-nuocuong" role="tab" aria-controls="v-pills-profile" aria-selected="false">Nước Uống</a>					</div>
						</div><!--/brands_products-->
						
						
				
					</div>
				</div>
				
				<div class="col-sm-9 padding-right " >
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Món Ăn</h2>
						<div id="inds">
						<c:forEach var="monAn" items="${dsMonAn}">
						<form action="${pageContext.request.contextPath}/ChonMonAnServlet" method="post">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}" alt="" />
										<h2>${monAn.getDonGia()} VNĐ</h2>
										<p>${monAn.getTenMonAn() }</p>
										<input type="hidden" name="maMonAn" value="${monAn.getMaMonAn() }"/>
										<input type="hidden" name="urlHinhAnh" value="${monAn.getUrlHinhAnh() }"/>
										<input type="hidden" name="donGia" value="${monAn.getDonGia() }"/>
										<input type="hidden" name="tenMonAn" value="${monAn.getTenMonAn() }"/>
										<button type="submit" name="action" value="Add" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" action ="Add"></i>Chọn Món</button>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>${monAn.getDonGia()} VNĐ</h2>
											<p>${monAn.getTenMonAn()}</p>				
											<button type="submit" name="action" value="Add"  class="btn btn-default add-to-cart" action ="addtocart"><i class="fa fa-shopping-cart"></i>Chọn Món</button>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i> Món Yêu Thích</a></li>
										
									</ul>
								</div>
							</div>
						</div>
					</form>
						</c:forEach>
						</div>
					</div><!--features_items-->
					<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
				</div>
				
			</div>
			</div>
		
	</section>
					
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
					<h3>Contact information</h3>
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
	<script type="text/javascript">
	document.getElementById("v-pills-home-tab").addEventListener("click", tatca);
	document.getElementById("v-pills-messages-tab").addEventListener("click", khaiVi);
	document.getElementById("v-pills-settings-tab").addEventListener("click", monchinh);
	document.getElementById("trangmieng").addEventListener("click", trangmieng);
	document.getElementById("v-pills-profile-tab").addEventListener("click", nuocuong);
	
	function tatca() {
		document.getElementById("inds").innerHTML = '<c:forEach var="monAn" items="${dsMonAn}">'
			+'<form action="${pageContext.request.contextPath}/ChonMonAnServlet" method="post">'
			+'<div class="col-sm-4">'
				+'<div class="product-image-wrapper">'
				+'<div class="single-products">'
					+'<div class="productinfo text-center">'
							+'<img src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}" alt="" />'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn() }</p>'
							+'<input type="hidden" name="maMonAn" value="${monAn.getMaMonAn() }"/>'
							+'<input type="hidden" name="urlHinhAnh" value="${monAn.getUrlHinhAnh() }"/>'
							+'<input type="hidden" name="donGia" value="${monAn.getDonGia() }"/>'
							+'<input type="hidden" name="tenMonAn" value="${monAn.getTenMonAn() }"/>'
							+'<button type="submit" name="action" value="Add" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" action ="Add"></i>Chọn Món</button>'
						+'</div>'
						+'<div class="product-overlay">'
							+'<div class="overlay-content">'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn()}</p>'		
								+'<button type="submit" name="action" value="Add"  class="btn btn-default add-to-cart" action ="addtocart"><i class="fa fa-shopping-cart"></i>Chọn Món</button>'
						+'</div>'
						+'</div>'
					+'</div>'
				+'<div class="choose">'
					+'<ul class="nav nav-pills nav-justified">'
						+'<li><a href=""><i class="fa fa-plus-square"></i> Món Yêu Thích</a></li>'
							
					+'</ul>'
					+'</div>'
				+'</div>'
			+'</div>'
	+'</form>'
		+'</c:forEach>';
	}
	
	function nuocuong() {
		document.getElementById("inds").innerHTML = '<c:forEach var="monAn" items="${dsMonAn}">'
			+'<c:if test="${monAn.getLoaiMonAn().getTenLoaiMonAn()=='Thức Uống'}">'
			+'<form action="${pageContext.request.contextPath}/ChonMonAnServlet" method="post">'
			+'<div class="col-sm-4">'
				+'<div class="product-image-wrapper">'
				+'<div class="single-products">'
					+'<div class="productinfo text-center">'
							+'<img src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}" alt="" />'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn() }</p>'
							+'<input type="hidden" name="maMonAn" value="${monAn.getMaMonAn() }"/>'
							+'<input type="hidden" name="urlHinhAnh" value="${monAn.getUrlHinhAnh() }"/>'
							+'<input type="hidden" name="donGia" value="${monAn.getDonGia() }"/>'
							+'<input type="hidden" name="tenMonAn" value="${monAn.getTenMonAn() }"/>'
							+'<button type="submit" name="action" value="Add" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" action ="Add"></i>Chọn Món</button>'
						+'</div>'
						+'<div class="product-overlay">'
							+'<div class="overlay-content">'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn()}</p>'		
								+'<button type="submit" name="action" value="Add"  class="btn btn-default add-to-cart" action ="addtocart"><i class="fa fa-shopping-cart"></i>Chọn Món</button>'
						+'</div>'
						+'</div>'
					+'</div>'
				+'<div class="choose">'
					+'<ul class="nav nav-pills nav-justified">'
						+'<li><a href=""><i class="fa fa-plus-square"></i> Món Yêu Thích</a></li>'
							
					+'</ul>'
					+'</div>'
				+'</div>'
			+'</div>'
	+'</form>'
	+'</c:if>'
		+'</c:forEach>';
	}
	
	function trangmieng() {
		document.getElementById("inds").innerHTML = '<c:forEach var="monAn" items="${dsMonAn}">'
			+'<c:if test="${monAn.getLoaiMonAn().getTenLoaiMonAn()=='Tráng Miệng'}">'
			+'<form action="${pageContext.request.contextPath}/ChonMonAnServlet" method="post">'
			+'<div class="col-sm-4">'
				+'<div class="product-image-wrapper">'
				+'<div class="single-products">'
					+'<div class="productinfo text-center">'
							+'<img src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}" alt="" />'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn() }</p>'
							+'<input type="hidden" name="maMonAn" value="${monAn.getMaMonAn() }"/>'
							+'<input type="hidden" name="urlHinhAnh" value="${monAn.getUrlHinhAnh() }"/>'
							+'<input type="hidden" name="donGia" value="${monAn.getDonGia() }"/>'
							+'<input type="hidden" name="tenMonAn" value="${monAn.getTenMonAn() }"/>'
							+'<button type="submit" name="action" value="Add" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" action ="Add"></i>Chọn Món</button>'
						+'</div>'
						+'<div class="product-overlay">'
							+'<div class="overlay-content">'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn()}</p>'		
								+'<button type="submit" name="action" value="Add"  class="btn btn-default add-to-cart" action ="addtocart"><i class="fa fa-shopping-cart"></i>Chọn Món</button>'
						+'</div>'
						+'</div>'
					+'</div>'
				+'<div class="choose">'
					+'<ul class="nav nav-pills nav-justified">'
						+'<li><a href=""><i class="fa fa-plus-square"></i> Món Yêu Thích</a></li>'
							
					+'</ul>'
					+'</div>'
				+'</div>'
			+'</div>'
	+'</form>'
	+'</c:if>'
		+'</c:forEach>';
	}
	
	function khaiVi() {
		document.getElementById("inds").innerHTML = '<c:forEach var="monAn" items="${dsMonAn}">'
		+'<c:if test="${monAn.getLoaiMonAn().getTenLoaiMonAn()=='Khai Vị'}">'
		+'<form action="${pageContext.request.contextPath}/ChonMonAnServlet" method="post">'
		+'<div class="col-sm-4">'
			+'<div class="product-image-wrapper">'
			+'<div class="single-products">'
				+'<div class="productinfo text-center">'
						+'<img src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}" alt="" />'
						+'<h2>${monAn.getDonGia()} VNĐ</h2>'
						+'<p>${monAn.getTenMonAn() }</p>'
						+'<input type="hidden" name="maMonAn" value="${monAn.getMaMonAn() }"/>'
						+'<input type="hidden" name="urlHinhAnh" value="${monAn.getUrlHinhAnh() }"/>'
						+'<input type="hidden" name="donGia" value="${monAn.getDonGia() }"/>'
						+'<input type="hidden" name="tenMonAn" value="${monAn.getTenMonAn() }"/>'
						+'<button type="submit" name="action" value="Add" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" action ="Add"></i>Chọn Món</button>'
					+'</div>'
					+'<div class="product-overlay">'
						+'<div class="overlay-content">'
						+'<h2>${monAn.getDonGia()} VNĐ</h2>'
						+'<p>${monAn.getTenMonAn()}</p>'		
							+'<button type="submit" name="action" value="Add"  class="btn btn-default add-to-cart" action ="addtocart"><i class="fa fa-shopping-cart"></i>Chọn Món</button>'
					+'</div>'
					+'</div>'
				+'</div>'
			+'<div class="choose">'
				+'<ul class="nav nav-pills nav-justified">'
					+'<li><a href=""><i class="fa fa-plus-square"></i> Món Yêu Thích</a></li>'
						
				+'</ul>'
				+'</div>'
			+'</div>'
		+'</div>'
+'</form>'
+'</c:if>'
	+'</c:forEach>';
	}
	function monchinh() {
		document.getElementById("inds").innerHTML = '<c:forEach var="monAn" items="${dsMonAn}">'
			+'<c:if test="${monAn.getLoaiMonAn().getTenLoaiMonAn()=='Món Chính'}">'
			+'<form action="${pageContext.request.contextPath}/ChonMonAnServlet" method="post">'
			+'<div class="col-sm-4">'
				+'<div class="product-image-wrapper">'
				+'<div class="single-products">'
					+'<div class="productinfo text-center">'
							+'<img src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}" alt="" />'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn() }</p>'
							+'<input type="hidden" name="maMonAn" value="${monAn.getMaMonAn() }"/>'
							+'<input type="hidden" name="urlHinhAnh" value="${monAn.getUrlHinhAnh() }"/>'
							+'<input type="hidden" name="donGia" value="${monAn.getDonGia() }"/>'
							+'<input type="hidden" name="tenMonAn" value="${monAn.getTenMonAn() }"/>'
							+'<button type="submit" name="action" value="Add" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart" action ="Add"></i>Chọn Món</button>'
						+'</div>'
						+'<div class="product-overlay">'
							+'<div class="overlay-content">'
							+'<h2>${monAn.getDonGia()} VNĐ</h2>'
							+'<p>${monAn.getTenMonAn()}</p>'		
								+'<button type="submit" name="action" value="Add"  class="btn btn-default add-to-cart" action ="addtocart"><i class="fa fa-shopping-cart"></i>Chọn Món</button>'
						+'</div>'
						+'</div>'
					+'</div>'
				+'<div class="choose">'
					+'<ul class="nav nav-pills nav-justified">'
						+'<li><a href=""><i class="fa fa-plus-square"></i> Món Yêu Thích</a></li>'
							
					+'</ul>'
					+'</div>'
				+'</div>'
			+'</div>'
	+'</form>'
	+'</c:if>'
		+'</c:forEach>';
	}
	</script>
	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/picker.js"></script>
	<script src="js/picker.date.js"></script>
	<script src="js/picker.time.js"></script>
	<script src="js/legacy.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/toastr.min.js"></script>
</body>
</html>