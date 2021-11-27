 <!-- Overlays -->
  <div class="ms-aside-overlay ms-overlay-left ms-toggler" data-target="#ms-side-nav" data-toggle="slideLeft"></div>
  <div class="ms-aside-overlay ms-overlay-right ms-toggler" data-target="#ms-recent-activity" data-toggle="slideRight"></div>
 
  <!-- Sidebar Navigation Left -->
	<aside id="ms-side-nav" class="side-nav fixed ms-aside-scrollable ms-aside-left">
    <!-- Logo -->
    <div class="logo-sn ms-d-block-lg">
      <a class="pl-0 ml-0 text-center" href="index.html">
        <img src="${pageContext.request.contextPath}/nhanvien/assets/img/costic/costic-logo-216x62.png" alt="logo">
      </a>
    </div>
    <!-- Navigation -->
    <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
      <!-- Dashboard -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#dashboard" aria-expanded="false" aria-controls="dashboard"> <span><i class="material-icons fs-16">dashboard</i>Bảng Điều Khiển </span>
        </a>
        <ul id="dashboard" class="collapse" aria-labelledby="dashboard" data-parent="#side-nav-accordion">
          <li> <a href="index.html">Thống Kê</a>
          </li>
        </ul>
      </li>
      <!-- /Dashboard -->
      <!-- product -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product"> <span><i class="fa fa-archive fs-16"></i>Thực Đơn </span>
        </a>
        <ul id="product" class="collapse" aria-labelledby="product" data-parent="#side-nav-accordion">
         <li> <a href="pages/product/productlist.html">Danh Sách Món Ăn</a> </li>          
          <li> <a href="pages/product/addproduct.html">Thêm Món Ăn</a> </li>
          <li> <a href="pages/product/productdetail.html">Chi Tiêt Món Ăn</a> </li>
        </ul>
      </li>
      <!-- product end -->
      <!-- orders -->
      <li class="menu-item">
        <a href="pages/orders.html"> <span><i class="fas fa-clipboard-list fs-16"></i>Phiếu Đặt Bàn</span>
        </a>
      </li>
      <!-- orders end -->
      
      <!-- Invoice -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#invoice" aria-expanded="false" aria-controls="invoice"> <span><i class="fas fa-file-invoice fs-16"></i>Hóa Đơn </span>
        </a>
        <ul id="invoice" class="collapse" aria-labelledby="invoice" data-parent="#side-nav-accordion">
           <li> <a href="pages/invoice/invoicelist.html">Danh Sách Hóa Đơn</a> 
          </li>
          
          
        </ul>
      </li>
      <!-- Invoice end -->
     	
  
      
      <!-- Pages -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#pages" aria-expanded="false" aria-controls="pages"> 
        <span><i class="material-icons fs-16">insert_drive_file</i>Quản Lý Bàn</span>
        </a>
        <ul id="pages" class="collapse" aria-labelledby="pages" data-parent="#side-nav-accordion">
          <li class="menu-item"><a href="pages/ban/danhsachban.html"> Danh Sách Bàn </a></li>      	
					<li class="menu-item"><a href="pages/ban/themban.html">
							Thêm Bàn Mới </a></li>
					<li class="menu-item"><a href="pages/ban/chitietban.html">
							Chi Tiết Bàn </a></li>             			        	
        </ul>
      </li>
      <!-- /Pages -->
       <!-- Khach Hang -->
      <li class="menu-item">
        <a href="#" class="has-chevron collapsed" data-toggle="collapse" data-target="#customer" aria-expanded="false" aria-controls="customer"> <span><i class="fas fa-user-friends fs-16"></i>Khách Hàng </span>
        </a>
        <ul id="customer" class="collapse" aria-labelledby="customer" data-parent="#side-nav-accordion" >
          <li> <a href="${pageContext.request.contextPath}/nhanvien/pages/customer/danhsachkhachhang.html">Danh Sách Khách Hàng</a>
          </li>
          <li> <a href="${pageContext.request.contextPath}/nhanvien/pages/customer/themkhachhang.html">Thêm Khách Hàng</a>
          </li>
          <li> <a href="${pageContext.request.contextPath}/nhanvien/pages/customer/chitietkhachhang.html">Chi Tiêt Khách Hàng</a>
          </li>
        </ul>
      </li>
      <!-- khach hang -->
    </ul>
  </aside>