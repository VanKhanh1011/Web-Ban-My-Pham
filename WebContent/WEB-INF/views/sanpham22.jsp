<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SẢN PHẨM 22</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/sanpham1.css" />"
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
	<img alt="" src="<c:url value="/resources/theme/img/h60.PNG" />">
	</div>

	<div class="GioiThieu container ">
		<div class="GT-left">
			<div class="GT-left-top" style="width:250px;margin-top:70px">
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
			<h2>TONER</h2>
			<div class="hg1 flex">
			<c:forEach items="${sanpham}" var="s">
				<div class="product">
					<div class="product-box ">
					<img alt="" src="<c:url value="/resources/theme/img/${s.anh}" />">

					<div class="infor">
						<a href="detailsanpham.htm?maSp=${s.maSp}">${s.tenSp}"  </a>
						<div class="price">
							<strong class="pri">${s.gia}</strong>
							<del class="discount">320000</del>
						</div>
						 <% if (session.getAttribute("ten") != null) {%>
                                        
                                        <button class="main-btn icon-btn" onclick="location.href = 'uathich.htm?maSp=${s.maSp}&maKh=<%=session.getAttribute("ma")%>'"><i class="fa fa-heart"></i></button>
                                            <% } else { %>

                                        <% }%>
                                        <button onclick="location.href = 'add.htm?maSp=${s.maSp}'" class="primary-btn add-to-cart" ><i class="fa fa-shopping-cart"></i> Thêm giỏ hàng</button>
					</div>
				</div>
				</div>
</c:forEach>
			</div>

		</div>
	</div>

	<%@ include file="page-end.jsp"%>
</body>
</html>