<%@page import="model.customer.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="bootstrap.min.css">
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header">
            <div id="logo">
                <a href="index.jsp">BookStore</a>
                <link rel="icon" href="images/logo.ico" type="image/icon type">
                
            </div>
            
            <div id="menu">
                <ul>
                    <li><a href="Cart">Giỏ hàng</a></li>
                    <%Account account = (Account) session.getAttribute("USER");
                        if (account != null) {
                        String username = account.getUsername();
                    %>                    
                    <li><a href="index.jsp">Hello <%=username%></a></li>
                    <li><a href="login.jsp">Đăng xuất</a></li>
                    <%} else {%>
                    <li><a href="login.jsp">Log in</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <%}%>
                </ul>
            </div>
            <div id="search">
                <form action="book-search.jsp" method="GET" class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" name="Name" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
       </div>
                
       <div class="row">
                <div class="col-md-12 banner">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="width: 100%;">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="BookDetailsServlet?id=2&name=Books"><img class="d-block w-100" style="width: 100%" src="images/banner2.jpg" alt="First slide"></a>
                            </div>
                            <div class="carousel-item">
                                <a href="BookDetailsServlet?id=1&name=Books"><img class="d-block w-100" style="width: 100%" src="images/banner1.jpg" alt="Second slide"></a>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>


        
