<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
                                <a class="navbar-brand" href="#pablo" style="text-align:center;color:red;font-size:35px;margin-bottom:20px;margin-left:500px;">Sửa trạng thái đơn hàng</a>
                            </div>
                            <div class="collapse navbar-collapse justify-content-end" style="margin-left:500px;">
                                <form class="navbar-form" style="border:3px solid black; width:250px; margin-bottom:50px;margin-left:0px;margin-top:30px;" >
                                    <div class="input-group no-border">
                                        <input type="text" value="" class="form-control" placeholder="Search..." style="padding:4px 8px">
                                        <button type="submit" class="btn btn-white btn-round btn-just-icon" style="margin-left:26px;border:none;height:40px;background:none;">
                                            <i class="material-icons">search</i>
                                            <div class="ripple-container"></div>
                                        </button>
                                    </div>
                                </form>
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
                    <div class="content">
                    <f:form action="settt.htm" method="post" commandName="donhang" style="margin-left:500px;margin-top:30px;">
                    <div class="form-group" style="margin-bottom:20px">
                            <f:input type="" readonly="true" class="form-control" path="maDh" required="required" style="border-bottom:1px solid black;"/>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                         <f:input path="maKh" itemValue="maKh" class="form-control" style="border-bottom:1px solid black;"/>
                             <%--  <f:input type="" readonly="true" class="form-control" path="maKh" required="required" style="border-bottom:1px solid black;"/> --%>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                              <f:input type="" readonly="true" class="form-control" path="tenKh" required="required" style="border-bottom:1px solid black;"/>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                             <f:input type="" readonly="true" class="form-control" path="email" required="required" style="border-bottom:1px solid black;"/>
         
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                              <f:input type="" readonly="true" class="form-control" path="diaChi" required="required" style="border-bottom:1px solid black;"/>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                             <f:input type="" readonly="true" class="form-control" path="soDienThoai" required="required" style="border-bottom:1px solid black;"/>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                             <f:input type="" readonly="true" class="form-control" path="tongTien" required="required" style="border-bottom:1px solid black;"/>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                             <f:input type="" readonly="true" class="form-control" path="ngayMua" required="required" style="border-bottom:1px solid black;"/>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                           <f:input items="${tt}" path="maTt" itemValue="maTt" itemLabel="tenTt"  style="border-bottom:1px solid black;"/> 
                            <%--  <f:input type="" readonly="true" class="form-control" path="maTt" required="required" style="border-bottom:1px solid black;"/> --%>
                        </div>
                        <div class="form-group" style="margin-bottom:20px">
                         <f:input items="${vc}" path="maVc"  itemValue="maVc" class="form-control" style="border-bottom:1px solid black;"/>
                           <%--   <f:input type="" readonly="true" class="form-control" path="maVc" required="required" style="border-bottom:1px solid black;"/> --%>
                        </div>
                         <div class="form-group" style="margin-bottom:20px">
                            <label for="inputAddress3">Trạng thái</label>
                           <f:select type="" class="form-control" path="trangThai" required="required" style="border-bottom:1px solid black;">
                                <f:option value="false">
                                   Đang giao(0)
                                </f:option>
                                     <f:option value="true">
                                    Đã giao(1)
                                </f:option>
                            </f:select>
                        </div>
                        <f:button type="submit" class="btn btn-primary" style="color:black; margin-right:30px;border:3px solid black;background:pink;padding:5px 10px">Lưu</f:button>
                    </f:form>
                </div>
            </div>
        </div>
        <jsp:include page="page-end.jsp" flush="true"></jsp:include>
    </div>
</div>


</body>

</html>

