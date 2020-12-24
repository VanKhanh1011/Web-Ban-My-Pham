<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
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
        <div class="wrapper ">
            
            <jsp:include page="headermoi.jsp" flush="true"></jsp:include>
                <div class="main-panel">
                    <!-- Navbar -->
                    <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
                        <div class="container-fluid">
                            <div class="navbar-wrapper">
                                <a class="navbar-brand" href="#" style="text-align:center; color:red;font-size:35px;margin-left:500px;">Chi tiết sản phẩm</a>
                            </div>
                            <div class="collapse navbar-collapse justify-content-end" style="margin-left:500px;">
                            <form:form action="timtensanpham.htm?name=tenSp" method="POST" style="border:3px solid black; width:250px; margin-bottom:50px;margin-left:0px;margin-top:20px">
                                <input name="tenSp" type="text" value="" class="form-control" placeholder="Search..." style="padding:4px 8px">
                                <button type="submit" class="btn btn-white btn-round btn-just-icon" style="margin-left:26px;border:none;height:40px;background:none;">
                                    <i class="material-icons">search</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </form:form>
                            <ul class="navbar-nav" style="margin-top:-20px;">
                                <li class="nav-item dropdown">
                                   <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                        <a class="dropdown-item" href="KhachHang.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-left:-470px;">Danh Sách Khách Hàng</a>
                                     <a class="dropdown-item" href="NhaCungCap.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px">Danh Sách Nhà Cung Cấp</a>
                                     <a class="dropdown-item" href="SanPham.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px">Danh Sách Sản Phẩm</a>
                                        <a class="dropdown-item" href="Dangky.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px">Đăng ký</a>
                                        <a class="dropdown-item" href="dangxuat.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Đăng xuất</a>
                                        <a class="dropdown-item" href="ThanhToan.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Thanh Toán</a>
                                         <a class="dropdown-item" href="VanChuyen.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Vận Chuyển</a>
                                          <a class="dropdown-item" href="HoaDon.htm" style="color:black; margin-right:20px;border:3px solid black;background:pink;padding:5px 10px;margin-top:30px;">Hóa Đơn</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div style="margin: 90px;border: 3px dashed red; padding:5px;margin-top:50px;" >
                    <table class="table table-bordered" style="margin-top:0px;padding: 50px;margin-left:-70px;">
                        <thead>
                            <tr>
                                <th style="padding:10px 80px;">Mã sản phẩm</th>
                                <th style="padding:10px 80px;">Tên sản phẩm</th>
                                <th style="padding:10px 80px;">Ảnh sản phẩm</th>
                                <th style="padding:10px 80px;">Giá</th>
                                <th style="padding:10px 80px;">Mô tả</th>
                                <th style="padding:10px 80px;">Nhóm sản phẩm</th>
                                <th style="padding:10px 80px;">Nhà cung cấp</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="text-align:center;padding: 10px 0;">${sp.maSp}</td>
                                <td style="text-align:center;padding: 10px 0;">${sp.tenSp}</td>
                                <td style="text-align:center;padding: 10px 0;"><img src='${sp.anh}' width='100'/></td>
                                <td style="text-align:center;padding: 10px 0;">${sp.gia}</td>
                                <td style="text-align:center;padding: 10px 0;">${sp.mota}</td>
                                <td style="text-align:center;padding: 10px 0;">${sp.maNhomSp.tenNhomSp}</td>
                                <td style="text-align:center;padding: 10px 0;">${sp.maNcc.tenNcc}</td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
            <jsp:include page="page-end.jsp" flush="true"></jsp:include>
        </div>
    </div>
   
</body>

</html>

