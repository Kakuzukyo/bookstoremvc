<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Login</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body style="background: #fff ">
        <div id="wrap" >

            <div class="center_content" style="background: #fff">
                <div class="left_content login_form">
                    <div class="title login_title">Login</div>
                    <div class="feat_prod_box_details">
                        <% if (request.getParameter("checklogin") != null && request.getParameter("checklogin").equals("false")) {%>
                        <p class="details" style="color: red; text-align: center; font-size: 16px">
                            Username or Password is wrong
                        </p>
                        <%}%>
                        <div class="contact_form">
                            <form name="login" action="LoginServlet" method="post">          
                                <div class="form_row">
                                    <input type="text" name="username" class="contact_input" placeholder="Username"/>
                                </div>  


                                <div class="form_row">
                                    <input type="password" name="password"class="contact_input" placeholder="Password"/>
                                </div> 

                                <div class="form_footer">
                                	<button type="submit" class="register" value="login">Login</button>
                                        <p> or <a href="register.jsp">Registration</a></p>
                                </div>
                              
                                </div>   
                            </form>     
                        </div>  
                    </div>	

                    <div class="clear"></div>
                </div><!--end of left content-->

      
                <div class="clear"></div>
            </div><!--end of center content-->
        </div>

    </body>
</html>