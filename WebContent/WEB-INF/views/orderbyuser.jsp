<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
            <div id="navigation">
                <!-- container -->
                <div class="container">
                    <%-- <div id="responsive-nav">
                        <!-- category nav -->
                        <div class="category-nav show-on-click">
                            <span class="category-header">Categories <i class="fa fa-list"></i></span>
                            <ul class="category-list">
                            <c:forEach var="item" items="${nhomsanpham}">
                                <li class="dropdown side-dropdown">
                                    <a onclick="location.href = 'searchbynhomsp.htm?maNhomSp=${item.maNhomSp}'" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">${item.tenNhomSp}<i class="fa fa-angle-right"></i></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div> --%>
               <!--  <div class="menu-nav">
                    <span class="menu-header">Menu <i class="fa fa-bars"></i></span>
                    <ul class="menu-list">
                        <li><a href="redirect.jsp">Home</a></li>
                        <li><a href="#">Shop</a></li>
                        <li><a href="#">Sales</a></li>
                        <li class="dropdown default-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Pages <i class="fa fa-caret-down"></i></a>
                            <ul class="custom-menu">
                                <li><a href="redirect.jsp">Home</a></li>
                                <li><a href="products.html">Products</a></li>
                                <li><a href="product-page.html">Product Details</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div> -->
                <!-- menu nav -->
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /NAVIGATION -->
    <!-- section -->

    <!------ Include the above in your HEAD tag ---------->

    <div class="container chitietdonhang">
        <table class="shopping-cart-table table">
            <thead>
                <tr>
                    <th class="text-center">Tên khách hàng</th>
                    <th class="text-center">Địa chỉ</th>
                    <th class="text-center">Số điện thoại</th>
                    <th class="text-center">Tổng tiền </th>
                    <th class="text-center">Ngày mua </th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${donhang}" var="dh">
                    <tr>
                        <td class="thumb text-center">${dh.tenKh}</td>
                        <td class="price text-center"><strong>${dh.diaChi}</strong><br><del class="font-weak"></del></td>
                        <td class="price text-center"><strong>${dh.soDienThoai}</strong><br><del class="font-weak"></del></td>
                        <td class="total text-center"><strong class="primary-color">${dh.tongTien}</strong></td>
                        <td class="thumb text-center">${dh.ngayMua}</td>
                        <td><h4><a href="chitietdonhang.htm?maDh=${dh.maDh}">Chi tiết đơn hàng</a></h4></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <jsp:include page="page-end.jsp" flush="true"></jsp:include>
   
    
</body>

</html>
