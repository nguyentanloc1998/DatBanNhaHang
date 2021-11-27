<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html lang="vn">
<!-- Basic -->
<head>

<title>Đăng Nhập</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="">
<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/dangnhap.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<!--===============================================================================================-->


</head>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt=""
					style="will-change: transform; transform: perspective(300px) rotateX(0deg) rotateY(0deg);">
					<img src="${pageContext.request.contextPath}/images/bgr.png" alt="IMG">
				</div>
<form action="${pageContext.request.contextPath}/Login" method="post">
				<form class="login100-form validate-form">
					<span class="login100-form-title"> Đăng Nhập </span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username"
							placeholder="Tài Khoản"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-user"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="password"
							placeholder="Mật Khẩu"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					
						<div class="container-login100-form-btn">
							<button type="submit" class="login100-form-btn">Đăng
								Nhập</button>
						</div>
					
					<div class="text-center p-t-12">
						<span class="txt1"> Quên </span> <a class="txt2" href="#"> Mật
							Khẩu? </a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="${pageContext.request.contextPath}/Register"> Đăng Ký Tài Khoản <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
		</form>
			</div>
		</div>
	</div>


</body>
</html>