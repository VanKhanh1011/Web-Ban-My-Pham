<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!--  Product Details -->
                <div class="product product-details clearfix" style="padding: 50px; text-align:center">
                    <div class="col-md-12 text-center">
                        <h2 class="color" >${msgsussess}</h2>
                    </div>
                    </br>
                    <div class="col-md-12 text-center">
                        <a href="showsanpham2.htm" class="color1" >Quay lại trang chủ</a>
                    </div>
                </div>
                <!-- /Product Details -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>

    <jsp:include page="page-end.jsp" flush="true"></jsp:include>
   
</body>

</html>

