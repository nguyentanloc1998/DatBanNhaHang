<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vn">


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/product/productlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:09:40 GMT -->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Costic Dashboard</title>
<!-- Iconic Fonts -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/font-awesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/flat-icons/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/cryptocoins/cryptocoins.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/nhanvien/assets/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery UI -->
<link href="${pageContext.request.contextPath}/nhanvien/assets/css/jquery-ui.min.css" rel="stylesheet">
<!-- Page Specific CSS (Slick Slider.css) -->
<link href="${pageContext.request.contextPath}/nhanvien/assets/css/slick.css" rel="stylesheet">
<!-- Page Specific Css (Datatables.css) -->
<link href="${pageContext.request.contextPath}/nhanvien/assets/css/datatables.min.css" rel="stylesheet">
<!-- Costic styles -->
<link href="${pageContext.request.contextPath}/nhanvien/assets/css/style.css" rel="stylesheet">
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/nhanvien/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/toastr.min.css">

</head>

<body
	class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">



	<!-- Preloader -->
		<div id="preloader-wrap">
		<div class="spinner spinner-8">
			<div class="ms-circle1 ms-child"></div>
			<div class="ms-circle2 ms-child"></div>
			<div class="ms-circle3 ms-child"></div>
			<div class="ms-circle4 ms-child"></div>
			<div class="ms-circle5 ms-child"></div>
			<div class="ms-circle6 ms-child"></div>
			<div class="ms-circle7 ms-child"></div>
			<div class="ms-circle8 ms-child"></div>
			<div class="ms-circle9 ms-child"></div>
			<div class="ms-circle10 ms-child"></div>
			<div class="ms-circle11 ms-child"></div>
			<div class="ms-circle12 ms-child"></div>
		</div>
	</div>

	<!-- Overlays -->
	<div class="ms-aside-overlay ms-overlay-left ms-toggler"
		data-target="#ms-side-nav" data-toggle="slideLeft"></div>
	<div class="ms-aside-overlay ms-overlay-right ms-toggler"
		data-target="#ms-recent-activity" data-toggle="slideRight"></div>

	<!-- Sidebar Navigation Left -->
	<aside id="ms-side-nav"
		class="side-nav fixed ms-aside-scrollable ms-aside-left">

		<!-- Logo -->
		<div class="logo-sn ms-d-block-lg">
			<a class="pl-0 ml-0 text-center"
				href="${pageContext.request.contextPath}/index.jsp"> <img
				src="${pageContext.request.contextPath}/images/logo.png"
				alt="logo">
			</a>
		</div>

		<!-- Navigation -->
		<ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
			<!-- Dashboard -->
			<li class="menu-item"><a
				href="${pageContext.request.contextPath}/Dashboar"
				class="has-chevron" data-toggle="collapse" data-target="#dashboard"
				aria-expanded="false" aria-controls="dashboard"> <span><i
						class="material-icons fs-16">dashboard</i>B???ng ??i???u Khi???n </span>
			</a>
				<ul id="dashboard" class="collapse" aria-labelledby="dashboard"
					data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/Dashboar">Th???ng
							K??</a></li>
				</ul></li>
			<!-- /Dashboard -->
			<!-- product -->
			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#product" aria-expanded="false"
				aria-controls="product"> <span><i
						class="fa fa-archive fs-16"></i>Th???c ????n </span>
			</a>
				<ul id="product" class="collapse" aria-labelledby="product"
					data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/XemDsMonAn">Danh
							S??ch M??n ??n</a></li>
				</ul></li>
			<!-- product end -->
			<!-- orders -->
			<li class="menu-item"><a
				href="${pageContext.request.contextPath}/XemDsPhieuDatBan"> <span><i
						class="fas fa-clipboard-list fs-16"></i>Phi???u ?????t B??n</span>
			</a></li>
			<!-- orders end -->

			<!-- Invoice -->
			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#invoice" aria-expanded="false"
				aria-controls="invoice"> <span><i
						class="fas fa-file-invoice fs-16"></i>H??a ????n </span>
			</a>
				<ul id="invoice" class="collapse" aria-labelledby="invoice"
					data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/HoaDon">Danh
							S??ch H??a ????n</a></li>

				</ul></li>
			<!-- Invoice end -->
			<!-- Pages -->
			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#pages" aria-expanded="false"
				aria-controls="pages"> <span><i
						class="material-icons fs-16">insert_drive_file</i>Qu???n L?? B??n</span>
			</a>
				<ul id="pages" class="collapse" aria-labelledby="pages"
					data-parent="#side-nav-accordion">
					<li class="menu-item"><a
						href="${pageContext.request.contextPath}/Ban"> Danh S??ch B??n </a>
					</li>
				</ul></li>
			<!-- /Pages -->
			<!-- Khach Hang -->
			<li class="menu-item"><a href="#" class="has-chevron collapsed"
				data-toggle="collapse" data-target="#customer" aria-expanded="false"
				aria-controls="customer"> <span><i
						class="fas fa-user-friends fs-16"></i>Kh??ch H??ng </span>
			</a>
				<ul id="customer" class="collapse" aria-labelledby="customer"
					data-parent="#side-nav-accordion" style="">
					<li><a
						href="${pageContext.request.contextPath}/XemDsKhachHang">Danh
							S??ch Kh??ch H??ng</a></li>
				</ul></li>
			<!-- khach hang -->
		</ul>

	</aside>

	<main class="body-content">
		<!-- Navigation Bar -->
		<nav class="navbar ms-navbar">

			<div class="ms-aside-toggler ms-toggler pl-0"
				data-target="#ms-side-nav" data-toggle="slideLeft">
				<span class="ms-toggler-bar bg-primary"></span> <span
					class="ms-toggler-bar bg-primary"></span> <span
					class="ms-toggler-bar bg-primary"></span>
			</div>

			<div class="logo-sn logo-sm ms-d-block-sm">
				<a class="pl-0 ml-0 text-center navbar-brand mr-0"
					href="${pageContext.request.contextPath}/nhanvien/index.jsp"><img
					src="${pageContext.request.contextPath}/nhanvien/assets/img/costic/costic-logo-84x41.png" alt="logo">
				</a>
			</div>

			<ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
				<li class="ms-nav-item ms-search-form pb-0 py-0">
					<form class="ms-form" method="post">
						<div class="ms-form-group my-0 mb-0 has-icon fs-14">
							<input type="search" class="ms-form-input" name="search"
								placeholder="T??m Ki???m" value=""> <i
								class="flaticon-search text-disabled"></i>
						</div>
					</form>
				</li>
				<li class="ms-nav-item dropdown"><a href="#"
					class="text-disabled ms-has-notification" id="mailDropdown"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
						class="flaticon-mail"></i></a>
					<ul class="dropdown-menu dropdown-menu-right"
						aria-labelledby="mailDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Mail</span>
							</h6> <span class="badge badge-pill badge-success">1 Th?? M???i</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-scrollable ms-dropdown-list">
							<a class="media p-2" href="#">
								<div class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
									<img src="../assets/img/costic/customer-2.jpg"
										class="ms-img-round" alt="people">
								</div>
								<div class="media-body">
									<span>G???i Nh?? h??ng an l???c</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 gi??y tr?????c
									</p>
								</div>
							</a> 
						</li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a
							href="../apps/email.html">??i ?????n Trang Mail</a></li>
					</ul></li>
				<li class="ms-nav-item dropdown"><a href="#"
					class="text-disabled ms-has-notification" id="notificationDropdown"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
						class="flaticon-bell"></i></a>
					<ul class="dropdown-menu dropdown-menu-right"
						aria-labelledby="notificationDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Th??ng B??o</span>
							</h6> <span class="badge badge-pill badge-info">1 Tin M???i</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-scrollable ms-dropdown-list"><a
							class="media p-2" href="#">
								<div class="media-body">
									<span>T???n L???c ???? ?????t B??n </span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 gi??y tr?????c
									</p>
								</div>
						</a>   </li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a href="#">Xem T???t C??? Th??ng B??o</a></li>
					</ul>
					</li>

				<li class="ms-nav-item ms-nav-user dropdown"><a href="#"
					id="userDropdown" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img
						class="ms-user-img ms-img-round float-right"
						src="../../assets/img/costic/customer-6.jpg" alt="people">
				</a>
					<ul class="dropdown-menu dropdown-menu-right user-dropdown"
						aria-labelledby="userDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Xin Ch??o</span>
							</h6>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-dropdown-list"><a class="media fs-14 p-2"
							href="../prebuilt-pages/user-profile.html"> <span><i
									class="flaticon-user mr-2"></i> Th??ng Tin</span>
						</a>  <a class="media fs-14 p-2"
							href="../prebuilt-pages/user-profile.html"> <span><i
									class="flaticon-gear mr-2"></i> C??i ?????t</span>
						</a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer"></li>
						<li class="dropdown-menu-footer"><a class="media fs-14 p-2"
							href="../prebuilt-pages/default-login.html"> <span><i
									class="flaticon-shut-down mr-2"></i> ????ng Xu???t</span>
						</a></li>
					</ul></li>
			</ul>

			<div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler"
				data-toggle="slideDown" data-target="#ms-nav-options">
				<span class="ms-toggler-bar bg-primary"></span> <span
					class="ms-toggler-bar bg-primary"></span> <span
					class="ms-toggler-bar bg-primary"></span>
			</div>
		</nav>		
		<!-- Body Content Wrapper -->
		<div class="ms-content-wrapper">
			<div class="row">
				<div class="col-md-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb pl-0">
							<li class="breadcrumb-item"><a href="#"><i
									class="material-icons">home</i> Trang Ch???</a></li>
							<li class="breadcrumb-item"><a href="#">H??a ????n</a></li>
							<li class="breadcrumb-item"><a href="#">Danh S??ch H??a
									????n</a></li>
						</ol>
					</nav>
					<div class="col-12">
						<div class="ms-panel">
							<div class="ms-panel-header">
								<h6>Danh S??ch H??a ????n</h6>
							</div>
							<div class="ms-panel-body">
								<div class="table-responsive">
									<div id="data-table-5_wrapper"
										class="dataTables_wrapper dt-bootstrap4 no-footer">
										<div class="row">
											<div class="col-sm-12 col-md-6"></div>
											<div class="col-sm-12 col-md-6">
												<div id="data-table-5_filter" class="dataTables_filter">
													<label><input type="search" id="myInput"
														class="form-control form-control-sm"
														placeholder="T??m Ki???m..." aria-controls="data-table-5"></label>
												</div>
											</div>
										</div>
										<table class="table table-hover thead-primary">
											<thead>
												<tr>
													<th scope="col">M?? H??a ????n</th>
													<th scope="col">T??n Kh??ch H??ng</th>
													<th scope="col">Ng??y L???p H??a ????n</th>
													<th scope="col">T???ng Ti???n</th>
													<th scope="col">Thanh To??n</th>
												</tr>
											</thead>
											<tbody id="myTable">
												<c:forEach var="hd" items="${dsHoaDon}">
													<c:if test="${hd.getTrangThai()=='??ang ??n'}">
														<tr>
															<th scope="row">${hd.getMaHoaDon()}</th>
															<td>${hd.getPhieuDatBan().getKhachdatban().getHoTen()}</td>

															<td>${hd.getNgayLap()}</td>
															<td>${hd.getTongTien()}VN??</td>

															<td><button type="submit"
																	class="ms-btn-icon btn-square btn-success"
																	data-toggle="modal"
																	data-target="#dialog${hd.getMaHoaDon()}">
																	&ensp;<i class="fas fa-file-invoice fs-16"></i>
																</button></td>
														</tr>
													</c:if>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<!-- C???a S??? Chi ti???t h??a ????n -->
	<c:forEach var="hd" items="${dsHoaDon}">
		<div class="modal fade bd-example-modal-xl"
			id="dialog${hd.getMaHoaDon()}" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">H??a ????n</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>

					<div class="modal-body">
						<div class="ms-panel">
							<div class="ms-panel-header header-mini">
								<div class="d-flex justify-content-between">
									<h6>H??a ????n</h6>
									<h6>#${hd.getMaHoaDon()}</h6>
								</div>
							</div>
							<div class="ms-panel-body">
								<!-- Invoice To -->
								<div class="row align-items-center">
									<div class="col-md-6">
										<div class="invoice-address">
											<h3>Kh??ch H??ng:</h3>
											<h5>${hd.getPhieuDatBan().getKhachdatban().getHoTen()}</h5>
											<p>${hd.getPhieuDatBan().getKhachdatban().getEmail()}</p>
											<p class="mb-0">
												<c:forEach var="dsban"
													items="${hd.getPhieuDatBan().getListChiTietDatBan()}">
													<c:out value="${dsban.getBan().getTenBan()} "></c:out>
												</c:forEach>
											</p>

										</div>
									</div>
									<div class="col-md-6 text-md-right">
										<ul class="invoice-date">
											<li>Ng??y L???p H??a ????n : ${hd.getNgayLap()}</li>

										</ul>
									</div>
								</div>
								<!-- Invoice Table -->
								<div class="ms-invoice-table table-responsive mt-5">
									<table class="table table-hover text-right thead-light">
										<thead>
											<tr class="text-capitalize">
												<th class="text-center w-5">STT</th>
												<th class="text-left">T??n M??n ??n</th>
												<th>S??? L?????ng</th>
												<th>Gi??</th>
												<th>T???ng Ti???n</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="pdm"
												items="${hd.getPhieuDatBan().getListChiTietDatMon()}">
												<tr>
													<td class="text-center">${counter.count}</td>
													<td class="text-left">${pdm.getMonAn().getTenMonAn()}</td>
													<td>${pdm.getSoLuong()}</td>
													<td>${pdm.getMonAn().getDonGia()}</td>
													<td>${pdm.getThanhtien()}</td>
												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<tr>
												<td colspan="4">T???ng C???ng:</td>
												<td>${hd.getTongTien()}VN??</td>
											</tr>
										</tfoot>
									</table>
								</div>
								<div class="new">
									<br>
									<form action="${pageContext.request.contextPath}/HoaDon"
										method="post">
										<input type="hidden" value="${hd.getMaHoaDon()}" name="mahd">
										<button type="submit" name="action" value="In HD"
											class="btn btn-primary">In H??a ????n</button>
									</form>
								</div>

							</div>
						</div>
					</div>



					<!-- k???t th??c C???a S??? -->

				</div>
			</div>
		</div>
	</c:forEach>



	<!-- SCRIPTS -->
	<!-- Global Required Scripts Start -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/perfect-scrollbar.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/jquery-ui.min.js">
		
	</script>
	<!-- Global Required Scripts End -->
		<script src="${pageContext.request.contextPath}/js/toastr.min.js"></script>
	
	<!-- Page Specific Scripts Start -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/slick.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/moment.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/jquery.webticker.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/Chart.bundle.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/Chart.Financial.js">
		
	</script>
	<!-- Page Specific Scripts Finish -->
	<!-- Costic core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/framework.js"></script>
	<!-- Settings -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/settings.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/invoice/invoicelist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:11:58 GMT -->
</html>

