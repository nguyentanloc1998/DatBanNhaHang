<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<head>

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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
<link rel="stylesheet" href="css/thongbao.css">
<!-- Dang Nhap CSS -->
<link rel="stylesheet" href="css/dangnhap.css">
<link rel="stylesheet" href="css/jquery.timeselector.css">
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
				<a class="navbar-brand" href="index.html"> <img
					src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbars-rs-food" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Trang
								Ch???</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.html">Th???c
								????n</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="${pageContext.request.contextPath}/DatBanServlet">?????t
								B??n</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown-a"
							data-toggle="dropdown">Gi???i Thi???u</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="about.html">Nh?? H??ng</a> <a
									class="dropdown-item" href="stuff.html">?????u B???p</a> <a
									class="dropdown-item" href="gallery.html">Danh M???c</a>
							</div></li>

						<li class="nav-item"><a class="nav-link" href="contact.html">?????a
								Ch???</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/WebsiteDatBanNhaHang/DatBanServlet"
							>T??i
								Kho???n</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	<!-- Start All Pages -->
	<div class="alert alert-success" role="alert">This is a success
		alert???check it out!</div>
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>?????t B??n</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
		<div class="map-full"></div>
	<form  action="${pageContext.request.contextPath}/DatBanServlet" 
		method="post">
		<!-- Start Reservation -->
		<div class="reservation-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="heading-title text-center">
							<h2>?????t B??n</h2>
							<p style="color: red">L??u y?? th????i gian hu??y ba??n ????????c ti??nh 24 gi???? sau khi nh????n cu????c go??i xa??c nh????n t???? nh??n vi??n
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-sm-12 col-xs-12">
						<div class="contact-block">

							<div class="row">
								<div class="col-md-6">
									<h3>?????t B??n</h3>
									<div class="col-md-12">
										<div class="form-group row">
											<div class="col-12">
												<input required class="form-control"  id="date" type="date"
											pattern="(0?[1-9]|[12][0-9]|3[01])[- /.](0?[1-9]|1[012])[- /.](20|21)?[0-9]{2}"
													placeholder="Ch???n Ng??y ?????t" name="ngaydat"
													title="Vui l??ng nh???p ng??y h???p l???"
													data-error="Vui l??ng nh???p ng??y h???p l???">
												<div  class="help-block with-errors"> </div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="number"  min="1" max="1000" pattern="[0-9]{1,1000}"
												placeholder="S??? Ng?????i ?????n" title="S??? ng?????i ?????n t???i thi???u l?? 1 v?? t???i ??a l?? 1000" id="songuoi" class="form-control"
												name="songuoi"  required="required"
												data-error="S??? ng?????i ?????n t???i thi???u l?? 1 v?? t???i ??a l?? 1000 ">
											<div class="help-block with-errors"style="margin-left:5px ; color: red;">S??? ng?????i ?????n t??? 1-1000</div>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<h3>Ch???n Gi??? ?????n</h3>
									<div class="col-md-12">
										<div class="form-group">

											<input class="form-control" 
										pattern="(09|10|11|12|13|14|15|16|17|18|19|20|21|22):(00|30)"
											type="text" name="time" title="Vui l??ng ch???n gi??? t??? 9:00 ?????n 22:00 v?? 9:30 ?????n 21:30" />
											<div class="help-block with-errors" style="margin-left:5px; color: red;">Vui l??ng ch???n gi??? t??? 9:00 ?????n 22:00 v?? 9:30 ?????n 21:30 </div>
										</div>
									</div>

								</div>

								<div class="col-md-6">
									<div class="col-md-12">
										<div class="form-group">
											<select class="custom-select d-block form-control"
												id="loaitiec"  title="Vui l??ng ch???n lo???i ti???c" name="loaitiec" required
												data-error="Vui l??ng ch???n lo???i ti???c">
												<option  disabled selected>Lo???i ti???c*</option>
												<option value="Sinh Nh???t ">Sinh Nh???t</option>
												<option value="Ti???c Li??n Hoan">Ti???c Li??n Hoan</option>
												<option value="Ti???c C?? Nh??n">Ti???c C?? Nh??n</option>
												<option value="Kh??c">Kh??c</option>
											</select>
											<div class="help-block with-errors" ></div>
										</div>
									</div>

								</div>

								<div class="col-md-12">
									<div class="col-md-12">
										<div class="form-group">
											<textarea id="w3review" placeholder="Ghi Ch??" name="ghichu"
												rows="4" class="form-control"></textarea>

										</div>
									</div>
								</div>


								<div class="col-md-12">
									<div class="submit-button text-center">
										<a class="btn btn-common"  data-toggle="modal"
											data-target="#aaa" >?????t B??n</a>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="aaa">
				<div class="modal-dialog modal-xl">
					<div class="modal-content">



						<!-- Modal body -->
						<div class="modal-body">

							<div aria-labelledby="swal2-title"
								aria-describedby="swal2-content"
								class="swal2-popup swal2-modal " tabindex="-1" role="dialog"
								aria-live="assertive" aria-modal="true" style="display: flex;">
								<div class="swal2-header">
									<ul class="swal2-progresssteps" style="display: none;"></ul>
									<div class="swal2-icon swal2-error" style="display: none;">
										<span class="swal2-x-mark"> <span
											class="swal2-x-mark-line-left"></span><span
											class="swal2-x-mark-line-right"></span></span>
									</div>
									<div class="swal2-icon swal2-question" style="display: none;">
										<span class="swal2-icon-text">?</span>
									</div>
									<div
										class="swal2-icon swal2-warning swal2-animate-warning-icon"
										style="display: flex;">
										<span class="swal2-icon-text">!</span>
									</div>
									<div class="swal2-icon swal2-info" style="display: none;">
										<span class="swal2-icon-text">i</span>
									</div>
									<div class="swal2-icon swal2-success" style="display: none;">
										<div class="swal2-success-circular-line-left"
											style="background-color: rgb(255, 255, 255);"></div>
										<span class="swal2-success-line-tip"></span> <span
											class="swal2-success-line-long"></span>
										<div class="swal2-success-ring"></div>
										<div class="swal2-success-fix"
											style="background-color: rgb(255, 255, 255);"></div>
										<div class="swal2-success-circular-line-right"
											style="background-color: rgb(255, 255, 255);"></div>
									</div>
									<img class="swal2-image" style="display: none;">
									<h2 class="swal2-title" id="swal2-title" style="display: flex;">B???n
										c?? mu???n ?????t m??n kh??ng?</h2>
									<button type="button" class="swal2-close"
										style="display: none;">??</button>
								</div>
								<div class="swal2-actions" style="display: flex;">
									<button type="submit" name="action" value="Chon"
										class="swal2-confirm swal2-styled" aria-label=""
										style="background-color: rgb(48, 133, 214); border-left-color: rgb(48, 133, 214); border-right-color: rgb(48, 133, 214);">Ch???n
										m??n</button>
									<button type="submit" name="action" value="Ko"
										class="swal2-cancel swal2-styled" aria-label=""
										style="display: inline-block; background-color: rgb(221, 51, 51);">Kh??ng
										ch???n m??n</button>
								</div>
								<div class="swal2-footer" style="display: none;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- End Reservation -->
	</form>
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
								<form action="${pageContext.request.contextPath}/Login"
									method="post">
									<div class="sign-in-htm">
										<div class="group">
											<label for="user" class="label">T??N T??I KHO???N</label> <input
												id="username" name="username" type="text" class="input">
										</div>
										<div class="group">
											<label for="pass" class="label">M???T KH???U</label> <input
												id="password" name="password" type="password" class="input"
												data-type="password">
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
								</form>
								<div class="sign-up-htm">
									<div class="group">
										<label for="user" class="label">T??N T??I KHO???N</label> <input
											id="user" name="userDK" type="text" class="input">
									</div>
									<div class="group">
										<label for="pass" class="label">M???T KH???U</label> <input
											id="pass" name="passwordDK" type="password" class="input"
											data-type="password">
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
						<a href="#"> nguyentanloc1998@gmail.com</a>
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
	
	<script src="js/jquery-3.2.1.min.js"></script>
	
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.timeselector.js"></script>
	<script>
		$(function() {
			$('[name="time"]').val('00:00').timeselector({
				min : '09:00',
				max : '22:00',
				hours12 : false,
				step : 30
			})
		});
	</script>
		<script src="js/toastr.min.js"></script>
	
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
	<script>var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("date").setAttribute("min", today);

		</script>
<c:if test="${loginSucess==1}">
		<script type="text/javascript">
		toastr.success('????ng Nh???p Th??nh C??ng!', {timeOut: 10});
		</script>
	</c:if>
		<c:if test="${reGisSucess==1}">
		<script type="text/javascript">
		toastr.success('????ng K?? Th??nh C??ng!', {timeOut: 10});

		</script>
	</c:if>
	$(document).ready(function(){
<script src="js/jquery.mapify.js"></script>
	<script>
	$('.map-full').mapify({
		points: [
			{
				lat: 10.82233,
				lng: 106.68716,
				marker: true,
				title: 'Marker title',
				infoWindow: 'Nh?? H??ng An L???c'
			}
		]
	});	
	</script>

</body>
</html>