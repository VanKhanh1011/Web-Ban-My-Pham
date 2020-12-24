<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
	<link href="<c:url value="/resources/theme/css/reset.css"/>" rel="stylesheet">
   	<link href="<c:url value="/resources/theme/css/home.css" />" rel="stylesheet">
   	<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
   	<link href="<c:url value="/resources/theme/css/owl.carousel.min.css" />" rel="stylesheet">
   	<link href="<c:url value="/resources/theme/css/owl.theme.default.min.cs" />" rel="stylesheet">
    
    <link
      href="https://fonts.googleapis.com/css?family=Vibes&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Viga&display=swap"
      rel="stylesheet"
    />
</head>
<body>
	<div class="page1">
		<header>
			<div class="header-top container flex">
				<div class="logo" style="width:500px;">
					<p>
						<a href="showsanpham2.htm.htm">LINCOS <span><i class="fa fa-magic"></i></span></a>
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
										<li><a href="getKemCheKhuyetDiem.htm">Kem Che Khuyết Điểm</a></li>
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
		<%-- <div class="pg1-content">
			<div class="owl-carousel">
			<img alt="" class="ah1" src="<c:url value="/resources/theme/img/h8.jpg" />">
			<img alt="" class="ah2" src="<c:url value="/resources/theme/img/h14.jpg" />">
			<img alt="" class="ah3" src="<c:url value="/resources/theme/img/h16.PNG" />">
				
			</div>
		</div> --%>
	</div>
</body>
	<script src="resources/theme/js/jquery-3.3.1.min.js"></script>
	<script src="resources/theme/js/owl.carousel.min.js"></script>
  	<script src="resources/theme/js/mypham.js"></script>

</html>