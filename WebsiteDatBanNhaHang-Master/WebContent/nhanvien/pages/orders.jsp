<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:11:53 GMT -->
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
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/flat-icons/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/cryptocoins/cryptocoins.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/nhanvien/vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Page Specific Css (Datatables.css) -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/datatables.min.css"
	rel="stylesheet">

<!-- jQuery UI -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/jquery-ui.min.css"
	rel="stylesheet">
<!-- Costic Core styles -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/style.css"
	rel="stylesheet">

<!-- Favicon -->
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/favicon.ico">
	
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
						class="material-icons fs-16">dashboard</i>Bảng Điều Khiển </span>
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
					<li><a href="${pageContext.request.contextPath}/XemDsMonAn">Danh
							Sách Món Ăn</a></li>
				</ul></li>
			<!-- product end -->
			<!-- orders -->
			<li class="menu-item"><a
				href="${pageContext.request.contextPath}/XemDsPhieuDatBan"> <span><i
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
					<li><a href="${pageContext.request.contextPath}/HoaDon">Danh
							Sách Hóa Đơn</a></li>

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
					<li class="menu-item"><a
						href="${pageContext.request.contextPath}/Ban"> Danh Sách Bàn </a>
					</li>
				</ul></li>
			<!-- /Pages -->
			<!-- Khach Hang -->
			<li class="menu-item"><a href="#" class="has-chevron collapsed"
				data-toggle="collapse" data-target="#customer" aria-expanded="false"
				aria-controls="customer"> <span><i
						class="fas fa-user-friends fs-16"></i>Khách Hàng </span>
			</a>
				<ul id="customer" class="collapse" aria-labelledby="customer"
					data-parent="#side-nav-accordion" style="">
					<li><a
						href="${pageContext.request.contextPath}/XemDsKhachHang">Danh
							Sách Khách Hàng</a></li>
				</ul></li>
			<!-- khach hang -->
		</ul>


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
					src="${pageContext.request.contextPath}/nhanvien/assets/img/costic/costic-logo-84x41.png" alt="logo">
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

		<!-- Body Content Wrapper -->
		<div class="ms-content-wrapper">
			<div class="row">

				<div class="col-md-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb pl-0">
							<li class="breadcrumb-item"><a href="#"><i
									class="material-icons">home</i> Trang Chủ</a></li>
							<li class="breadcrumb-item active" aria-current="page">Phiếu
								Đặt Bàn</li>

						</ol>
					</nav>
					<div class="col-12">
						<div class="ms-panel">
							<div class="ms-panel-header">

								<div class="row col-sm-12 col-md-6">
									<h6>Phiếu Đặt Bàn</h6>
									&ensp; &ensp;
									
								</div>
							</div>
							<div class="ms-panel-body">

								<div class="table-responsive">
								<div class="dataTables_wrapper dt-bootstrap4 no-footer">
								<div class="row">
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_length" >
												<label>Thêm phiếu đặt:
												</label>
												&ensp;
												<button type="button" class="ms-btn-icon1 btn-square btn-success"
												data-toggle="modal" data-target="#myModala">
															<i class="far fa-plus-square"></i>
														</button>
											</div>
										</div>
										<div class="col-sm-12 col-md-6">
											<div id="data-table-5_filter" class="dataTables_filter">
												<label><input type="search" id="myInput" class="form-control form-control-sm" placeholder="Tìm Kiếm..." aria-controls="data-table-5"></label>
											</div>
										</div>
									</div>
								
									<table class="table table-hover thead-primary">
										<thead>
											<tr>
												<th scope="col">ID Phiếu Đặt</th>
												<th scope="col">Họ Tên</th>
												<th scope="col">SĐT</th>
												<th scope="col">Trạng Thái</th>
												<th scope="col">Thời Gian Đến</th>
												<th scope="col">Số Người Đến</th>
												<th scope="col">Loại Tiệc</th>
												<th scope="col">Ghi Chú</th>
												<th scope="col">TT Món Ăn/Chọn Bàn/Hủy Bàn/Chọn Món/Xác Nhận</th>
											</tr>
										</thead>
										<tbody id="myTable">

											<c:forEach var="phieudat" items="${dsPhieuDatBan}"
												varStatus="counter">
												<c:if
													test="${phieudat.getHoaDon().getTrangThai()=='Chờ Xác Nhận'
													}">
													<tr>
														<th scope="row">${phieudat.getMaPhieuDatBan()}</th>

														<td>${phieudat.getKhachdatban().getHoTen() }</td>
														<td>${phieudat.getKhachdatban().getSoDT() }</td>
														<td><span class="badge badge-primary">${phieudat.getHoaDon().getTrangThai()}</span></td>
														<td><span class="badge badge-dark">${phieudat.getThoiGianDatBan().getNgayDat()}
																${phieudat.getThoiGianDatBan().getGioDat()} </span></td>
														<td>${phieudat.getSoNguoi() }</td>
														<td>${phieudat.getLoaiTiec() }</td>
														<td>${phieudat.getGhiChu() }</td>
														<td>
															<div class="btn-group" role="group"
																aria-label="Basic example">
																<button type="button"
																	class="ms-btn-icon btn-square btn-info"
																	data-toggle="modal"
																	data-target="#dialog${phieudat.getMaPhieuDatBan()}">
																	&ensp;<i class="flaticon-information"></i>
																</button>
																&ensp;
																<form action="${pageContext.request.contextPath}/SetBan"
																	method="get">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-success">
																		&ensp;<i class="far far fa-paper-plane"></i>
																	</button>
																</form>
																&ensp;
																<form
																	action="${pageContext.request.contextPath}/XemDsPhieuDatBan"
																	method="post">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-danger"
																		name="action" value="Delete">
																		&ensp;<i class="far fa-trash-alt"></i>
																	</button>
																</form>
																<form
																	action="${pageContext.request.contextPath}/SetMonAn"
																	method="get">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	&ensp;
																	
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-success">
																		&ensp;<i class="flaticon-supermarket"></i>
																	</button>
																	</form>
																	&ensp;
															</div>
														</td>
													</tr>
												</c:if>
												<c:if
													test="${phieudat.getHoaDon().getTrangThai()=='Đã Xác Nhận'}">
													<tr>
														<th scope="row">${phieudat.getMaPhieuDatBan()}</th>

														<td>${phieudat.getKhachdatban().getHoTen() }</td>
														<td>${phieudat.getKhachdatban().getSoDT() }</td>
														<td><span class="badge badge-success">${phieudat.getHoaDon().getTrangThai()}</span></td>
														<td><span class="badge badge-dark">${phieudat.getThoiGianDatBan().getNgayDat()}
																${phieudat.getThoiGianDatBan().getGioDat()} </span></td>
														<td>${phieudat.getSoNguoi() }</td>
														<td>${phieudat.getLoaiTiec() }</td>
														<td>${phieudat.getGhiChu() }</td>
														<td>
															<div class="btn-group" role="group"
																aria-label="Basic example">
																<button type="button"
																	class="ms-btn-icon btn-square btn-info"
																	data-toggle="modal"
																	data-target="#dialog${phieudat.getMaPhieuDatBan()}">
																	&ensp;<i class="flaticon-information"></i>
																</button>
																&ensp;
																<form action="${pageContext.request.contextPath}/SetBan"
																	method="get">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-success">
																		&ensp;<i class="far fa-paper-plane"></i>
																	</button>
																</form>
																&ensp;
																<form
																	action="${pageContext.request.contextPath}/XemDsPhieuDatBan"
																	method="post">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-danger"
																		name="action" value="Delete">
																		&ensp;<i class="far fa-trash-alt"></i>
																	</button>
																</form>
																<form
																	action="${pageContext.request.contextPath}/SetMonAn"
																	method="get">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	&ensp;
																	
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-success">
																		&ensp;<i class="flaticon-supermarket"></i>
																	</button>
																	</form>
																	&ensp;
																	<form action="${pageContext.request.contextPath}/XemDsPhieuDatBan" method="post">
																	<input type="hidden" name="idphieudat" value="${phieudat.getMaPhieuDatBan() }">
																	<button type="submit" name="action" value="UpdatePD"
																	class="ms-btn-icon btn-square btn-success">
																	&ensp;<i class="flaticon-tick-inside-circle"></i>
																</button>
																</form>
															</div>
														</td>
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

	<!-- bảng khách hàng đến -->
				<div class="col-12">
						<div class="ms-panel">
							<div class="ms-panel-header">

								<div class="row col-sm-12 col-md-6">
									<h6>Danh Sách Khách Đến</h6>
									&ensp; &ensp;
									
								</div>
							</div>
							<div class="ms-panel-body">

								<div class="table-responsive">
								<div class="dataTables_wrapper dt-bootstrap4 no-footer">
								<div class="row">
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_length" id="data-table-5_length">
												<label>Khu Vực <select name="data-table-5_length"
													aria-controls="data-table-5"
													class="custom-select custom-select-sm form-control form-control-sm">
														<c:forEach var="kv" items="${dsKhuVuc}">
															<option value="${kv.getMaKhuVuc()}">${kv.getTenKhuVuc()}</option>
														</c:forEach>
												</select>
												</label>
											</div>
										</div>
										<div class="col-sm-12 col-md-6">
											<div id="data-table-5_filter" class="dataTables_filter">
												<label><input type="search" id="myInput1"  class="form-control form-control-sm" placeholder="Tìm Kiếm..." aria-controls="data-table-5"></label>
											</div>
										</div>
									</div>
								
									<table  class="table table-hover thead-primary">
										<thead>
											<tr>
												<th scope="col">ID Phiếu Đặt</th>
												<th scope="col">Họ Tên</th>
												<th scope="col">SĐT</th>
												<th scope="col">Trạng Thái</th>
												<th scope="col">Thời Gian Đến</th>
												<th scope="col">Số Người Đến</th>
												<th scope="col">Loại Tiệc</th>
												<th scope="col">Ghi Chú</th>
												<th scope="col">TT Món Ăn/Chọn Bàn/Hủy Bàn/Chọn Món/Xác Nhận</th>
											</tr>
										</thead>
										<tbody id="myTable1">
						<c:forEach var="phieudat" items="${dsPhieuDatBan}"
												varStatus="counter">
												<c:if
													test="${phieudat.getHoaDon().getTrangThai()=='Đang Ăn'
													}">
													<tr>
														<th scope="row">${phieudat.getMaPhieuDatBan()}</th>

														<td>${phieudat.getKhachdatban().getHoTen() }</td>
														<td>${phieudat.getKhachdatban().getSoDT() }</td>
														<td><span class="badge badge-dark">${phieudat.getHoaDon().getTrangThai()}</span></td>
														<td><span class="badge badge-dark">${phieudat.getThoiGianDatBan().getNgayDat()}
																${phieudat.getThoiGianDatBan().getGioDat()} </span></td>
														<td>${phieudat.getSoNguoi() }</td>
														<td>${phieudat.getLoaiTiec() }</td>
														<td>${phieudat.getGhiChu() }</td>
														<td>
															<div class="btn-group" role="group"
																aria-label="Basic example">
																<button type="button"
																	class="ms-btn-icon btn-square btn-info"
																	data-toggle="modal"
																	data-target="#dialog${phieudat.getMaPhieuDatBan()}">
																	&ensp;<i class="flaticon-information"></i>
																</button>
																&ensp;
																<form action="${pageContext.request.contextPath}/SetBan"
																	method="get">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-success">
																		&ensp;<i class="far far fa-paper-plane"></i>
																	</button>
																</form>
																<form
																	action="${pageContext.request.contextPath}/SetMonAn"
																	method="get">
																	<input type="hidden" name="idphieudat"
																		value='<c:out value="${phieudat.getMaPhieuDatBan()}"></c:out>'>
																	&ensp;
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-success">
																		&ensp;<i class="flaticon-supermarket"></i>
																	</button>
																	</form>
																	&ensp;
															</div>
														</td>
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
					
				<!-- Đóng bảng  -->

					<!-- Hộp Thoại Xem Món -->

					<c:forEach var="phieudat1" items="${dsPhieuDatBan}">
					<form action="${pageContext.request.contextPath}/XemDsPhieuDatBan" method="post">
						<div class="modal fade bd-example-modal-xl"
							id="dialog${phieudat1.getMaPhieuDatBan()}" role="dialog"
							aria-hidden="true">
							<div class="modal-dialog modal-xl ">
								<div class="modal-content ">
									<div class="modal-header">
										<h5 class="modal-title">Món Ăn Đã Chọn</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<div class="row">
											<div class="col-sm-12">
												<table class="table w-100 thead-primary dataTable no-footer"
													role="grid" aria-describedby="" style="width: Auto">
													<thead>
														<tr role="row">
															<th class="" tabindex="0" aria-controls="data-table-5"
																rowspan="1" colspan="1">ID Món Ăn</th>
															<th class="sorting" tabindex="0"
																aria-controls="data-table-5" rowspan="1" colspan="1">Tên
																Món Ăn</th>
															<th class="sorting" tabindex="0"
																aria-controls="data-table-5" rowspan="1" colspan="1">Số
																Lượng</th>
															<th class="sorting" tabindex="0"
																aria-controls="data-table-5" rowspan="1" colspan="1"">Giá</th>
															<th class="sorting" tabindex="0"
																aria-controls="data-table-5" rowspan="1" colspan="1">Đánh
																dấu</th>
														</tr>
													</thead>

													<tbody>
														<c:forEach var="ctdm"
															items="${phieudat1.getListChiTietDatMon()}">
															<tr role="row" class="odd">
																<td class="sorting_1">${ctdm.getMonAn().getMaMonAn() }</td>
																<td><img
																	src="${pageContext.request.contextPath}/${ctdm.getMonAn().getUrlHinhAnh()}"
																	style="width: 50px; height: 30px;">${ctdm.getMonAn().getTenMonAn() }</td>
																<td>${ctdm.getSoLuong() }</td>
																<td>${ctdm.getThanhtien() }VNĐ</td>
																<td><label class="ms-checkbox-wrap"> <input
																		type="checkbox" name="checked" value="${ctdm.getMonAn().getMaMonAn()}">
																		<i class="ms-checkbox-check"></i>
																</label></td>
															</tr>

														</c:forEach>
													</tbody>


												</table>
											</div>
										</div>
									</div>

									<div class="modal-footer">
									<input type="hidden" name="idpdb" value="${phieudat1.getMaPhieuDatBan()}">
										<button type="submit" class="btn btn-secondary" name="action" value="deletemonan"
											>Xóa</button>
										<button type="button" class="btn btn-primary">Lưu lại</button>
									</div>
								</div>
							</div>
						</div>
						</form>
					</c:forEach>
					<!-- ket thúc Hộp Thoại Xem Món -->

					<!-- The Modal -->
					<form action="${pageContext.request.contextPath}/XemDsPhieuDatBan"
						method="post">
						<div class="modal fade" id="myModala">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">Thêm Phiếu Đặt Bàn</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<div class="ms-panel-body">
											<form class="needs-validation clearfix" novalidate>
												<div class="form-row">
													<div class="col-md-12 mb-3">
														<label for="validationCustom18">Họ Tên</label>
														<div class="input-group">
															<input type="text" name="hoten" class="form-control"
																id="validationCustom18" placeholder="Họ tên" value=""
																required>
															<div class="valid-feedback">Nhập Họ Tên</div>
														</div>
													</div>

													<div class="col-md-6 mb-3">
														<label for="validationCustom24">Số Người</label>
														<div class="input-group">
															<input type="text" class="form-control"
																id="validationCustom24" name="songuoi" placeholder="0"
																required>
															<div class="invalid-feedback">Nhập số lượng người</div>
														</div>
													</div>
													<div class="col-md-6 mb-3">
														<label for="validationCustom25">Số Điện Thoại</label>
														<div class="input-group">
															<input type="text" name="sdt" class="form-control"
																id="validationCustom25" placeholder="Số Điện Thoại"
																required>
															<div class="invalid-feedback">Nhập SĐT</div>
														</div>
													</div>
													<div class="col-md-12 mb-3">
														<textarea id="w3review" name="ghichu"
															placeholder="Ghi Chú" name="w3review" rows="4"
															class="form-control"></textarea>

													</div>
												</div>

											</form>
										</div>
									</div>

									<!-- Modal footer -->

									<div class="modal-footer">

										<button type="submit" name="action" value="Add"
											class="btn btn-primary">Đồng ý</button>
									</div>
								</div>
							</div>
						</div>


					</form>
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
	<script src="${pageContext.request.contextPath}/js/toastr.min.js"></script>
	
	<!-- Page Specific Scripts Start -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/Chart.bundle.min.js">
		
	</script>
	<!-- Page Specific Scripts End -->

	<!-- Page Specific Scripts Finish -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/datatables.min.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/data-tables.js">
		
	</script>

	<!-- Costic core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/framework.js"></script>

	<!-- Settings -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/settings.js">
		
	</script>
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
<script>
$(document).ready(function(){
  $("#myInput1").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable1 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:11:53 GMT -->
</html>

