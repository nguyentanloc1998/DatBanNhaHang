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
						<li class="nav-item"><a class="nav-link" href="index.html">Trang Ch???</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.html">Th???c ????n</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/WebsiteDatBanNhaHang/DatBanServlet">?????t B??n</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Gi???i Thi???u</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="about.html">Nh?? H??ng</a>
								<a class="dropdown-item" href="stuff.html">?????u B???p</a>
								<a class="dropdown-item" href="gallery.html">Danh M???c</a>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">?????a Ch???</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/WebsiteDatBanNhaHang/DatBanServlet">T??i Kho???n</a></li>
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
					<h1>Chi Ti???t M??n ??n</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->

	<div class="header-middle">
		<!--header-middle-->
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
							<li><a href="cart.html"><i class="fa fa-shopping-cart"></i>
									Th???c ??n ???? Ch???n</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->


	<section>
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">H??nh ???nh</td>
							<td class="description">T??n M??n</td>
							<td class="price">Gi??</td>
							<td class="quantity">S??? L?????ng</td>
							<td class="total">T???ng</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="monAn" items="${cart.getDsMonAn()}"
							varStatus="counter">
							<form action="${pageContext.request.contextPath}/GioHangSerlvet"
								method="post">
								<tr>
									<td class="cart_product"><a href=""><img id="hinhanh"
											src="${pageContext.request.contextPath}${monAn.getUrlHinhAnh()}"
											alt="" /></a></td>
									<td class="cart_description">
										<h4>
											<a href=""></a>${monAn.getTenMonAn()}</h4>
										<p>ID: ${monAn.getMaMonAn()}</p>
									</td>
									<td class="cart_price">
										<p>${monAn.getDongia()}VN??</p>
									</td>

									<td class="cart_quantity">
										<div class="cart_quantity_button">
										<input type="hidden" name="itemIndex" value="${counter.count}" >
											<button type="submit" name="action" value="-" class="cart_quantity_up"> - </button> <input
												class="cart_quantity_input" type="text" name="quantity"
												value="${monAn.getSoluong()}" autocomplete="off" size="2">
											<button type="submit" name="action" value="+" class="cart_quantity_down"> + </button>
										</div>
									</td>
									<td class="cart_total">
										<p class="cart_total_price">${monAn.getTongtien() }</p>
									</td>
									<td class="cart_delete"><input type="hidden"
										name="itemIndex"
										value='<c:out value="${counter.count}"></c:out>' />
										<button type="submit" name="action" value="Delete" class="ms-btn-icon btn-square btn-danger"
											class="cart_quantity_delete"><i class="far fa-trash-alt"></i>X</button></td>
								</tr>
							</form>
						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</section>

	<!-- Start thanh toan -->
	<section>
		<form action="${pageContext.request.contextPath}/GioHangSerlvet"
			method="post">
			<div class="container">
				<div class="heading">
					<h3 id="demo">T???ng Gi?? Ti???n M??n ??n</h3>

				</div>
				<div class="row">

					<div class="col-sm-12">
						<div class="total_area">
							<ul>
								<li>T???ng Ti???n M??n ??n <span>${cart.getTongtien()} VN??</span></li>
							</ul>	
						</div>
						<div class="canphai">
						<a class="btn btn-default update"
								href="${pageContext.request.contextPath}/ChonMonAnServlet">Quay
								L???i</a>
							<button type="submit" name="action" value="Save"
								class="btn btn-default check_out" href="">?????ng ??</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</section>
	<!-- ket thuc thanh toan -->


	<br>

	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>S??? ??i???n Tho???i</h4>
						<p class="lead">0399350808</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">nguyentanloc1998@gmail.com</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>?????a Ch???</h4>
						<p class="lead">12, Nguy???n V??n B???o</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	<!-- C???a S??? ????ng Nh???p -->
	<div class="modal fade bd-example-modal-xl" id="bd-example-modal-xl"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">T??i Kho???n</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">
					<div class="login-wrap">
						<div class="login-html">
							<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
								for="tab-1" class="tab">????NG NH???P</label> <input id="tab-2"
								type="radio" name="tab" class="sign-up"><label
								for="tab-2" class="tab">????NG K??</label>
							<div class="login-form">
								<div class="sign-in-htm">
									<div class="group">
										<label for="user" class="label">T??N T??I KHO???N</label> <input
											id="user" type="text" class="input">
									</div>
									<div class="group">
										<label for="pass" class="label">M???T KH???U</label> <input
											id="pass" type="password" class="input" data-type="password">
									</div>
									<div class="group">
										<input id="check" type="checkbox" class="check" checked>
										<label for="check"><span class="icon"></span> Ghi nh???
											????ng Nh???p</label>
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
										<label for="user" class="label">T??N T??I KHO???N</label> <input
											id="user" type="text" class="input">
									</div>
									<div class="group">
										<label for="pass" class="label">M???T KH???U</label> <input
											id="pass" type="password" class="input" data-type="password">
									</div>
									<div class="group">
										<label for="pass" class="label">NH???P L???I M???T KH???U</label> <input
											id="pass" type="password" class="input" data-type="password">
									</div>
									<div class="group">
										<label for="pass" class="label">H??? T??N</label> <input
											id="pass" type="text" class="input">
									</div>
									<div class="group">
										<label for="pass" class="label">S??? ??I???N THO???I</label> <input
											id="pass" type="text" class="input">
									</div>
									<div class="group">
										<label for="pass" class="label">?????A CH??? EMAIL</label> <input
											id="pass" type="text" class="input">
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

	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>V??? Ch??ng T??i</h3>
					<p>Nh?? H??ng Ch??ng T??i Mang ?????n S??? Ph???c V??? T???n T??nh, M??n ??n Ch???t
						L?????ng Do C??c ?????u B???p H??ng ?????u Ch??? Bi???n, B??n C???nh ???? Cho Kh??ch H??ng
						D??? D??ng ?????t B??n V?? Theo D??i M??n ??n Ch??n Th???c Nh???t C?? Th???</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>????ng K?? Nh???n Th??ng B??o</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input"
								placeholder="Email..." type="email">
							<button type="submit" class="submit">????ng K??</button>
							<div class="clearfix"></div>
						</form>
					</div>
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-facebook" aria-hidden="true"></i></a></li>

						<li class="list-inline-item"><a href="#"><i
								class="fa fa-google-plus" aria-hidden="true"></i></a></li>
						<li class="list-inline-item"><a href="#"><i
								class="fa fa-instagram" aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">12, Nguy???n V??n B???o</p>
					<p class="lead">
						<a href="#">0399350808</a>
					</p>
					<p>
						<a href="#"> nguyentanloc2998@gmail.com</a>
					</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Gi??? M??? C???a</h3>
					<p>
						<span class="text-color">Th??? 2 :</span> 9:00 - 22:00
					</p>
					<p>
						<span class="text-color">Th??? 3 - Th??? 4 :</span> 9:00 - 22:00
					</p>
					<p>
						<span class="text-color">Th??? 5 - Th??? 6 :</span> 9:00 - 22:00
					</p>
					<p>
						<span class="text-color"> Th??? 7 - Ch??? Nh???t :</span> 9:00 - 22:00
					</p>
				</div>
			</div>
		</div>

		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">
							???? ????ng K?? B???n Quy???n. &copy; 2021 <a href="#">Nh?? H??ng An L???c</a>
							Design By :
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i
		class="fa fa-paper-plane-o" aria-hidden="true"></i></a>


	<!-- ALL JS FILES -->
	
	<script type="text/javascript">
	
	//var myArr = '${cart.getDsMonAn()}';
	function myFunction($i,$soluong) {
			alert($i});
	}
	</script>

	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.superslides.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/images-loded.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/isotope.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/baguetteBox.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/picker.js"></script>
	<script src="${pageContext.request.contextPath}/js/picker.date.js"></script>
	<script src="${pageContext.request.contextPath}/js/picker.time.js"></script>
	<script src="${pageContext.request.contextPath}/js/legacy.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/form-validator.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/contact-form-script.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>

</body>
</html>