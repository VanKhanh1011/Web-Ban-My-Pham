<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHÍNH SÁCH ĐỔI TRẢ</title>
<title>GIỚI THIỆU</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/theme/css/csdoitra.css"/>"
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
     <img alt="" src="<c:url value="/resources/theme/img/h15.jpg" />">
    </div>

    <div class="GioiThieu container flex">
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
        <h2>CHÍNH SÁCH ĐỔI TRẢ</h2>
        <div class="gt-content">
          <div class="gt-content1">
            <p class="td1">I. Điều kiện đổi trả</p>
            <p class="gt1">
              Quý Khách hàng cần kiểm tra tình trạng hàng hóa và có thể đổi
              hàng/ trả lại hàng ngay tại thời điểm giao/nhận hàng trong những
              trường hợp sau:
            </p>
            <ul>
              <li>
                Hàng không đúng chủng loại, mẫu mã trong đơn hàng đã đặt hoặc
                như trên website tại thời điểm đặt hàng.
              </li>
              <li>Không đủ số lượng, không đủ bộ như trong đơn hàng.</li>
              <li>
                Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể
                vỡ…
              </li>
            </ul>
            <p class="gt2">
              Khách hàng có trách nhiệm trình giấy tờ liên quan chứng minh sự
              thiếu sót trên để hoàn thành việc hoàn trả/đổi trả hàng hóa.
            </p>
          </div>
          <div class="gt-content2">
            <p class="td2">
              II.Quy định về thời gian thông báo và gửi sản phẩm đổi trả
            </p>
            <ul>
              <li>
                <span>Thời gian thông báo đổi trả:</span> trong vòng 48h kể từ
                khi nhận sản phẩm đối với trường hợp sản phẩm thiếu phụ kiện,
                quà tặng hoặc bể vỡ.
              </li>
              <li>
                <span>hời gian gửi chuyển trả sản phẩm:</span>trong vòng 14 ngày
                kể từ khi nhận sản phẩm.
              </li>
              <li>
                <span>Địa điểm đổi trả sản phẩm:</span>Khách hàng có thể mang
                hàng trực tiếp đến văn phòng/ cửa hàng của chúng tôi hoặc chuyển
                qua đường bưu điện.
              </li>
            </ul>
            <p class="td3">
              Trong trường hợp Quý Khách hàng có ý kiến đóng góp/khiếu nại liên
              quan đến chất lượng sản phẩm, Quý Khách hàng vui lòng liên hệ
              đường dây chăm sóc khách hàng của chúng tôi.
            </p>
          </div>
        </div>
      </div>
    </div>
    <%@ include file="page-end.jsp"%>
</body>
</html>