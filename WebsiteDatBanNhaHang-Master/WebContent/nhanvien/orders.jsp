<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:11:53 GMT -->
<head>


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
<link href="assets/css/jquery-ui.min.css" rel="stylesheet">
<!-- Costic Core styles -->
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
			<a class="pl-0 ml-0 text-center" href="../index.html"> <img
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
						class="material-icons fs-16">dashboard</i>B???ng ??i???u Khi???n </span>
			</a>
				<ul id="dashboard" class="collapse" aria-labelledby="dashboard"
					data-parent="#side-nav-accordion">
					<li><a href="index.html">Th???ng K??</a></li>

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
					<li><a href="product/productlist.html">Danh S??ch M??n ??n</a></li>
					<li><a href="product/addproduct.html">Th??m M??n ??n</a></li>
					<li><a href="product/productdetail.html">Chi Ti??t M??n ??n</a></li>

				</ul></li>
			<!-- product end -->

			<!-- orders -->
			<li class="menu-item"><a href="orders.html"> <span><i
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
					<li><a href="invoice/invoicelist.html">Danh S??ch H??a ????n</a>
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
					<li class="menu-item"><a href="ban/danhsachban.html"> Danh
							S??ch B??n </a>
					<li class="menu-item"><a href="ban/themban.html"> Th??m B??n
							M???i </a></li>
					<li class="menu-item"><a href="ban/chitietban.html"> Chi
							Ti???t B??n </a></li></li>
		</ul>
		</li>


		<!-- /Pages -->

		<!-- Khach Hang -->
		<li class="menu-item"><a href="#" class="has-chevron collapsed"
			data-toggle="collapse" data-target="#customer" aria-expanded="false"
			aria-controls="customer"> <span><i
					class="fas fa-user-friends fs-16"></i>Kh??ch H??ng </span>
		</a>
			<ul id="customer" class="collapse" aria-labelledby="customer"
				data-parent="#side-nav-accordion" style="">
				<li><a href="customer/danhsachkhachhang.html">Danh S??ch
						Kh??ch H??ng</a></li>
				<li><a href="customer/themkhachhang.html">Th??m Kh??ch H??ng</a></li>
				<li><a href="customer/chitietkhachhang.html">Chi Ti??t Kh??ch
						H??ng</a></li>
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
				<li role="presentation" class="fs-12"><a href="#activityLog"
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
					href="../index.html"><img
					src="${pageContext.request.contextPath}/nhanvien/assets/img/costic/costic-logo-84x41.png"
					alt="logo"> </a>
			</div>

			<ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
				<li class="ms-nav-item ms-search-form pb-0 py-0">
					<form class="ms-form" method="post">
						<div class="ms-form-group my-0 mb-0 has-icon fs-14">
							<input type="search" class="ms-form-input" name="search"
								placeholder="Search here..." value=""> <i
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
							</h6> <span class="badge badge-pill badge-success">3 New</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-scrollable ms-dropdown-list"><a
							class="media p-2" href="#">
								<div
									class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
									<img src="../../assets/img/costic/customer-1.jpg"
										class="ms-img-round" alt="people">
								</div>
								<div class="media-body">
									<span>Hey man, looking forward to your new project.</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 seconds ago
									</p>
								</div>
						</a> <a class="media p-2" href="#">
								<div
									class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
									<img src="../assets/img/costic/customer-2.jpg"
										class="ms-img-round" alt="people">
								</div>
								<div class="media-body">
									<span>Dear John, I was told you bought Costic! Send me
										your feedback</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 28 minutes ago
									</p>
								</div>
						</a> <a class="media p-2" href="#">
								<div
									class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
									<img src="../assets/img/costic/customer-3.jpg"
										class="ms-img-round" alt="people">
								</div>
								<div class="media-body">
									<span>How many people are we inviting to the dashboard?</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 6 hours ago
									</p>
								</div>
						</a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a
							href="apps/email.html">Go to Inbox</a></li>
					</ul></li>
				<li class="ms-nav-item dropdown"><a href="#"
					class="text-disabled ms-has-notification" id="notificationDropdown"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
						class="flaticon-bell"></i></a>
					<ul class="dropdown-menu dropdown-menu-right"
						aria-labelledby="notificationDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Notifications</span>
							</h6> <span class="badge badge-pill badge-info">4 New</span>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-scrollable ms-dropdown-list"><a
							class="media p-2" href="#">
								<div class="media-body">
									<span>12 ways to improve your crypto dashboard</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 seconds ago
									</p>
								</div>
						</a> <a class="media p-2" href="#">
								<div class="media-body">
									<span>You have newly registered users</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 45 minutes ago
									</p>
								</div>
						</a> <a class="media p-2" href="#">
								<div class="media-body">
									<span>Your account was logged in from an unauthorized IP</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 2 hours ago
									</p>
								</div>
						</a> <a class="media p-2" href="#">
								<div class="media-body">
									<span>An application form has been submitted</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 1 day ago
									</p>
								</div>
						</a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a href="#">View
								all Notifications</a></li>
					</ul></li>

				<li class="ms-nav-item ms-nav-user dropdown"><a href="#"
					id="userDropdown" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <img
						class="ms-user-img ms-img-round float-right"
						src="../assets/img/costic/customer-6.jpg" alt="people">
				</a>
					<ul class="dropdown-menu dropdown-menu-right user-dropdown"
						aria-labelledby="userDropdown">
						<li class="dropdown-menu-header">
							<h6 class="dropdown-header ms-inline m-0">
								<span class="text-disabled">Welcome, Anny Farisha</span>
							</h6>
						</li>
						<li class="dropdown-divider"></li>
						<li class="ms-dropdown-list"><a class="media fs-14 p-2"
							href="prebuilt-pages/user-profile.html"> <span><i
									class="flaticon-user mr-2"></i> Profile</span>
						</a> <a class="media fs-14 p-2" href="apps/email.html"> <span><i
									class="flaticon-mail mr-2"></i> Inbox</span> <span
								class="badge badge-pill badge-info">3</span>
						</a> <a class="media fs-14 p-2"
							href="prebuilt-pages/user-profile.html"> <span><i
									class="flaticon-gear mr-2"></i> Account Settings</span>
						</a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer"><a class="media fs-14 p-2"
							href="prebuilt-pages/lock-screen.html"> <span><i
									class="flaticon-security mr-2"></i> Lock</span>
						</a></li>
						<li class="dropdown-menu-footer"><a class="media fs-14 p-2"
							href="prebuilt-pages/default-login.html"> <span><i
									class="flaticon-shut-down mr-2"></i> Logout</span>
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
							<li class="breadcrumb-item active" aria-current="page">Phi???u
								?????t B??n</li>

						</ol>
					</nav>




					<div class="col-12">
						<div class="ms-panel">
							<div class="ms-panel-header">


								<h6>Phi???u ?????t B??n</h6>
								<div class="row col-sm-12 col-md-6">

									<button type="button"
										class="ms-btn-icon1 btn-square btn-success"
										data-toggle="modal" data-target="#myModala">
										<i class="far fa-plus-square"></i>
									</button>
								</div>
								<div class="ms-panel-body">

									<div class="table-responsive">
										<table class="table table-hover thead-primary">
											<thead>
												<tr>
													<th scope="col">STT</th>
													<th scope="col">H??? T??n</th>
													<th scope="col">S??T</th>
													<th scope="col">Email</th>
													<th scope="col">Th???i Gian ?????n</th>
													<th scope="col">S??? Ng?????i ?????n</th>
													<th scope="col">Lo???i Ti???c</th>
													<th scope="col">Ghi Ch??</th>
													<th scope="col">M??n ??n ???? ?????t</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="phieudat" items="${dsPhieuDatBan}">
													<tr>
														<th scope="row">2</th>
														<td>${phieudat.getHoTen() }</td>
														<td>${phieudat.getSoDT() }</td>
														<td>${phieudat.getEmail() }</td>
														<td><span class="badge badge-dark">23/4/2021
																12:11</span></td>
														<td>${phieudat.getSoNguoi() }</td>
														<td>Gia ????nh</td>
														<td></td>
														<td><a href="#"
															class="btn btn-light-danger font-weight-bold mr-2"
															data-toggle="modal"
															data-target="#dialog${phieudat.getMaPhieuDatBan()}">Xem
																M??n ??n</a></td>

													</tr>




												</c:forEach>
											</tbody>

										</table>


									</div>
								</div>
							</div>
						</div>
						<!-- The Modal -->
						<div class="modal fade" id="myModala">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">

									<!-- Modal Header -->
									<div class="modal-header">
										<h4 class="modal-title">Th??m Phi???u ?????t B??n</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>

									<!-- Modal body -->
									<div class="modal-body">
										<div class="ms-panel-body">
											<form class="needs-validation clearfix" novalidate>
												<div class="form-row">
													<div class="col-md-12 mb-3">
														<label for="validationCustom18">H??? T??n</label>
														<div class="input-group">
															<input type="text" class="form-control"
																id="validationCustom18" placeholder="H??? t??n" value=""
																required>
															<div class="valid-feedback">Nh???p t??n b??n ??n</div>
														</div>
													</div>

													<div class="col-md-6 mb-3">
														<label for="validationCustom24">S??? Ng?????i</label>
														<div class="input-group">
															<input type="text" class="form-control"
																id="validationCustom24" placeholder="0" required>
															<div class="invalid-feedback">Nh???p s??? l?????ng ng?????i</div>
														</div>
													</div>
													<div class="col-md-6 mb-3">
														<label for="validationCustom25">S??? ??i???n Tho???i</label>
														<div class="input-group">
															<input type="text" class="form-control"
																id="validationCustom25" placeholder="S??? ??i???n Tho???i"
																required>
															<div class="invalid-feedback">Nh???p tr???ng th??i</div>
														</div>
													</div>
													<div class="col-md-12 mb-3">
														<textarea id="w3review" placeholder="Ghi Ch??"
															name="w3review" rows="4" class="form-control"></textarea>

													</div>
												</div>

											</form>
										</div>
									</div>

									<!-- Modal footer -->
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">?????ng ??</button>
									</div>

								</div>
							</div>
						</div>

						<!-- H???p Tho???i Xem M??n -->

						<c:forEach var="phieudat1" items="${dsPhieuDatBan}">
							<div class="modal fade bd-example-modal-xl"
								id="dialog${phieudat1.getMaPhieuDatBan()}" role="dialog"
								aria-hidden="true">
								<div class="modal-dialog modal-xl ">

									<div class="modal-content ">

										<div class="modal-header">
											<h5 class="modal-title">M??n ??n ???? Ch???n</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>

										<div class="modal-body">
											<div class="row">
												<div class="col-sm-12">
													<table
														class="table w-100 thead-primary dataTable no-footer"
														role="grid" aria-describedby="" style="width: Auto">
														<thead>
															<tr role="row">
																<th class="" tabindex="0" aria-controls="data-table-5"
																	rowspan="1" colspan="1">ID M??n ??n</th>
																<th class="sorting" tabindex="0"
																	aria-controls="data-table-5" rowspan="1" colspan="1">T??n
																	M??n ??n</th>
																<th class="sorting" tabindex="0"
																	aria-controls="data-table-5" rowspan="1" colspan="1">S???
																	L?????ng</th>
																<th class="sorting" tabindex="0"
																	aria-controls="data-table-5" rowspan="1" colspan="1"">Gi??</th>
															</tr>
														</thead>

														<tbody>
															<c:forEach var="ctdm"
																items="${phieudat1.getListChiTietDatMon()}">
																<tr role="row" class="odd">
																	<td class="sorting_1">${ctdm.getMonAn().getMaMonAn() }</td>
																	<td><img
																		src="../assets/img/costic/french-fries.jpg"
																		style="width: 50px; height: 30px;">${ctdm.getMonAn().getTenMonAn() }</td>
																	<td></td>
																	<td>100.00 VN??</td>

																</tr>

															</c:forEach>
														</tbody>


													</table>
												</div>
											</div>
										</div>

										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">????ng</button>
											<button type="button" class="btn btn-primary">L??u
												l???i</button>
										</div>

									</div>
								</div>
							</div>
						</c:forEach>
						<!-- ket th??c H???p Tho???i Xem M??n -->





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
	<script src="${pageContext.request.contextPath}/assets/js/settings.js">
		
	</script>

</body>


<!-- Mirrored from slidesigma.com/themes/html/costic/pages/orders.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:11:53 GMT -->
</html>

