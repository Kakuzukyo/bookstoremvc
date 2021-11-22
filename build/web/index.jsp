<%@page import="dao.BookDAO"%>
<%@page import="model.book.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>BookStore</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="style.css" />

    </head>
    <body>
        <div id="wrap">
            <%@include file="header.jsp" %>
            <div class="center_content">
                    <h2 class="title">Trending</h2>
                    <div class="main_box">
                            <%
	                        ArrayList<Book> list = null;
	                    	BookDAO bookDao = new BookDAO();
	                        list = bookDao.getBookNew();
	                        for (int i = 0; i < 3; i++) {
	                    %>
                            <div class="feat_prod_box" style="width: 300px">
	                        <div class="prod_det_box">
	                            <div class="box_center">
                                        <img src="<%=list.get(i).getImage()%>" alt="Book" height="500" style="margin: auto">
	                                <div class="box_footer">
	                                	<p class="box_para">Price</p>
	                                	<p class="box_price"><%=list.get(i).getPrice() %>đ</p>
                                                
	                                </div>
                                        <div class="box_footer">
                                            <p class="box_para">Discount</p>
                                            <p class="box_price"><%=list.get(i).getDiscount()%>%</p>
                                        </div>
                                            <div class="namebook"><a class="namebookce" href="BookDetailsServlet?id=<%=list.get(i).getId()%>&name=Books" style="text-align: center"><%=list.get(i).getName()%></a></div>
	                            </div>
	                        </div>   
	                    </div>      
	                    <%}%>
                    </div>
            
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>