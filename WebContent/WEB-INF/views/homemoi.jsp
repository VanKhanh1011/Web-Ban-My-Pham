<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/home.css" />"
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

	<div class="page1">
		<header>
			<div class="header-top flex">
				<div class="logo">
					<p>
						<a href="showsanpham2.htm">LINCOS <span><i
								class="fa fa-magic"></i></span></a>
					</p>
					<!-- <a href=""><img src="img/l1.png" alt=""/></a> -->
				</div>
				<div class="header-top-right ">
				<div class="sign-search-xs ">
						<div class="sign-up " style="margin-top:-30px;">
								<ul class="flexx">
						<li class="header-account"> 
						<div class="dropdown-toggle" role="button" >
                        <div class="header-btns-icon">
                            <i class="fa fa-user-o"></i>
                        </div>
                        <% if (session.getAttribute("ten") != null) {%>
                        <strong class="text-uppercase"><%=session.getAttribute("ten")%> <i class="fa fa-caret-down"></i></strong>
                            <% } else { %>
                        <strong class="text-uppercase" style="font-size:18px;margin-bottom:80px"><i class="fa fa-user"></i></strong>
                            <% } %> 
                    </div>
                    <% if (session.getAttribute("ten") != null) {%>
                    <a href="dangxuat.htm" class="text-uppercase" style="font-size:18px;margin-top:80px">Đăng xuất</a>
                    <% } else { %>
                    <a href="loginuser.htm" class="text-uppercase"style="font-size:22px;margin-top:80px"><h6>Đăng nhập</h6></a>
                    <% }%>

                    <% if (session.getAttribute("ten") != null) {%>
                   
                        <a href = "thongtinkhachhang.htm?maKh=<%=session.getAttribute("ma")%>" style="font-size:18px;"><i class="fa fa-user-o"></i> Tài khoản của tôi</a>
                        <a href = "donhangkhachhang.htm?maKh=<%=session.getAttribute("ma")%>" style="font-size:18px;"><i class="fa fa-check"></i> Đơn hàng của tôi</a>
                        <a href = "danhsachuathich.htm?maKh=<%=session.getAttribute("ma")%>" style="font-size:18px;"><i class="fa fa-heart-o"></i> Yêu thích của bạn</a>
                    
                    <% } else { %>
                    <strong class="text-uppercase"></strong>
                    <% }%>
						</li>
						  <jsp:include page="cart.jsp" flush="true"></jsp:include>
						</ul>
						</div>
					</div>

					<div class="search" style="margin-top:-10px;">
						<form action="searchsanpham.htm" method="get">
                Tìm kiếm: <input class="input search-input" type="text" name="tensp" placeholder="Nhập từ khóa">
           		 </form>
					</div>
				</div>
			</div>
			<nav>
				<div class="header-bottom navbar container">
					<ul>
						<li><a href="showsanpham2.htm" class="first">TRANG CHỦ</a></li>
						<li><a href="">MAKEUP<i class="fa fa-angle-down icon"></i></a>
							<ul class="mega-menu">
								<li><span>FACE MAKEUP</span>
									<ul>
										<li><a href="getPhanPhu.htm">Phấn Phủ</a></li>
										<li><a href="getKemLot.htm">Kem Lót</a></li>
										<li><a href="getKemCheKhuyetDiem.htm">Kem Che Khuyết
												Điểm</a></li>
										<li><a href="getCushion.htm">Cushion</a></li>
										<li><a href="getMaHong.htm">Má Hồng</a></li>
									</ul></li>
								<li><span>LIPS MAKEUP</span>
									<ul>
										<li><a href="getLotMoi.htm">Lót Môi</a></li>
										<li><a href="getSonMoi.htm">Son Môi</a></li>
										<li><a href="getSonDuong.htm">Son Dưỡng</a></li>
										<li><a href="getLipsMask.htm">Lips Mask</a></li>
									</ul></li>
								<li><span>EYES MAKKEUP</span>
									<ul>
										<li><a href="getMascara.htm">Mascara</a></li>
										<li><a href="getMiGia.htm">Mi Giả</a></li>
										<li><a href="getKeMat.htm">Kẻ Mắt</a></li>
										<li><a href="getKeMay.htm">Kẻ Mày</a></li>
										<li><a href="getPhanMat.htm">Phấn Mắt</a></li>
									</ul></li>
								<li><span>BODY MAKKEUP</span>
									<ul>
										<li><a href="getKemLamTrang.htm">Kem Làm Trắng</a></li>
										<li><a href="getKemTayLong.htm">Kem Tẩy Lông</a></li>
									</ul></li>
							</ul></li>
						<li><a href="">SKINCARE<i class="fa fa-angle-down icon"></i></a>
							<ul class="GT">
								<li><a href="getSuaRuaMat.htm">Sửa Rửa Mặt</a></li>
								<li><a href="getKemChongNang.htm">Kem Chống Nắng</a></li>
								<li><a href="getMatNa.htm">Mặt Nạ</a></li>
								<li><a href="getTayTrang.htm">Tẩy Trang</a></li>
								<li><a href="getSerum.htm">Serum</a></li>
								<li><a href="getToner.htm">Toner</a></li>
								<li><a href="getLotion.htm">Lotion</a></li>
								<li><a href="getTayTeBaoChet.htm">Tẩy Tế Bào Chết</a></li>
							</ul></li>
						<li><a href="gioithieusp.htm">GIỚI THIỆU</a></li>
						<li><a href="tintuc.htm">TIN TỨC</a></li>
						<li><a href="lienhe.htm">LIÊN HỆ</a></li>
					</ul>
				</div>
			</nav>
		</header>

		<div class="pg1-content">
			<div class="owl-carousel">
				<img alt="" class="ah1"
					src="<c:url value="/resources/theme/img/h8.jpg" />"> <img
					alt="" class="ah2"
					src="<c:url value="/resources/theme/img/h14.jpg" />"> <img
					alt="" class="ah3"
					src="<c:url value="/resources/theme/img/h16.PNG" />">

			</div>
		</div>
	</div>
	<div class="page2 container">
		<h2>SẢN PHẨM NỔI BẬT</h2>

		<div class="hg1 flex">
			<c:forEach items="${sanpham}" var="s">
				<div class="product">

					<div class="product-box ">
						<img alt="" src="<c:url value="/resources/theme/img/${s.anh}" />">

						<div class="infor">
							<a href="detailsanpham.htm?maSp=${s.maSp}">${s.tenSp}" </a>
							<div class="price">
								<strong class="pri">${s.gia}</strong>
								<del class="discount">320000</del>
							</div>
							<%
								if (session.getAttribute("ten") != null) {
							%>

							<button class="main-btn icon-btn"
								onclick="location.href = 'uathich.htm?maSp=${s.maSp}&maKh=<%=session.getAttribute("ma")%>'">
								<i class="fa fa-heart"></i>
							</button>
							<%
								} else {
							%>

							<%
								}
							%>
							<button onclick="location.href = 'add.htm?maSp=${s.maSp}'"
								class="primary-btn add-to-cart">
								<i class="fa fa-shopping-cart"></i> Thêm giỏ hàng
							</button>
						</div>
					</div>

				</div>

			</c:forEach>

		</div>
		<div class="page3">
			<div class="list">
				<div class="item">
					<a href=""><img alt="" class="item1"
						src="<c:url value="/resources/theme/img/skc.jpg" />"></a> <a
						class="title" href="">SKINCARE</a>
				</div>
				<div class="item">
					<a href=""><img alt="" class="item1"
						src="<c:url value="/resources/theme/img/h40.jpg" />"></a> <a
						class="title" href="">MAKEUP</a>
				</div>
				<div class="item">
					<a href="blog.htm"><img alt="" class="item1"
						src="<c:url value="/resources/theme/img/blog.jpg" />"></a> <a
						class="title title3" href="blog.htm">BLOG</a>
				</div>
			</div>
		</div>

		<div class="page4">
			<div class="Info-left">
				<p class="logo1">
					<a href="home.htm">LINCOS <span><i class="fa fa-magic"></i></span></a>
				</p>
				<p>Ra đời với mục tiêu cung cấp các dịch vụ và những dòng sản
					phẩm chăm sóc Sức khỏe và Sắc đẹp được tạo từ những nguyên liệu
					thiên nhiên.</p>
				<h6>CÁC TRANG MẠNG XÃ HỘI</h6>
				<div class="icon-page6">
					<div class="Face">
						<a href="https://www.facebook.com/linhbathai123"><i
							class="fa fa-facebook-f"></i></a>
					</div>
					<div class="Twitter">
						<a href=""><i class="fa fa-twitter"></i></a>
					</div>
					<div class="Drib">
						<a href="https://www.instagram.com/linh.nho/?hl=vi"><i
							class="fa fa-instagram"></i></a>
					</div>
					<div class="Google">
						<a href=""><i class="fa fa-google"></i></a>
					</div>
				</div>
			</div>
			<div class="Info-right">
				<div class="News">
					<h4>ĐĂNG KÝ</h4>
					<p>Đăng ký nhận bản tin của LinCos để cập nhật những sản phẩm
						mới, nhận thông tin ưu đãi đặc biệt và thông tin giảm giá khác.</p>
					<div class="email-page6 flex">
						<input class="to" type="email" placeholder="Enter Your Email..." />
						<a><i class="fa fa-paper-plane"></i></a>

					</div>
				</div>
				<div class="End flex">
					<div class="Info">
						<h4>KHÁCH HÀNG</h4>
						<ul>
							<li><a href="showsanpham2.htm">TRANG CHỦ</a></li>
							<li><a href="tintuc.htm">TIN TỨC</a></li>
							<li><a href="gioithieusp.htm">GIỚI THIỆU</a></li>
							<li><a href="blog.htm">BLOG</a></li>
						</ul>
					</div>
					<div class="Info">
						<h4>CHÍNH SÁCH</h4>
						<ul>
							<li><a href="csdoitra.htm">CHÍNH SÁCH ĐỔI TRẢ</a></li>
							<li><a href="csbaomat.htm">CHÍNH SÁCH BẢO MẬT</a></li>
							<li><a href="dieukhoan.htm">ĐIỀU KHOẢN & DỊCH VỤ</a></li>

						</ul>
					</div>
					<div class="Contact-info">
						<h4>THÔNG TIN</h4>
						<label for="">ĐIỆN THOẠI</label>
						<p>035 941 4455</p>
						<label for="">EMAIL</label>
						<p>tranducvankhanh@gmail.com</p>
						<label for="">ĐỊA CHỈ</label>
						<p>D1/6,Đường 385,Tăng Nhơn Phú A,Quận 9</p>
						 <a href="DangNhap.htm" style="color:black;">♥</a>
					</div>
				</div>
			</div>
		</div>
</body>

<script src="resources/theme/js/jquery-3.3.1.min.js"></script>
<script src="resources/theme/js/owl.carousel.min.js"></script>
<script src="resources/theme/js/mypham.js"></script>
</html>