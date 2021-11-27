<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
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
<link
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/font-awesome/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href=".${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/flat-icons/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/cryptocoins/cryptocoins.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery UI -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/jquery-ui.min.css"
	rel="stylesheet">
<!-- Page Specific CSS (Slick Slider.css) -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/slick.css"
	rel="stylesheet">
<!-- Page Specific Css (Datatables.css) -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/datatables.min.css"
	rel="stylesheet">
<!-- Costic styles -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/style.css"
	rel="stylesheet">
<!-- Favicon -->
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/nhanvien/favicon.ico">

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
				href="${pageContext.request.contextPath}/index.html"> <img
				src="${pageContext.request.contextPath}/nhanvien/assets/img/costic/costic-logo-216x62.png"
				alt="logo">
			</a>
		</div>

		<!-- Navigation -->
		<ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
			<!-- Dashboard -->
			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#dashboard"
				aria-expanded="false" aria-controls="dashboard"> <span><i
						class="material-icons fs-16">dashboard</i>Bảng Điểu Khiển </span>
			</a>
				<ul id="dashboard" class="collapse" aria-labelledby="dashboard"
					data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/Dashboar">Thống
							Kê</a></li>

				</ul></li>
			<!-- /Dashboard -->
			<!-- product -->

			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#product" aria-expanded="false"
				aria-controls="product"> <span><i
						class="fa fa-archive fs-16"></i>Thực Đơn </span>
			</a>
				<ul id="product" class="collapse" aria-labelledby="product"
					data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/XemDsMonAn">Danh Sách Món Ăn</a></li>
					<li><a href="${pageContext.request.contextPath}/ThemMonAn">Thêm Món Ăn</a></li>
					<li><a href="p${pageContext.request.contextPath}/ChiTietMonAn">Chi Tiêt Món Ăn</a></li>

				</ul></li>
			<!-- product end -->

			<!-- orders -->
			<li class="menu-item"><a href="${pageContext.request.contextPath}/XemDsPhieuDatBan"> <span><i
						class="fas fa-clipboard-list fs-16"></i>Phiếu Đặt Bàn</span>
			</a></li>
			<!-- orders end -->


			<!-- Invoice -->

			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#invoice" aria-expanded="false"
				aria-controls="invoice"> <span><i
						class="fas fa-file-invoice fs-16"></i>Hóa Đơn </span>
			</a>
				<ul id="invoice" class="collapse" aria-labelledby="invoice"
					data-parent="#side-nav-accordion">
					<li><a href="${pageContext.request.contextPath}/HoaDon">Danh Sách Hóa Đơn</a>
				</ul></li>
			<!-- Invoice end -->



			<!-- Pages -->
			<li class="menu-item"><a href="#" class="has-chevron"
				data-toggle="collapse" data-target="#pages" aria-expanded="false"
				aria-controls="pages"> <span><i
						class="material-icons fs-16">insert_drive_file</i>Quản Lý Bàn</span>
			</a>
				<ul id="pages" class="collapse" aria-labelledby="pages"
					data-parent="#side-nav-accordion">
					<li class="menu-item"><a href="${pageContext.request.contextPath}/Ban"> Danh
							Sách Bàn </a>
					<li class="menu-item"><a href="${pageContext.request.contextPath}/ThemBan"> Thêm Bàn
							Mới </a></li>
					<li class="menu-item"><a href="${pageContext.request.contextPath}/ChiTietBan"> Chi
							Tiết Bàn </a></li></li>
		</ul>
		</li>


		<!-- /Pages -->

		<!-- Khach Hang -->
		<li class="menu-item"><a href="#" class="has-chevron collapsed"
			data-toggle="collapse" data-target="#customer" aria-expanded="false"
			aria-controls="customer"> <span><i
					class="fas fa-user-friends fs-16"></i>Khách Hàng </span>
		</a>
			<ul id="customer" class="collapse" aria-labelledby="customer"
				data-parent="#side-nav-accordion" style="">
				<li><a href="${pageContext.request.contextPath}/XemDsKhachHang">Danh Sách
						Khách Hàng</a></li>
				<li><a href="${pageContext.request.contextPath}/ThemKhachHang">Thêm Khách Hàng</a></li>
				<li><a href="customer/chitietkhachhang.html">Chi Tiêt Khách
						Hàng</a></li>
			</ul></li>
		<!-- khach hang -->

		</ul>


	</aside>


	<!-- Sidebar Right -->
	<aside id="ms-recent-activity"
		class="side-nav fixed ms-aside-right ms-scrollable">

		<div class="ms-aside-header">
			<ul class="nav nav-tabs tabs-bordered d-flex nav-justified mb-3"
				role="tablist">
				<li class="fs-12"><a href="#activityLog"
					aria-controls="activityLog" class="active" role="tab"
					data-toggle="tab"> Activity Log</a></li>

				<li><button type="button" class="close ms-toggler text-center"
						data-target="#ms-recent-activity" data-toggle="slideRight">
						<span aria-hidden="true">&times;</span>
					</button></li>
			</ul>
		</div>

		<div class="ms-aside-body">

			<div class="tab-content">

				<div role="tabpanel" class="tab-pane active fade show"
					id="activityLog">
					<ul class="ms-activity-log">
						<li>
							<div class="ms-btn-icon btn-pill icon btn-light">
								<i class="flaticon-gear"></i>
							</div>
							<h6>Update 1.0.0 Pushed</h6> <span> <i
								class="material-icons">event</i>1 January, 2019
						</span>
							<p class="fs-14">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit. Quisque scelerisque diam non nisi semper, ula
								in sodales vehicula....</p>
						</li>
						<li>
							<div class="ms-btn-icon btn-pill icon btn-success">
								<i class="flaticon-tick-inside-circle"></i>
							</div>
							<h6>Profile Updated</h6> <span> <i class="material-icons">event</i>4
								March, 2018
						</span>
							<p class="fs-14">Curabitur purus sem, malesuada eu luctus
								eget, suscipit sed turpis. Nam pellentesque felis vitae justo
								accumsan, sed semper nisi sollicitudin...</p>
						</li>
						<li>
							<div class="ms-btn-icon btn-pill icon btn-warning">
								<i class="flaticon-alert-1"></i>
							</div>
							<h6>Your payment is due</h6> <span> <i
								class="material-icons">event</i>1 January, 2019
						</span>
							<p class="fs-14">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit. Quisque scelerisque diam non nisi semper, ula
								in sodales vehicula....</p>
						</li>
						<li>
							<div class="ms-btn-icon btn-pill icon btn-danger">
								<i class="flaticon-alert"></i>
							</div>
							<h6>Database Error</h6> <span> <i class="material-icons">event</i>4
								March, 2018
						</span>
							<p class="fs-14">Curabitur purus sem, malesuada eu luctus
								eget, suscipit sed turpis. Nam pellentesque felis vitae justo
								accumsan, sed semper nisi sollicitudin...</p>
						</li>
						<li>
							<div class="ms-btn-icon btn-pill icon btn-info">
								<i class="flaticon-information"></i>
							</div>
							<h6>Checkout what's Trending</h6> <span> <i
								class="material-icons">event</i>1 January, 2019
						</span>
							<p class="fs-14">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit. Quisque scelerisque diam non nisi semper, ula
								in sodales vehicula....</p>
						</li>
						<li>
							<div class="ms-btn-icon btn-pill icon btn-secondary">
								<i class="flaticon-diamond"></i>
							</div>
							<h6>Your Dashboard is ready</h6> <span> <i
								class="material-icons">event</i>4 March, 2018
						</span>
							<p class="fs-14">Curabitur purus sem, malesuada eu luctus
								eget, suscipit sed turpis. Nam pellentesque felis vitae justo
								accumsan, sed semper nisi sollicitudin...</p>
						</li>
					</ul>
					<a href="#" class="btn btn-primary d-block"> View All </a>
				</div>


			</div>

		</div>

	</aside>

	<!-- Main Content -->
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
					src="${pageContext.request.contextPath}/images/logo.png" alt="logo">
				</a>
			</div>

			<ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
				<li class="ms-nav-item ms-search-form pb-0 py-0">
					<form class="ms-form" method="post">
						<div class="ms-form-group my-0 mb-0 has-icon fs-14">
							<input type="search" class="ms-form-input" name="search"
								placeholder="Tìm Kiếm" value=""> <i
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
							</h6> <span class="badge badge-pill badge-success">1 Thư Mới</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-scrollable ms-dropdown-list">
							<a class="media p-2" href="#">
								<div class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
									<img src="../assets/img/costic/customer-2.jpg"
										class="ms-img-round" alt="people">
								</div>
								<div class="media-body">
									<span>Gửi Nhà hàng an lộc</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 giây trước
									</p>
								</div>
							</a> 
						</li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a
							href="../apps/email.html">Đi Đến Trang Mail</a></li>
					</ul></li>
				<li class="ms-nav-item dropdown"><a href="#"
					class="text-disabled ms-has-notification" id="notificationDropdown"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
						class="flaticon-bell"></i></a>
					<ul class="dropdown-menu dropdown-menu-right"
						aria-labelledby="notificationDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Thông Báo</span>
							</h6> <span class="badge badge-pill badge-info">1 Tin Mới</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-scrollable ms-dropdown-list"><a
							class="media p-2" href="#">
								<div class="media-body">
									<span>Tấn Lộc Đã Đặt Bàn </span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 giây trước
									</p>
								</div>
						</a>   </li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a href="#">Xem Tất Cả Thông Báo</a></li>
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
								<span class="text-disabled">Xin Chào</span>
							</h6>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-dropdown-list"><a class="media fs-14 p-2"
							href="../prebuilt-pages/user-profile.html"> <span><i
									class="flaticon-user mr-2"></i> Thông Tin</span>
						</a>  <a class="media fs-14 p-2"
							href="../prebuilt-pages/user-profile.html"> <span><i
									class="flaticon-gear mr-2"></i> Cài Đặt</span>
						</a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer"></li>
						<li class="dropdown-menu-footer"><a class="media fs-14 p-2"
							href="../prebuilt-pages/default-login.html"> <span><i
									class="flaticon-shut-down mr-2"></i> Đăng Xuất</span>
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

		<div class="ms-content-wrapper">
			<div class="row">

				<div class="col-md-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb pl-0">
							<li class="breadcrumb-item"><a href="#"><i
									class="material-icons">home</i> Trang Chủ</a></li>
							<li class="breadcrumb-item"><a href="#">Khách Hàng</a></li>
							<li class="breadcrumb-item active" aria-current="page">Danh
								Sách Khách Hàng</li>
						</ol>
					</nav>


					<!-- thông tin phiếu đặt -->

					<table class="table table-hover text-right thead-light">
						<thead>
							<tr class="text-capitalize">
								<th class="text-left">Họ Tên</th>
								<th class="text-left">Thời Gian Đến</th>
								<th class="text-left">Số Người Đến</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-left"><c:out
										value="${phieudat.getKhachdatban().getHoTen()}"></c:out></td>
								<td class="text-left"><c:out
										value="${phieudat.getThoiGianDatBan().getNgayDat()} ${phieudat.getThoiGianDatBan().getGioDat()}"></c:out></td>
								<td class="text-left"><c:out value="${phieudat.getSoNguoi()}"></c:out></td>
							</tr>
						</tbody>
					</table>
					<!-- Đóng thông tin -->
					<!-- Bảng đã đặt -->

					<div class="col-12">
						<div class="ms-panel">
							<div class="ms-panel-header">
								<h6>Bàn Đã Được Đặt</h6>
							</div>
							<div class="ms-panel-body">
								<div class="table-responsive">
									<table class="table table-hover thead-primary">
										<thead>
											<tr>
												<th scope="col">STT</th>
												<th scope="col">Tên Bàn</th>
												<th scope="col">Số Chỗ Ngồi</th>
												<th scope="col">Khu Vực</th>
												<th scope="col">Trạng Thái</th>
												<th scope="col">Xóa</th>											</tr>
										</thead>
										<tbody>
										<c:forEach var="ban" items="${phieudat.getListChiTietDatBan()}" varStatus="counter">
												<tr>
													<th scope="row">${counter.count}</th>
													<td>${ban.getBan().getTenBan()}</td>
													<td>${ban.getBan().getSoChoNgoi()}</td>
													<td>${ban.getBan().getKhuVuc().getTenKhuVuc()}</td>
													<td><span class="badge badge-primary">Đã Đặt</span></td>
													<form action="${pageContext.request.contextPath}/SetBan" method="post">
													<input type="hidden" name="maBan" value="${ban.getBan().getMaBan()}" />
													<input type="hidden" name="maphieu" value="${phieudat.getMaPhieuDatBan()}" />														
													<td>
													<button type="submit"
																		class="ms-btn-icon btn-square btn-danger"
																		name="action" value="Delete">
																		&ensp;<i class="far fa-trash-alt"></i>
																	</button>
                        </td>
													</form>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<!-- Đóng bảng-->

					<!-- Bảng trống -->

					<div class="col-12">
						<div class="ms-panel">
							<div class="ms-panel-header">
								<h6>Bàn Có Thể Chọn</h6>
							</div>
							<div class="ms-panel-body">
								<div class="table-responsive">
									<table class="table table-hover thead-primary">
										<thead>
											<tr>
												<th scope="col">STT</th>
												<th scope="col">Tên Bàn</th>
												<th scope="col">Số Chỗ Ngồi</th>
												<th scope="col">Khu Vực</th>
												<th scope="col">Trạng Thái</th>
												<th scope="col">Thêm Bàn Trống</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="ban" items="${dsBan}" varStatus="counter">
												<tr>
													<th scope="row">${counter.count}</th>
													<td>${ban.getTenBan()}</td>
													<td>${ban.getSoChoNgoi()}</td>
													<td>${ban.getKhuVuc().getTenKhuVuc()}</td>
													<td>${ban.getTrangThai()}</td>
													<form action="${pageContext.request.contextPath}/SetBan" method="post">
													<input type="hidden" name="maBan" value="${ban.getMaBan()}" />
													<input type="hidden" name="maphieu" value="${phieudat.getMaPhieuDatBan()}" />
																						
													<td> <button type="submit" name="action" value="Add"><i
															class="far fa-plus-square ms-text-success"></i></button>
													</td>
													</form>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>

					<!-- Đóng bảng-->











				</div>
			</div>
		</div>



	</main>




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

	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/data-tables.js">
		
	</script>
	<!-- Page Specific Scripts Start -->
	<!-- Page Specific Scripts End -->


	<!-- Costic core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/framework.js"></script>

	<!-- Settings -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/settings.js"></script>

</body>


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/product/productlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:09:40 GMT -->
</html>
