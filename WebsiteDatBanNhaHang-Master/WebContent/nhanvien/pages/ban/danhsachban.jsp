<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/product/productlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:09:40 GMT -->
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<!-- jQuery UI -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/jquery-ui.min.css"
	rel="stylesheet">
<!-- Page Specific CSS (Slick Slider.css) -->
<link
	href="${pageContext.request.contextPath}/nhanvienassets/css/slick.css"
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

		<div class="ms-content-wrapper">
			<div class="row">

				<div class="col-md-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb pl-0">
							<li class="breadcrumb-item"><a href="#"><i
									class="material-icons">home</i> Trang Ch???</a></li>
							<li class="breadcrumb-item"><a href="#">Qu???n L?? B??n</a></li>
							<li class="breadcrumb-item active" aria-current="page">Danh
								S??ch B??n</li>
						</ol>
					</nav>



					<!-- B???ng m??n ??n -->

					<div class="">
						<div class="ms-panel-header">
							<h6>Danh S??ch B??n</h6>
						</div>
						<div class="ms-panel-body">
							<div class="table-responsive">
								<div id="data-table-5_wrapper"
									class="dataTables_wrapper dt-bootstrap4 no-footer">
									<div class="row">
										<div class="col-sm-12 col-md-6">
											<div class="dataTables_length" id="data-table-5_length">
												<label>Khu V???c <select name="data-table-5_length"
													onchange="ChangeKhuVuc()" id="selectkhuvuc"
													aria-controls="data-table-5"
													class="custom-select custom-select-sm form-control form-control-sm">
														<option value="T???t C???">T???t C???</option>
														<c:forEach var="kv" items="${dsKhuVuc}">
															<option value="${kv.getTenKhuVuc()}">${kv.getTenKhuVuc()}</option>
														</c:forEach>
												</select>
												</label>
											</div>
											<label> Th??m b??n:
												<button type="submit"
													class="ms-btn-icon1 btn-square btn-success"
													data-toggle="modal" data-target="#myModala">
													<i class="far fa-plus-square"></i>
												</button>
											</label>
										</div>
										<div class="col-sm-12 col-md-6">
											<div id="data-table-5_filter" class="dataTables_filter">
												<label><input type="search" id="myInput"
													class="form-control form-control-sm"
													placeholder="T??m Ki???m B??n" aria-controls="data-table-5"></label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<table id="data-table-5"
												class="table w-100 thead-primary dataTable no-footer"
												role="grid" aria-describedby="data-table-5_info"
												style="width: 555px;">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="data-table-5" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Product ID: activate to sort column descending"
															style="width: 62px;">STT</th>
														<th class="sorting" tabindex="0"
															aria-controls="data-table-5" rowspan="1" colspan="1"
															aria-label="Product Name: activate to sort column ascending"
															style="width: 80px;">T??n B??n</th>
														<th class="sorting" tabindex="0"
															aria-controls="data-table-5" rowspan="1" colspan="1"
															aria-label="Quantity: activate to sort column ascending"
															style="width: 54px;">S??? Ng?????i</th>
														<th class="sorting" tabindex="0"
															aria-controls="data-table-5" rowspan="1" colspan="1"
															aria-label="Status: activate to sort column ascending"
															style="width: 56px;">Tr???ng Th??i</th>
														<th class="sorting" tabindex="0"
															aria-controls="data-table-5" rowspan="1" colspan="1"
															aria-label="Status: activate to sort column ascending"
															style="width: 56px;">X??a / S???a</th>
													</tr>
												</thead>
												<tbody id="myTable" id="indskhuvuc">
													<c:forEach var="ban" items="${dsBan}" varStatus="counter">
													<c:if test="${ban.getTrangThai()!='???? H???y'}">
														<tr role="row" class="odd">
															<td class="sorting_1">${counter.count}</td>
															<td>${ban.getTenBan()}</td>
															<td>${ban.getSoChoNgoi()}</td>
															<c:if test="${ban.getTrangThai()=='??ang ??n'}">
																<td><span class="badge badge-dark">${ban.getTrangThai()}</span></td>
															</c:if>
															<c:if test="${ban.getTrangThai()=='???? ?????t'}">
																<td><span class="badge badge-primary">${ban.getTrangThai()}</span></td>
															</c:if>
															<c:if test="${ban.getTrangThai()=='B??n Tr???ng'}">
																<td><span class="badge badge-success">${ban.getTrangThai()}</span></td>
															</c:if>
															<td>
																<div class="btn-group" role="group"
																	aria-label="Basic example">
																	<input type="hidden" name="">
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-danger"
																		data-toggle="modal" data-target="#xoaban${ban.getMaBan() }">
																		&ensp;<i class="far fa-trash-alt"></i>
																	</button>

																	&ensp; <input type="hidden" name="">
																	<button type="submit"
																		class="ms-btn-icon btn-square btn-info"
																		data-toggle="modal" data-target="#suaban${ban.getMaBan()}">
																		&ensp;<i class="far fa-sun"></i>
																	</button>
																</div>
															</td>
														</tr>
														</c:if>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12 col-md-5">
											<div class="dataTables_info" id="data-table-5_info"
												role="status" aria-live="polite">Showing 1 to 10 of 36
												entries</div>
										</div>
										<div class="col-sm-12 col-md-7">
											<div class="dataTables_paginate paging_simple_numbers"
												id="data-table-5_paginate">
												<ul class="pagination has-gap">
													<li class="paginate_button page-item previous disabled"
														id="data-table-5_previous"><a href="#"
														aria-controls="data-table-5" data-dt-idx="0" tabindex="0"
														class="page-link">Previous</a></li>
													<li class="paginate_button page-item active"><a
														href="#" aria-controls="data-table-5" data-dt-idx="1"
														tabindex="0" class="page-link">1</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="data-table-5" data-dt-idx="2" tabindex="0"
														class="page-link">2</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="data-table-5" data-dt-idx="3" tabindex="0"
														class="page-link">3</a></li>
													<li class="paginate_button page-item "><a href="#"
														aria-controls="data-table-5" data-dt-idx="4" tabindex="0"
														class="page-link">4</a></li>
													<li class="paginate_button page-item next"
														id="data-table-5_next"><a href="#"
														aria-controls="data-table-5" data-dt-idx="5" tabindex="0"
														class="page-link">Next</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- ????ng b???ng-->


					<!-- The Modal th??m b??n -->

					<div class="modal fade" id="myModala">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Th??m B??n</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div class="col-xl-12 col-md-12">
										<div class="ms-panel ms-panel-fh">

											<div class="ms-panel-body">
												<form class="needs-validation clearfix" novalidate
													action="${pageContext.request.contextPath}/ThemBan"
													method="post">
													<div class="form-row">
														<div class="col-md-12 mb-3">
															<label for="validationCustom18">T??n B??n ??n</label>
															<div class="input-group">
																<input type="text" class="form-control"
																	pattern="[a-zA-Z???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ,.0-9'-]+"
																	id="validationCustom18" name="tenban"
																	placeholder="T??n B??n" value="" required>
																<div class="invalid-feedback">Nh???p t??n b??n ??n</div>
															</div>
														</div>

														<div class="col-md-12 mb-3">
															<label for="validationCustom22">Khu V???c</label>
															<div class="input-group">
																<select class="form-control" name="khuvuc"
																	id="validationCustom22" required>
																	<c:forEach var="kv" items="${dsKhuVuc}">
																		<option value="${kv.getMaKhuVuc()}">${kv.getTenKhuVuc()}</option>
																	</c:forEach>
																</select>
																<div class="invalid-feedback">Vui l??ng ch???n khu
																	v???c</div>
															</div>
														</div>

														<div class="col-md-6 mb-3">
															<label for="validationCustom24">S??? Ch??? Ng???i</label>
															<div class="input-group">
																<input type="text" class="form-control"
																	pattern="((1)|(2)|(3)|(4)|(7)|(8)|(29)|(28)|(27)|(26)|(25)|(24)|(23)|(22)|(21)|(20)|(19)|(18)|(17)(16)|(15)|(14)|(13)|(11)|(12)|(9)|(6)|(5)|(10)|(30))" name="songuoi"
																	id="validationCustom24"
																	placeholder="S??? ch??? ng???i t??? 0->30" required>
																<div class="invalid-feedback">Nh???p s??? ch??? ng???i</div>
															</div>
														</div>
														<div class="col-md-6 mb-3">
															<label for="validationCustom25">Tr???ng Th??i</label>
															<div class="input-group">
																<input type="text" class="form-control"
																	pattern="(B??n Tr???ng|b??n tr???ng|B??n tr???ng|??ang ??n|??ang ??n|??ang ??n|???? ?????t|???? ?????t|???? ?????t)"
																	name="trangthai" id="validationCustom25"
																	placeholder="Nh???p B??n Tr???ng ho???c ??ang ??n ho???c ???? ?????t"
																	value="B??n Tr???ng" required>
																<div class="invalid-feedback">Nh???p tr???ng th??i</div>
															</div>
														</div>

													</div>
													<div class="new">
														<br>
														<button class="btn btn-secondary" type="submit">?????ng
															??</button>

													</div>

												</form>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ????ng model th??m b??n  -->
				</div>
			</div>
		</div>

		<!-- The Modal s???a b??n -->
