<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mô Tả</title>
<link href="<c:url value="/resources/theme/css/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/info.css" />"
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
	<link rel="stylesheet" href="css/all.min.css" />
	<meta property="fb:app_id" content="531471584198915"/>
<meta property="fb:admins" content="103557623183987"/>
</head>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=531471584198915&autoLogAppEvents=1"></script>
<body>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=531471584198915&autoLogAppEvents=1"></script>
	<%@ include file="headermoi.jsp"%>
	<div class="pic">
	<img alt="" src="<c:url value="/resources/theme/img/h60.PNG" />">
	</div>

	<div class="GioiThieu container ">
			 <div class="pp">
        <div class="ship__img">
                <img src="<c:url value="/resources/theme/img/${sanpham.anh}" />" alt="hinh anh">
        </div>
       
        <div class="note">
           <h2>${sanpham.tenSp}</h2>
           <h3>${sanpham.gia}</h3>
           <p>Giá thị trường: 148,200 ₫ - Tiết kiệm: 28,000 ₫ <span>(-23%) </span></p>
            <h4>Thương hiệu: ${sanpham.maNcc.tenNcc} </h4>
              <!--  <div class="color">
                   <h5>Chọn màu:</h5>
                   <div class="butt">
                       <a href="#"></a> 
                        <a href="#"></a> 
                      <a href="#"></a>
                   </div>
               </div> -->
               <form action="sub2.htm" method="post" class="shop">
                <div class="soluong">
                    <h5>Số Lượng :</h5>
                    <input class="input" name="maSp" value= "${sanpham.maSp}"  type="hidden">
                    <input class="input" name="soLuong" type="number" required="required" min="1">
                </div>
               <button>Thêm Vào Giỏ Hàng</button> 
               </form>

          
        </div>
        <div class="ship">
            <div class="ship__content">
                <div class="ship__items">
                    <img src="<c:url value="/resources/theme/img/chinh-sach-04.png" />" alt="">
                    <div class="ship__right">
                        <h4>
                            Mỹ phẩm 100% chính hãng
                            </h4>
                            <p> Chất lượng sản phẩm luôn được chứng nhận bằng sự tin cậy của Khách Hàng suốt nhiều năm qua</p>
                    </div>
                </div>
                <div class="ship__items">
                        <img src="<c:url value="/resources/theme/img/chinh-sach-05.png" />" alt="">
                        <div class="ship__right">
                            <h4>
                                Luôn được tích điểm
                                </h4>
                                <p> Đơn hàng từ 100k=1 điểm 10 điểm nhận voucher 100k</p>
                        </div>
                    </div>
               
                    <div class="ship__items second">
                            <img src="<c:url value="/resources/theme/img/chinh-sach-06.png" />" alt="">
                            <div class="ship__right">
                                <h4>
                                    Miễn phí giao hàng
                                    </h4>
                                    <p>Đơn hàng trên 200k nội thành HCM </p>
                            </div>
                        </div>
                <div class="ship__items">
                        <img src="<c:url value="/resources/theme/img/chinh-sach-07.png" />" alt="">
                        <div class="ship__right">
                            <h4>
                                    Tri ân khách hàng
                                </h4>
                                <p> Với các chương trình khuyến mãi, các sự kiện & quà tặng đặc biệt vô cùng hấp dẫn</p>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <div class="info">
        <div class="info__content">
            <div class="info__items">
                    <h2>Mô Tả Sản Phẩm</h2>
                    <p>${sanpham.mota}</p>
            </div>
        </div>
    </div>
     <% if (session.getAttribute("ten") != null) {%>
     <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-numposts="5" data-width=""></div>
                                        <div class="question">
        <h2>Hỏi, Đáp Về Sản Phẩm</h2>
        <div class="bottom">
            <input type="text" placeholder="Hãy đặt câu hỏi liên quan đến sản phấm...">
            <button type="submit">Gửi câu hỏi</button>
            <div class="fb-comments" data-href="<?php the_permalink();?>" data-width="100%" data-numposts="15" data-colorscheme="light"></div>
        </div>
    </div>
     <div class="feedback">
<h2>Nhận Xét Và Đánh Giá</h2>
  <div class="danhgia">
      <p>1. Đánh giá của bạn về sản phẩm này: </p>
      <div class="feedback__star">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
      </div>
  </div>
  <div class="nhanxet">
      <p>2. Viết nhận xét của bạn vào bên dưới:</p>
      <textarea name="" id="" cols="30" rows="10" placeholder="Nhận xét..."></textarea>
      <button type="submit">Gửi Nhận Xét</button>
  </div>
    </div>
                                            <% } else { %>

                                        <% }%>
   
   
	</div>


	<%@ include file="page-end.jsp"%>
</body>
</html>