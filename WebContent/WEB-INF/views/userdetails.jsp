<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>LinCos</title>
    </head>
    <body>
            <jsp:include page="headermoi.jsp" flush="true"></jsp:include>
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!--  Product Details -->
                <div class="product product-details clearfix">
                    <div class="col-md-12">
                        <div class="product-body">
                            <table>  
                                <tr>
                                    <td><h1 class="product-name"> Tên Khách Hàng:</h1></td>
                                    <td><h1 class="product-name">&nbsp; </h1></td>
                                    <td><h1 class="product-name">${khachHang.tenKh}</h1></td>

                                </tr>
                                <tr>
                                    <td><h5 class="product-price">Tên Tài Khoản:</h5></td>
                                    <td><h1 class="product-name">&nbsp; </h1></td>
                                    <td><h5 class="product-price">${khachHang.tenTk}</h5></td>

                                </tr>
                                <tr>
                                    <td><h5 class="product-price">Địa chỉ:</h5></td>
                                    <td><h1 class="product-name">&nbsp; </h1></td>
                                    <td><h5 class="product-price">${khachHang.diaChi}</h5></td>

                                </tr>
                                <tr>
                                    <td><h5 class="product-price">Số Điện Thoại:</h5></td>
                                    <td><h1 class="product-name">&nbsp; </h1></td>
                                    <td><h5 class="product-price">${khachHang.soDienThoai}</h5></td>

                                </tr>
                                <tr>
                                    <td><h5 class="product-price">Email:</h5></td>
                                    <td><h1 class="product-name">&nbsp;</h1></td>
                                    <td><h5 class="product-price">${khachHang.email}</h5></td>
                                </tr>
                            </table>
                            <div class="product-btns">
                                <button class="primary-btn add-to-cart" onclick="location.href = 'capnhapkhachhang.htm?maKh=<%=session.getAttribute("ma")%>'">Sửa thông tin đặt hàng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Product Details -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>

   <%@ include file="page-end.jsp"%>
  

</body>

</html>

