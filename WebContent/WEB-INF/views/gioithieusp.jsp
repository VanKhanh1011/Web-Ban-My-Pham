<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GIỚI THIỆU</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/gioithieusp.css" />"
	rel="stylesheet">

<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Vibes&display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Viga&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Heebo&display=swap"
	rel="stylesheet" />
</head>
<body>
	<%@ include file="headermoi.jsp"%>
	<div class="pic">
	<img alt="" class="ah1" src="<c:url value="/resources/theme/img/h15.jpg" />">
		
	</div>

	<div class="GioiThieu container flex">
		<div class="GT-left">
			<h3>DANH MỤC TRANG</h3>
			<div class="dm">
				<div class="dm1">
					<a href="tintuc.htm" title="Tin Tức">Tin Tức</a>
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

		<div class="GT-right">
			<h2>GIỚI THIỆU</h2>
			<div class="gt-content">
				<p class="gt1">Trang giới thiệu giúp khách hàng hiểu rõ hơn về
					cửa hàng của bạn. Hãy cung cấp thông tin cụ thể về việc kinh doanh,
					về cửa hàng, thông tin liên hệ. Điều này sẽ giúp khách hàng cảm
					thấy tin tưởng khi mua hàng trên website của bạn.</p>
				<p class="gt2">Một vài gợi ý cho nội dung trang Giới thiệu:</p>
				<ul>
					<li>Bạn là ai</li>
					<li>Giá trị kinh doanh của bạn là gì</li>
					<li>Địa chỉ cửa hàng</li>
					<li>Bạn đã kinh doanh trong ngành hàng này bao lâu rồi</li>
					<li>Đội ngũ của bạn gồm những ai</li>
					<li>Thông tin liên hệ</li>
					<li>Liên kết đến các trang mạng xã hội (Twitter, Facebook)</li>
				</ul>
			</div>
		</div>
	</div>
	<%@ include file="page-end.jsp" %>
</body>
</html>