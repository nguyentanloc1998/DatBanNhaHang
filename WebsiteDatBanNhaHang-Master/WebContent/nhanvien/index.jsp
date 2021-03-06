<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from slidesigma.com/themes/html/costic/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:03:18 GMT -->
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
<!-- jQuery UI -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/jquery-ui.min.css"
	rel="stylesheet">
<!-- Page Specific CSS (Slick Slider.css) -->
<link
	href="${pageContext.request.contextPath}/nhanvien/assets/css/slick.css"
	rel="stylesheet">
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
			<a class="pl-0 ml-0 text-center" href="index.jsp"> <img
				src="${pageContext.request.contextPath}/images/logo.png" alt="logo">
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
					src="${pageContext.request.contextPath}/nhanvien/assets/img/costic/costic-logo-84x41.png"
					alt="logo"> </a>
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
						<li class="ms-scrollable ms-dropdown-list"><a
							class="media p-2" href="#">
								<div
									class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
									<img src="../assets/img/costic/customer-2.jpg"
										class="ms-img-round" alt="people">
								</div>
								<div class="media-body">
									<span>G???i Nh?? h??ng an l???c</span>
									<p class="fs-10 my-1 text-disabled">
										<i class="material-icons">access_time</i> 30 gi??y tr?????c
									</p>
								</div>
						</a></li>
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
						</a></li>
						<li class="dropdown-divider"></li>
						<li class="dropdown-menu-footer text-center"><a href="#">Xem
								T???t C??? Th??ng B??o</a></li>
					</ul></li>

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
						</a> <a class="media fs-14 p-2"
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
					<h1 class="db-header-title">Xin Ch??o, Ch??c B???n Ng??y M???i T???t
						L??nh</h1>
				</div>
				<div class="col-xl-3 col-lg-6 col-md-6">
					<div
						class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
						<div class="chartjs-size-monitor"
							style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
							<div class="chartjs-size-monitor-expand"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0"></div>
							</div>
							<div class="chartjs-size-monitor-shrink"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
							</div>
						</div>
						<span class="ms-chart-label bg-black"><i
							class="material-icons">arrow_upward</i> 3.2%</span>
						<div class="ms-card-body media">
							<div class="media-body">
								<span class="black-text"><strong> T???ng T??i Kho???n
								</strong></span>
								<h2>
									<c:out value="${slTK}"></c:out>
								</h2>
							</div>
						</div>
						<canvas id="line-chart" width="582" height="291"
							style="display: block; height: 194px; width: 388px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>

				<div class="col-xl-3 col-lg-6 col-md-6">
					<div
						class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
						<div class="chartjs-size-monitor"
							style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
							<div class="chartjs-size-monitor-expand"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0"></div>
							</div>
							<div class="chartjs-size-monitor-shrink"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
							</div>
						</div>
						<span class="ms-chart-label bg-red"><i
							class="material-icons">arrow_downward</i> 4.5%</span>
						<div class="ms-card-body media">
							<div class="media-body">
								<span class="black-text"><strong>S??? Phi???u ?????t
										B??n</strong></span>
								<h2>
									<c:out value="${slHDXN}"></c:out>
								</h2>
							</div>
						</div>
						<canvas id="line-chart-2" width="582" height="291"
							style="display: block; height: 194px; width: 388px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
				<div class="col-xl-3 col-lg-6 col-md-6">
					<div
						class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
						<div class="chartjs-size-monitor"
							style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
							<div class="chartjs-size-monitor-expand"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0"></div>
							</div>
							<div class="chartjs-size-monitor-shrink"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
							</div>
						</div>
						<span class="ms-chart-label bg-black"><i
							class="material-icons">arrow_upward</i> 12.5%</span>
						<div class="ms-card-body media">
							<div class="media-body">
								<span class="black-text"><strong>Doanh Thu H??m
										Nay</strong></span>
								<h2>
									<c:out value="${doanhthuhomnay} VN??"></c:out>
								</h2>
							</div>
						</div>
						<canvas id="line-chart-3" width="582" height="291"
							style="display: block; height: 194px; width: 388px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>

				<div class="col-xl-3 col-lg-6 col-md-6">
					<div
						class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
						<div class="chartjs-size-monitor"
							style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
							<div class="chartjs-size-monitor-expand"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 1000000px; height: 1000000px; left: 0; top: 0"></div>
							</div>
							<div class="chartjs-size-monitor-shrink"
								style="position: absolute; left: 0; top: 0; right: 0; bottom: 0; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
								<div
									style="position: absolute; width: 200%; height: 200%; left: 0; top: 0"></div>
							</div>
						</div>
						<span class="ms-chart-label bg-red"><i
							class="material-icons">arrow_upward</i> 9.5%</span>
						<div class="ms-card-body media">
							<div class="media-body">
								<span class="black-text"><strong>T???ng Doanh Thu
										<br>
								</strong></span>
								<h2>
									<c:out value="${tongtien } VN??"></c:out>
								</h2>
							</div>
						</div>
						<canvas id="line-chart-4" width="582" height="291"
							style="display: block; height: 194px; width: 388px;"
							class="chartjs-render-monitor"></canvas>
					</div>
				</div>
				<!-- Recent Orders Requested -->
				<div class="col-xl-6 col-md-12">
					<div class="ms-panel">
						<div class="ms-panel-header">
							<div class="d-flex justify-content-between">
								<div class="align-self-center align-left">
									<h6>M??n ??n ???????c ch???n nhi???u nh???t</h6>
								</div>
								<button type="button" class="btn btn-primary">View All</button>
							</div>
						</div>
						<div class="ms-panel-body">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">H??nh ???nh</th>
											<th scope="col">Gi??</th>
											<th scope="col">ID M??n ??n</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="ms-table-f-w"><img
												src="assets/img/costic/pizza.jpg" alt="people"> Pizza
											</td>
											<td>$19.99</td>
											<td>67384917</td>
										</tr>
										<tr>
											<td class="ms-table-f-w"><img
												src="assets/img/costic/french-fries.jpg" alt="people">
												French Fries</td>
											<td>$14.59</td>
											<td>789393819</td>
										</tr>
										<tr>
											<td class="ms-table-f-w"><img
												src="assets/img/costic/cereals.jpg" alt="people">
												Multigrain Hot Cereal</td>
											<td>$25.22</td>
											<td>137893137</td>
										</tr>
										<tr>
											<td class="ms-table-f-w"><img
												src="assets/img/costic/egg-sandwich.jpg" alt="people">
												Fried Egg Sandwich</td>
											<td>$11.23</td>
											<td>235193138</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-md-12">
					<div class="ms-panel ms-panel-fh">
						<div class="ms-panel-header new">
							<h6>Doanh Thu H??ng Th??ng</h6>
							<select class="form-control new" id="exampleSelect">
								<option value="1">Th??ng M???t</option>
								<option value="2">Th??ng Hai</option>
								<option value="3">Th??ng Ba</option>
								<option value="4">Th??ng B???n</option>
								<option value="5">Th??ng N??m</option>
								<option value="1">Th??ng S??u</option>
								<option value="2">Th??ng B???y</option>
								<option value="3">Th??ng T??m</option>
								<option value="4">Th??ng Ch??n</option>
								<option value="5">Th??ng M?????i</option>
								<option value="4">Th??ng M?????i M???t</option>
								<option value="5">Th??ng M?????i Hai</option>
							</select>
						</div>
						<div class="ms-panel-body">
							<span class="progress-label"> <strong>Tu???n 1</strong>
							</span>
							<div class="progress">
								<div class="progress-bar bg-primary" role="progressbar"
									style="width: 25%" aria-valuenow="25" aria-valuemin="0"
									aria-valuemax="100">25%</div>
							</div>
							<span class="progress-label"> <strong>Tu???n 2</strong>
							</span>
							<div class="progress">
								<div class="progress-bar bg-primary" role="progressbar"
									style="width: 50%" aria-valuenow="50" aria-valuemin="0"
									aria-valuemax="100">50%</div>
							</div>
							<span class="progress-label"> <strong>Tu???n 3</strong>
							</span>
							<div class="progress">
								<div class="progress-bar bg-primary" role="progressbar"
									style="width: 75%" aria-valuenow="75" aria-valuemin="0"
									aria-valuemax="100">75%</div>
							</div>
							<span class="progress-label"> <strong>Tu???n 4</strong>
							</span>
							<div class="progress">
								<div class="progress-bar bg-primary" role="progressbar"
									style="width: 40%" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100">40%</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<div class="ms-panel">
						<div class="ms-panel-header">
							<h6>M??n ??n Th???nh H??nh</h6>
						</div>
						<div class="ms-panel-body">
							<div class="row">

								<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
									<div class="ms-card no-margin">
										<div class="ms-card-img">
											<img src="assets/img/costic/food-5.jpg" alt="card_img">
										</div>
										<div class="ms-card-body">
											<div class="ms-card-heading-title">
												<h6>Meat Stew</h6>
												<span class="green-text"><strong>$25.00</strong></span>
											</div>

											<div class="ms-card-heading-title">
												<p>
													S??? l?????ng ???? ?????t <span class="red-text">15</span>
												</p>
												<p>
													Income <span class="red-text">$175</span>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
									<div class="ms-card no-margin">
										<div class="ms-card-img">
											<img src="assets/img/costic/food-2.jpg" alt="card_img">
										</div>
										<div class="ms-card-body">
											<div class="ms-card-heading-title">
												<h6>Pancake</h6>
												<span class="green-text"><strong>$50.00</strong></span>
											</div>

											<div class="ms-card-heading-title">
												<p>
													Orders <span class="red-text">75</span>
												</p>
												<p>
													Income <span class="red-text">$275</span>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
									<div class="ms-card no-margin">
										<div class="ms-card-img">
											<img src="assets/img/costic/food-4.jpg" alt="card_img">
										</div>
										<div class="ms-card-body">
											<div class="ms-card-heading-title">
												<h6>Burger</h6>
												<span class="green-text"><strong>$45.00</strong></span>
											</div>

											<div class="ms-card-heading-title">
												<p>
													Orders <span class="red-text">85</span>
												</p>
												<p>
													Income <span class="red-text">$575</span>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
									<div class="ms-card no-margin">
										<div class="ms-card-img">
											<img src="assets/img/costic/food-3.jpg" alt="card_img">
										</div>
										<div class="ms-card-body">
											<div class="ms-card-heading-title">
												<h6>Saled</h6>
												<span class="green-text"><strong>$85.00</strong></span>
											</div>
											<div class="ms-card-heading-title">
												<p>
													Orders <span class="red-text">175</span>
												</p>
												<p>
													Income <span class="red-text">$775</span>
												</p>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- END/Food Orders -->
				<!-- Recent Orders Requested -->
				<div class="col-xl-12 col-md-12">
					<div class="ms-panel ms-panel-fh">
						<div class="ms-panel-header">
							<div class="d-flex justify-content-between">
								<div class="ms-header-text">
									<h6>Th???i Gian ?????t B??n</h6>
								</div>
							</div>

						</div>
						<div class="ms-panel-body pt-0">
							<div class="d-flex justify-content-between ms-graph-meta">
								<ul class="ms-list-flex mt-3 mb-5">
									<li><span>T???ng Kh??ch H??ng ???? ?????t B??n</span>
										<h3 class="ms-count">703,49</h3></li>
									<li><span>Kh??ch H??ng M???i ?????t B??n</span>
										<h3 class="ms-count">95,038</h3></li>
									<li><span>Kh??ch H??ng C?? ?????t B??n</span>
										<h3 class="ms-count">28,387</h3></li>
									<li><span>Kh??ch H??ng C?? ?????t B??n</span>
										<h3 class="ms-count">260</h3></li>
								</ul>
							</div>
							<canvas id="youtube-subscribers"></canvas>
						</div>
					</div>
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
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/widgets.js"> </script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/clients.js"> </script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/Chart.Financial.js"> </script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/d3.v3.min.js">
  </script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/topojson.v1.min.js">
  </script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/datatables.min.js">
  </script>
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/data-tables.js">
  </script>
	<!-- Page Specific Scripts Finish -->
	<!-- Costic core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/framework.js"></script>
	<!-- Settings -->
	<script
		src="${pageContext.request.contextPath}/nhanvien/assets/js/settings.js"></script>
</body>


<!-- Mirrored from slidesigma.com/themes/html/costic/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2020 13:05:48 GMT -->
</html>
