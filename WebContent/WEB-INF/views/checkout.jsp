<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>LinCos</title>
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
    </head>
    <body>
        <header>
            <jsp:include page="headermoi.jsp" flush="true"></jsp:include>
            </header>
   <!--  <div id="breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Checkout</li>
            </ul>
        </div>
    </div> -->
    <!-- /BREADCRUMB -->

    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->


        <% if (session.getAttribute("myCartItems") != null) {%>
        <div class="row">
            <div class="col-md-12">
                <form id="checkout-form">
                    <div class="section-title" >
                        <h3 class="title" style="text-align:center;font-size:30px;color:red;margin-bottom:30px">Chi tiết đơn hàng</h3>
                        
                    </div>
                    <table class="shopping-cart-table table" style="margin: 30px;border: 3px dashed green; padding:5px;margin-top:50px;">
                        <thead>
                            <tr>
                                <th style="padding:10px 80px;">Ảnh</th>
                                <th style="padding:10px 80px;">Product</th>
                                <th class="text-center" style="padding:10px 80px;">Price</th>
                                <th class="text-center" style="padding:10px 80px;">Quantity</th>
                                <th class="text-center" style="padding:10px 80px;">Total</th>
                                <th class="text-right" style="padding:10px 80px;"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="map" items="${myCartItems}">
                                <tr>
                                    <td class="thumb" style="text-align:center;padding: 10px 0;"><img src="${map.value.sanPham.anh}" alt=""></td>
                                    <td class="details" style="text-align:center;padding: 10px 0;">
                                        <a href="#">${map.value.sanPham.tenSp}</a>
                                    </td>
                                    <td class="price text-center" style="text-align:center;padding: 10px 0;"><strong>$${map.value.sanPham.gia}</strong><br><del class="font-weak"></del></td>
                                    <td class="qty text-center" style="text-align:center;padding: 10px 0;">
                                        <a class="fa fa-arrow-left" href = "giam.htm?maSp=${map.value.sanPham.maSp}"/>
                                        &nbsp;&nbsp;
                                        <input class="input" type="number" value="${map.value.soLuong}" readonly="true"/>
                                        &nbsp;&nbsp;
                                        <a class="fa fa-arrow-right" href = "tang.htm?maSp=${map.value.sanPham.maSp}"/>
                                    </td>
                                    </td>
                                    <td class="total text-center" style="text-align:center;padding: 10px 0;"><strong class="primary-color"><fmt:formatNumber value="${map.value.soLuong * map.value.sanPham.gia}"/></strong></td>
                                   <%--  <td class="text-right"><button class="main-btn icon-btn" onclick="location.href ='remove.htm?maSp=${map.value.sanPham.maSp}"><i class="fa fa-close"></i></button></td> --%>
                              
                               <td class="text-right" style="text-align:center;padding: 10px 0;"> <button class="cancel-btn" onclick="location.href ='remove.htm?maSp=${map.value.sanPham.maSp}'"><i class="fa fa-trash"></i></button></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>
            <div style="border:3px solid black; background:pink; padding:20px;margin-left:30px;border-radius:15px;display:flex;justify-content:space-between;width:900px"> 
             <div class="col-md-6" style="margin-left:30px">
                <div class="shiping-methods">
                    <div class="section-title">
                        <h4 class="title" style="color:black; font-weight:bold;color:green">Phương thức vận chuyển</h4>
                    </div>

                    <c:forEach var="vc" items="${vanchuyen}">
                        <div class="input-checkbox" style="margin-left:30px;margin-top:30px;">
                        
                            <input type="radio" onclick="location.href = 'checkedvanchuyen.htm?maVc=${vc.maVc}'" id="shipping-1" >
                            <label style="color:blue;" for="shipping-1">${vc.tenVc} -  <fmt:formatNumber value="${vc.gia}" /> VNĐ</label>
                            <div class="caption">
                                <p style="margin-left:50px;margin-top:30px">${vc.mota}
                                <p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
             <f:form id="checkout-form" class="clearfix" action="muahang.htm" commandName="donHang" method="get" style="margin-left:-200px;text-align:center">
                <div class="col-md-6">
                    <div class="billing-details">
                        <div class="section-title">
                            <h3 class="title" style="color:black; font-weight:bold;color:green;margin-bottom:20px">Chi tiết khách hàng</h3>
                        </div>
                        <% if (session.getAttribute("ten") != null) {%>
                        <div class="form-group" style="margin-bottom:20px; margin-top:20px" >
                            <f:input class="input" type="hidden" path="maKh" value='<%=session.getAttribute("ma")%>' style="border:1px solid black; padding:5px 20px"/>
                        </div>
                        <div class="form-group">
                            <f:input class="input" type="text" path="tenKh" placeholder="Họ và tên" value='<%=session.getAttribute("ten")%>' required="required"/>
                        </div>
                        <div class="form-group">
                            <f:input class="input" type="email" path="email" placeholder="Email" value='<%=session.getAttribute("email")%>' required="required"/>
                        </div>
                        <div class="form-group">
                            <f:input class="input" type="text" path="diaChi" placeholder="Địa chỉ" value='<%=session.getAttribute("diachi")%>' required="required"/>
                        </div>
                        <div class="form-group">
                            <f:input class="input" type="text" path="soDienThoai" placeholder="Số điện thoại" value='<%=session.getAttribute("sodienthoai")%>' required="required"/>
                        </div>
                        <% } else { %>
                        <h4 class="color1" style="margin-left:30px;margin-top:30px;">Bạn chưa đăng nhập tài khoản? <a href="loginuser.htm" class="btn btn-info">Đăng nhập ngay</a></h4>
                        <% }%>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="order-summary clearfix">
                        <div class="section-title">
                            <h3 class="title" style="margin-left:30px;margin-top:30px;color:green;margin-bottom:30px">Tổng giá thành</h3>
                        </div>
                        <table class="shopping-cart-table table">
                            <tfoot>
                                <tr style="margin-left:60px;margin-top:30px;">
                                    <th class="empty" colspan="3"></th>
                                    <th style="margin-left:30px;margin-top:30px;color:blue;margin-top:20px;margin-bottom:20px">Phương thức thanh toán</th>
                                    <td colspan="2"><f:select class="browser-default custom-select custom-select-lg mb-3" path="maTt" items="${thanhtoan}" itemLabel="tenTt" itemValue="maTt"/><br></td>
                                </tr>
                                <tr style="margin-left:60px;margin-top:30px;">
                                    <th class="empty" colspan="3"></th>
                                    <th style="margin-left:30px;margin-top:30px;color:blue">Giá sản phẩm</th>
                                    <th colspan="2" class="sub-total"><h4><fmt:formatNumber value="${sessionScope.myCartTotal}"/></h4></th>
                            </tr>
                            <tr style="margin-left:60px;margin-top:30px;margin-bottom:30px;">

                                <th class="empty" colspan="3"></th>
                                <th style="margin-left:30px;margin-top:30px;color:blue">Giá vận chuyển</th>
                                    <% if (session.getAttribute("mavanchuyen") != null) {%>
                                <td colspan="2"><h4>${mavanchuyen.gia}</h4><f:input path="maVc" type="hidden" value="${mavanchuyen.maVc}"/></td>
                                        <% } else { %>
                                <td colspan="2"><div><h4  class="color">Bạn cần lựa chọn phương thức vận chuyển</h4></div></td>

                                <% } %>
                            </tr>

                            <tr style="margin-left:30px;margin-top:30px;margin-bottom:30px;">
                                <th class="empty" colspan="3"></th>
                                <th style="color:blue">Tổng</th>
                                <th colspan="2" class="total"><h4><fmt:formatNumber value="${sessionScope.myCartTotal + mavanchuyen.gia}"/> </h4>VNĐ 
                            <f:input path="tongTien"  type="hidden"  value="${sessionScope.myCartTotal + mavanchuyen.gia}"/> </th>
                            </tr>
                            </tfoot>
                        </table>
                        <% if (session.getAttribute("mavanchuyen") != null) {%>
                        <% if (session.getAttribute("ten") != null) {%>
                        <div class="pull-right">
                            <f:button onclick="return confirm('Bạn có muốn thanh toán không')" class="primary-btn">Thanh toán</f:button>
                            </div>
                        <% } else { %>
                        <div class="pull-right">
                            <a href="loginuser.htm" onclick="return confirm('Bạn cần đăng nhập')" class="primary-btn">Thanh toán</a>
                        </div>
                        <% }%>
                        <% }%>


                    </div>
                </div>
            </f:form>
            </div>
           

           
        </div>
        <% } else { %>
        <div class="text-center">
        <h3 class="color">Không có sản phẩm nào trong giỏ hàng</h3>
        <a href="redirect.jsp" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGydwbs-dgjc77D9Ur7jBeiUf4sO5QV2B1YDMF0kBhqr10V3-v" width="150px" height="150px" /></a>
            </div>
        <% }%>


            <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /section -->


<jsp:include page="page-end.jsp" flush="true"></jsp:include>

</body>

</html>