<c:forEach var="ban" items="${dsBan}" varStatus="counter">
		<div class="modal fade" id="suaban${ban.getMaBan()}">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">S???a Th??ng Tin M??n ??n</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">

						<div class="col-xl-12 col-md-12">
							<div class="ms-panel ms-panel-fh">

								<div class="ms-panel-body">
									<form class="needs-validation clearfix" novalidate
										action="${pageContext.request.contextPath}/Ban"
										method="post">
										<div class="form-row">
											<div class="col-md-12 mb-3">
												<label for="validationCustom18">T??n B??n ??n</label>
												<div class="input-group">
													<input type="text" class="form-control"
														pattern="[a-zA-Z???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ,.0-9'-]+"
														id="validationCustom18" name="tenban"
														placeholder="T??n B??n" value="${ban.getTenBan()}" required>
													<div class="invalid-feedback">Nh???p t??n b??n ??n</div>
												</div>
											</div>

											<div class="col-md-12 mb-3">
												<label for="validationCustom22">Khu V???c</label>
												<div class="input-group">
													<select class="form-control" name="khuvuc"
														id="validationCustom22" required>
														<c:forEach var="kv" items="${dsKhuVuc}">
															<option value="${kv.getMaKhuVuc()}"<c:if test="${ban.getKhuVuc().getMaKhuVuc() == kv.getMaKhuVuc()}"> <c:out value= "selected='selected'"/></c:if> >${kv.getTenKhuVuc()}</option>
														</c:forEach>
													</select>
													<div class="invalid-feedback">Vui l??ng ch???n khu v???c</div>
												</div>
											</div>

											<div class="col-md-6 mb-3">
												<label for="validationCustom24">S??? Ch??? Ng???i</label>
												<div class="input-group">
													<input type="text" class="form-control" value="${ban.getSoChoNgoi()}"
														pattern="((1)|(2)|(3)|(4)|(7)|(8)|(29)|(28)|(27)|(26)|(25)|(24)|(23)|(22)|(21)|(20)|(19)|(18)|(17)(16)|(15)|(14)|(13)|(11)|(12)|(9)|(6)|(5)|(10)|(30))" name="songuoi"
														id="validationCustom24" placeholder="S??? ch??? ng???i t??? 0->30"
														required>
													<div class="invalid-feedback">Nh???p s??? ch??? ng???i</div>
												</div>
											</div>
											<div class="col-md-6 mb-3">
												<label for="validationCustom25">Tr???ng Th??i</label>
												<div class="input-group">
													<input type="text" class="form-control" value="${ban.getTrangThai() }"
														pattern="(B??n Tr???ng|b??n tr???ng|B??n tr???ng|??ang ??n|??ang ??n|??ang ??n|???? ?????t|???? ?????t|???? ?????t)"
														name="trangthai" id="validationCustom25"
														placeholder="Nh???p B??n Tr???ng ho???c ??ang ??n ho???c ???? ?????t"
														required>
													<div class="invalid-feedback">Nh???p tr???ng th??i</div>
												</div>
											</div>
										</div>
										<div class="new">
											<br>
											<input type="hidden" name="maban" value="${ban.getMaBan() }">
											<button class="btn btn-secondary" type="submit" name="action" value="Update">?????ng
												??</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</c:forEach>
		<!-- ????ng model s???a m??n ??n -->
		<!-- The Modal xoa-->
