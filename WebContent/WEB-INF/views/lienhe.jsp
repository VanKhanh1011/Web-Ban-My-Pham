<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LIÊN HỆ</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/lienhe.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/owl.carousel.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/theme/css/owl.theme.default.min.cs" />"
	rel="stylesheet">
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>

<link href="https://fonts.googleapis.com/css?family=Vibes&display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Viga&display=swap"
	rel="stylesheet" />

</head>
<body>
	<%@ include file="headermoi.jsp"%>
	<div class="pic">
		<img alt="" src="<c:url value="/resources/theme/img/h60.PNG" />">
	</div>

	<div class="GioiThieu container ">
		<div class="GT-left">
			<div class="GT-left-top">
				<h3>DANH MỤC TRANG</h3>
				<div class="dm">
					<div class="dm1">
						<a href="tintuc.htm" title="Tin Tức">Tìm Kiếm</a>
					</div>
					<div class="dm1">
						<a href="gioithieusp.htm" title="Giới Thiệu">Giới Thiệu</a>
					</div>
					<div class="dm1">
						<a href="csdoitra.htm" title="Chính sách đổi trả">Chính Sách Đổi Trả</a>
					</div>
					<div class="dm1">
						<a href="csbaomat.htm" title="Chính Sách Bảo Mật">Chính sách Bảo Mật</a>
					</div>
					<div class="dm2">
						<a href="dieukhoan.htm" title="Điều Khoản & Dịch Vụ">Điều Khoản & Dịch Vụ</a>
					</div>
				</div>
			</div>
			<div class="GT-left-bottom">
			<img alt="" src="<c:url value="/resources/theme/img/page_banner.jpg" />">
				
			</div>
		</div>

		<div class="GT-right">
			<h2>LIÊN HỆ</h2>
			<div class="gt-content">
				<div class="gt-content1">
					<P class="gt1">Địa chỉ chúng tôi</P>
					<p class="td1">Số nhà D1/6, đường 385, phường TĂng Nhơn Phú A,
						quận 9, Tp. Hồ Chí Minh.</p>

				</div>
				<div class="gt-content2">
					<p class="td3">Email chúng tôi</p>
					<p class="td2">tranducvankhanh@gmail.com</p>


				</div>
				<div class="gt-content3">
					<p class="td5">Điện thoại</p>
					<p class="td4">035 941 4455</p>

				</div>
				<div class="gt-content4">
					<p class="td7">Thời gian làm việc</p>
					<p class="td6">Thứ 2 đến Thứ 6 từ 8h đến 18h; Thứ 7 và Chủ nhật
						từ 8h00 đến 17h00</p>

				</div>
			</div>
		</div>
	</div>

	
	<%@ include file="page-end.jsp"%>
</body>
</html>