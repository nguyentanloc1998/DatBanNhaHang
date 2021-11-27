<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<head>

<title>Đăng Ký</title>
<meta charset="UTF-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="">
<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/fonts/dangnhap.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css">
<!--===============================================================================================-->


</head>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt=""
					style="will-change: transform; transform: perspective(300px) rotateX(0deg) rotateY(0deg);">
					<img src="${pageContext.request.contextPath}/images/bgr.png"
						alt="IMG">
				</div>

				<form action="${pageContext.request.contextPath}/Register" method="post" class="login100-form validate-form">
					<span class="login100-form-title"> Đăng Ký </span>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="taikhoan"
							placeholder="Tài Khoản"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-user"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass"
							placeholder="Mật Khẩu"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass1"
							placeholder="Nhập Lại Mật Khẩu"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-retweet" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="hoten"
							placeholder="Họ Tên"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-book"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="sdt"
							placeholder="Số Điện Thoại"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-th-list"
							aria-hidden="true"></i>
						</span>
					</div>
<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="diachi"
							placeholder="Địa Chỉ"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-book"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Địa Chỉ Email"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-envelope"
							aria-hidden="true"></i>
						</span>
					</div>


					
						<div class="container-login100-form-btn">
							<button class="login100-form-btn" type="submit">Đăng Ký
							</button>
						</div>
					


				</form>
			</div>
		</div>
	</div>


</body>
</html>