
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="/DoAnTotNghiepAdmin/views/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="/DoAnTotNghiepAdmin/views/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Admin LinCos
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    </head>

    <body class="">
    
        <c:if test="${ name==null}">
            <% response.sendRedirect("login.htm"); %>
        </c:if>
        <div class="wrapper ">
            <jsp:include page="headermoi.jsp" flush="true"></jsp:include>
            <h1 style=" font-size:35px; color:red; text-align:center; padding:30px;">ADMIN</h1>
                <div class="main-panel">
                    <!-- Navbar -->
                    <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " style="margin-left:500px;">
                        <div class="container-fluid">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="navbar-toggler-icon icon-bar"></span>
                                <span class="navbar-toggler-icon icon-bar"></span>
                                <span class="navbar-toggler-icon icon-bar"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end">
                            <form:form action="timtheotentintuc.htm?name=tenQc" method="POST" style="border:3px solid black; width:250px; margin-bottom:50px;margin-left:50px;">
                                <input name="tenVc" type="text" value="" class="form-control" placeholder="Search..." style="padding:4px 8px">
                                <button type="submit" class="btn btn-white btn-round btn-just-icon" style="margin-left:26px;border:none;height:40px;background:none;">
                                    <i class="material-icons">search</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </form:form>
                              <a class="dropdown-item" href="KhachHang.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-left:-470px;">Danh Sách Khách Hàng</a>
                                     <a class="dropdown-item" href="NhaCungCap.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px">Danh Sách Nhà Cung Cấp</a>
                                     <a class="dropdown-item" href="SanPham.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px">Danh Sách Sản Phẩm</a>
                                        <a class="dropdown-item" href="Dangky.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px">Đăng ký</a>
                                        <a class="dropdown-item" href="dangxuat.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Đăng xuất</a>
                                        <a class="dropdown-item" href="ThanhToan.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Thanh Toán</a>
                                         <a class="dropdown-item" href="VanChuyen.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Vận Chuyển</a>
                                          <a class="dropdown-item" href="HoaDon.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Hóa Đơn</a>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content" style="margin: 90px;border: 3px dashed red; padding:5px;margin-top:50px;">
                <h2 style=" text-align:center;margin-top:20px"> Danh Mục ADMIN</h2>
                    <button class="btn btn-link" style="color:black;margin-left:500px;margin-bottom:-300px;border:1px solid black;background:pink;padding:5px 30px;margin-top: 30px;"><a href="taomoiquantri.htm" style="margin-bottom:30px;">Thêm mới</a></button><br>
                    <table class="table table-bordered" style="margin-top:0px;padding: 50px;margin-left:120px;">
                        <thead>
                            <tr>
                                <th style="padding:10px 80px;">Tên quản trị</th>
                                <th style="padding:10px 80px;">Tài khoản</th>
                                <th style="padding:10px 80px;">Mật khẩu</th>
                                <th style="padding:10px 80px;">Chức năng</th>
                            </tr>
                        </thead>
                        <c:forEach items="${getAllqt}" var="qt">
                            <tr>
                                <td style="text-align:center;padding: 10px 0;">${qt.tenQt}</td>
                                <td style="text-align:center;padding: 10px 0;">${qt.taiKhoan}</td>
                                <td style="text-align:center;padding: 10px 0;">${qt.matKhau}</td>
                                <td style="text-align:center;padding: 10px 0;"><a href='updatequantri.htm?maQt=${qt.maQt}'>Sửa</a>
                                    |<a href='xoaquantri.htm?id=${qt.maQt}' onclick="return confirm('Bạn có muốn xóa tài khoản này không?')">Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
            <jsp:include page="page-end.jsp" flush="true"></jsp:include>
        </div>
    </div>
    <!--   Core JS Files   -->
    
</body>

</html>

