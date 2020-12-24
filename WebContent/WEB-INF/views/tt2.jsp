<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TIN TỨC</title>

<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/theme/css/tt1.css"/>"
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
<%@include file="headermoi.jsp" %>
	<div class="pic">
       <img alt="" src="<c:url value="/resources/theme/img/h15.jpg" />">
    </div>

    <div class="GioiThieu container ">
      <div class="GT-left">
        <div class="GT-left-top">
          <h3>DANH MỤC TRANG</h3>
          <div class="dm">
            <div class="dm1"><a href="tintuc.htm" title="Tin Tức">Tin Tức</a></div>
            <div class="dm1"><a href="gioithieusp.htm" title="Giới Thiệu">Giới Thiệu</a></div>
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
        <h2>[Thông Báo] Đồng Hành Cùng Bạn Vượt Dịch Corona</h2>
        <div class="gt-content">
          <div class="gt-content1">
            <p class="td1">
          Chương trình đặc biệt: <br>

		ĐỒNG GIÁ Phí SHIP từ 5K quà tặng trị giá #100K:  <br>

		- Chương trình áp dụng khách hàng online từ 𝟏𝟐𝐇 ngày 𝟏𝟖.𝟎𝟑 đến hết 𝟐𝟐.𝟎𝟑:  <br>

		+ Nội thành HCM: đồng giá ship 5k với hóa đơn trên 100k  <br>
		+ Ngoại thành HCM: đồng giá ship 5k với hóa đơn trên 200k  <br>
		+ Tỉnh và các TP Khác: đồng giá ship 15k với hóa đơn trên 200k  <br>
		+ Freeship khi đặt hàng qua livestream (live vào thứ 4 và 5 và 6) áp dụng với hóa đơn từ 299K  <br>
		+ Hóa đơn trên 400K tặng ngay Mặt Nạ Rosie hoặc Mặt Nạ Rosa  <br>
		+ Hóa đơn trên 600K tặng ngay sản phẩm tẩy tế bào chết Huxley  <br>
	
            </p>
          </div>
        </div>
      </div>
    </div>
    <%@include file="page-end.jsp" %>
</body>
</html>