<c:forEach var="ban" items="${dsBan}" varStatus="counter">
<form action="${pageContext.request.contextPath}/Ban" method="post">
		<div class="modal fade" id="xoaban${ban.getMaBan() }">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<h4>B???n C?? Ch???c Ch???n X??a Kh??ng?</h4>
						<div class="new">
							<br>
							<input type="hidden" name="maban" value="${ban.getMaBan()}">
							<button class="btn btn-danger" type="submit" name="action" value="Delete">?????ng ??</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
</c:forEach>

		<!-- ????ng model x??a ban -->

	</main>




	<!-- SCRIPTS -->
	<!-- Global Required Scripts Start -->
	<script type="text/javascript">
	function ChangeKhuVuc() {
		var e = document.getElementById("selectkhuvuc");
		var op = e.options[e.selectedIndex];
		if(op.text=='T???t C???'){
			document.getElementById("myTable").innerHTML= '<c:forEach var="ban" items="${dsBan}" varStatus="counter">'
			+'<tr role="row" class="odd">'
			+'	<td class="sorting_1">${counter.count}</td>'
			+'<td>${ban.getTenBan()}</td>'
			+'<td>${ban.getSoChoNgoi()}</td>'
			+'<c:if test="${ban.getTrangThai()=='??ang ??n'}">'
			+'	<td><span class="badge badge-dark">${ban.getTrangThai()}</span></td>'
			+'</c:if>'
			+'<c:if test="${ban.getTrangThai()=='???? ?????t'}">'
			+'	<td><span class="badge badge-primary">${ban.getTrangThai()}</span></td>'
			+'</c:if>'
			+'<c:if test="${ban.getTrangThai()=='B??n Tr???ng'}">'
			+'	<td><span class="badge badge-success">${ban.getTrangThai()}</span></td>'
			+'</c:if>'
			+'<td>'
			+'	<div class="btn-group" role="group"'
			+'		aria-label="Basic example">'
			+'		<input type="hidden" name="">'
			+'		<button type="submit"'
			+'			class="ms-btn-icon btn-square btn-danger"'
			+'			data-toggle="modal" data-target="#xoaban">'
			+'			&ensp;<i class="far fa-trash-alt"></i>'
			+'		</button>'
			+'		&ensp; <input type="hidden" name="">'
			+'		<button type="submit"'
			+'			class="ms-btn-icon btn-square btn-info"'
			+'							data-toggle="modal" data-target="#suaban">'
			+'			&ensp;<i class="far fa-sun"></i>'
			+'		</button>'
			+'</div>'
			+'</td>'
			+'</tr>'
			+'</c:forEach>';
			return;
		}
		else if(op.text=='S???nh'){
			document.getElementById("myTable").innerHTML= '<c:forEach var="ban" items="${dsBan}" varStatus="counter">'
				+'<c:if test="${ban.getKhuVuc().getTenKhuVuc()=='S???nh'}">'
				+'<tr role="row" class="odd">'
				+'	<td class="sorting_1">${counter.count}</td>'
				+'<td>${ban.getTenBan()}</td>'
				+'<td>${ban.getSoChoNgoi()}</td>'
				+'<c:if test="${ban.getTrangThai()=='??ang ??n'}">'
				+'	<td><span class="badge badge-dark">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='???? ?????t'}">'
				+'	<td><span class="badge badge-primary">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='B??n Tr???ng'}">'
				+'	<td><span class="badge badge-success">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<td>'
				+'	<div class="btn-group" role="group"'
				+'		aria-label="Basic example">'
				+'		<input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-danger"'
				+'			data-toggle="modal" data-target="#xoaban">'
				+'			&ensp;<i class="far fa-trash-alt"></i>'
				+'		</button>'
				+'		&ensp; <input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-info"'
				+'							data-toggle="modal" data-target="#suaban">'
				+'			&ensp;<i class="far fa-sun"></i>'
				+'		</button>'
				+'</div>'
				+'</td>'
				+'</tr>'
				+'</c:if>'
				+'</c:forEach>';
				return;
			}
		else if(op.text=='T???ng 1'){
			document.getElementById("myTable").innerHTML='<c:forEach var="ban" items="${dsBan}" varStatus="counter">'
				+'<c:if test="${ban.getKhuVuc().getTenKhuVuc()=='T???ng 1'}">'
				+'<tr role="row" class="odd">'
				+'	<td class="sorting_1">${counter.count}</td>'
				+'<td>${ban.getTenBan()}</td>'
				+'<td>${ban.getSoChoNgoi()}</td>'
				+'<c:if test="${ban.getTrangThai()=='??ang ??n'}">'
				+'	<td><span class="badge badge-dark">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='???? ?????t'}">'
				+'	<td><span class="badge badge-primary">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='B??n Tr???ng'}">'
				+'	<td><span class="badge badge-success">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<td>'
				+'	<div class="btn-group" role="group"'
				+'		aria-label="Basic example">'
				+'		<input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-danger"'
				+'			data-toggle="modal" data-target="#xoaban">'
				+'			&ensp;<i class="far fa-trash-alt"></i>'
				+'		</button>'
				+'		&ensp; <input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-info"'
				+'							data-toggle="modal" data-target="#suaban">'
				+'			&ensp;<i class="far fa-sun"></i>'
				+'		</button>'
				+'					</div>'
				+'</td>'
				+'</tr>'
				+'</c:if>'
				+'</c:forEach>';
				return;
		}
		else if(op.text=='T???ng 2'){
			document.getElementById("myTable").innerHTML='<c:forEach var="ban" items="${dsBan}" varStatus="counter">'
				+'<c:if test="${ban.getKhuVuc().getTenKhuVuc()=='T???ng 2'}">'
				+'<tr role="row" class="odd">'
				+'	<td class="sorting_1">${counter.count}</td>'
				+'<td>${ban.getTenBan()}</td>'
				+'<td>${ban.getSoChoNgoi()}</td>'
				+'<c:if test="${ban.getTrangThai()=='??ang ??n'}">'
				+'	<td><span class="badge badge-dark">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='???? ?????t'}">'
				+'	<td><span class="badge badge-primary">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='B??n Tr???ng'}">'
				+'	<td><span class="badge badge-success">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<td>'
				+'	<div class="btn-group" role="group"'
				+'		aria-label="Basic example">'
				+'		<input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-danger"'
				+'			data-toggle="modal" data-target="#xoaban">'
				+'			&ensp;<i class="far fa-trash-alt"></i>'
				+'		</button>'
				+'		&ensp; <input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-info"'
				+'							data-toggle="modal" data-target="#suaban">'
				+'			&ensp;<i class="far fa-sun"></i>'
				+'		</button>'
				+'					</div>'
				+'</td>'
				+'</tr>'
				+'</c:if>'
				+'</c:forEach>';
				return;
		}else if(op.text=='T???ng 3'){
			document.getElementById("myTable").innerHTML='<c:forEach var="ban" items="${dsBan}" varStatus="counter">'
				+'<c:if test="${ban.getKhuVuc().getTenKhuVuc()=='T???ng 3'}">'
				+'<tr role="row" class="odd">'
				+'	<td class="sorting_1">${counter.count}</td>'
				+'<td>${ban.getTenBan()}</td>'
				+'<td>${ban.getSoChoNgoi()}</td>'
				+'<c:if test="${ban.getTrangThai()=='??ang ??n'}">'
				+'	<td><span class="badge badge-dark">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='???? ?????t'}">'
				+'	<td><span class="badge badge-primary">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<c:if test="${ban.getTrangThai()=='B??n Tr???ng'}">'
				+'	<td><span class="badge badge-success">${ban.getTrangThai()}</span></td>'
				+'</c:if>'
				+'<td>'
				+'	<div class="btn-group" role="group"'
				+'		aria-label="Basic example">'
				+'		<input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-danger"'
				+'			data-toggle="modal" data-target="#xoaban">'
				+'			&ensp;<i class="far fa-trash-alt"></i>'
				+'		</button>'
				+'		&ensp; <input type="hidden" name="">'
				+'		<button type="submit"'
				+'			class="ms-btn-icon btn-square btn-info"'
				+'							data-toggle="modal" data-target="#suaban">'
				+'			&ensp;<i class="far fa-sun"></i>'
				+'		</button>'
				+'		</div>'
				+'</td>'
				+'</tr>'
				+'</c:if>'
				+'</c:forEach>';
			return;
		}
	}
	</script>
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
	<script src="${pageContext.request.contextPath}/js/toastr.min.js"></script>


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


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/product/productlist.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:09:40 GMT -->
</html>
