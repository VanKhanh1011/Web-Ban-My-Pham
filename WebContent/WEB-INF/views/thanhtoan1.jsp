
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mytag" uri="/WEB-INF/my-tag.tld" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Admin Lincos
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
                                <a class="navbar-brand" href="#" style=" font-size:35px; color:red; text-align:center; padding:30px;margin-left:480px;">Phương thức thanh toán</a>
                            </div>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="navbar-toggler-icon icon-bar"></span>
                                <span class="navbar-toggler-icon icon-bar"></span>
                                <span class="navbar-toggler-icon icon-bar"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end" style="margin-left:500px;">
                            <form:form action="timtheotentt.htm?name=tenTt" method="POST" style="border:3px solid black; width:250px; margin-bottom:50px;margin-left:50px;">
                                <input name="tenTt" type="text" value="" class="form-control" placeholder="Search..." style="padding:4px 8px">
                                <button type="submit" class="btn btn-white btn-round btn-just-icon" style="margin-left:26px;border:none;height:40px;background:none;">
                                    <i class="material-icons">search</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </form:form>
                            <ul class="navbar-nav">
                               
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
                <div class="content" style="margin: 30px;border: 3px dashed red; padding:5px;margin-top:50px;">
                    <button class="btn btn-link" style="color:black;margin-left:560px;margin-bottom:-300px;border:1px solid black;background:pink;padding:5px 30px;margin-top: 30px;"><a href="taomoi.htm" >Thêm mới</a></button><br>
                    <table class="table table-bordered" style="margin-top:0px;padding: 50px;margin-left:0px;">
                        <thead>
                            <tr>
                                <th style="padding:10px 80px;">Mã thanh toán</th>
                                <th style="padding:10px 80px;">Tên thanh toán</th>
                                <th style="padding:10px 80px;">Mô tả</th>
                                <th style="padding:10px 80px;">Chức năng</th>
                            </tr>
                        </thead>
                        <c:forEach items="${getAlltt}" var="tt">
                            <tr>
                                <td style="text-align:center;padding: 10px 0;">${tt.maTt}</td>
                                <td style="text-align:center;padding: 10px 0;">${tt.tenTt}</td>
                                <td style="text-align:center;padding: 10px 0;">${tt.mota}</td>
                                <td style="text-align:center;padding: 10px 0;"> <button class="btn btn-link"><a href='updatethanhtoan.htm?maTt=${tt.maTt}' style="color:red;">Sửa</a></button> 
                                    <button class="btn btn-link"><a href='xoathanhtoan.htm?maTt=${tt.maTt}&tenTt=${tt.tenTt}&mota=${tt.mota}&trangThai=${tt.trangThai}' onclick="return confirm('Bạn có muốn xóa pt thanh toán này không?')" style="color:green;">Xóa</a></button>
                                    <button class="btn btn-link"><a href='chitiet.htm?maTt=${tt.maTt}' style="color:blue;">Chi tiết</a></button>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="row">
                        <div class="col-md-12 col-sm-12" style="text-align: right"></div>
                    </div>
                    <br>
                    <div class="keys" style="display: none" title="/shop">
                        <span>2</span><span>3</span><span>4</span>
                    </div>
                    <div style=" text-align: center ;padding-right: 20px">
                        <mytag:my_tag steps="4" offset="${offset}" count="${numberProductDetail}" uri="ThanhToan.htm" next="&raquo;" previous="&laquo;"/>
                    </div>
                </div>
            </div>
            <jsp:include page="page-end.jsp" flush="true"></jsp:include>
        </div>
    </div>
   
</body>

</html>

