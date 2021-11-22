<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Book Store</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="style.css" />

    </head>
    <body>
        <div id="wrap" style="height: unset">
            <%@include file="header.jsp" %>
            <div class="center_content" style="margin-top: 100px; text-align: center;">
                <p style="text-align: center; font-size: 26px; color: #007bff">THANK YOU</p>
                <p style="text-align: center">Bạn đã đặt hàng thành công!</p>
                <p style="text-align: center">Đơn hàng của bạn trị giá <%=request.getAttribute("sumPrice")%>đ</p>
                <a href="index.jsp" style="text-align: center; margin-top: 50px" class="cart_btn">Continue Shopping</a>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>