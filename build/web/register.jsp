<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <title>Register</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body style="background: #fff">
        <div id="wrap">
            <div class="center_content" style="background: #fff">
                <div class="left_content login_form">
                    <div class="title login_title">Register</div>
                    <div class="feat_prod_box_details">
                        <div class="contact_form">
                            <form name="register" action="Register" method="post"> 
                                <div class="form_row" style="display: flex; justify-content: space-between;">
                                	<div class="form_row-child">
                                    	<input type="text" class="contact_input" name="lastname" placeholder="Last Name"/>
                                	</div>
                                	<div class="form_row-child">
                                    	<input type="text" class="contact_input" name="middlename" placeholder="Middle Name"/>
                                	</div>
                                	<div class="form_row-child">
                                    	<input type="text" class="contact_input" name="firstname" placeholder="First Name"/>
                                	</div>
                                </div>
                            	<div class="form_row">
                                    <input type="text" class="contact_input" name="email" placeholder="Email"/>
                                </div>         
                                <div class="form_row">
                                    <input type="text" class="contact_input" name="username" placeholder="Username"/>
                                </div>  
                                <div class="form_row">
                                    <input type="password" id="password" class="contact_input" name="password" placeholder="Password" onkeyup='check();'/>
                                </div> 
                                <div class="form_row">
                                    <input type="password" id="repassword" class="contact_input" name="re-password" placeholder="Re-Password" onkeyup='check();'/>
                                </div>
                                
                                <!-- Address -->
                                <div class="form_row" style="display: flex; justify-content: space-between;">
                                	<div class="form_row-child">
                                    	<input type="text" class="contact_input" name="commune" placeholder="Commune"/>
                                	</div>
                                	<div class="form_row-child">
                                    	<input type="text" class="contact_input" name="district" placeholder="District"/>
                                	</div>
                                	
                                	<div class="form_row-child">
                                    	<input type="text" class="contact_input" name="city" placeholder="City"/>
                                	</div>
                                </div>
                                
                                <br>
                                    <span id='message' style="font-size: 16px; text-align: center"></span>
                                <br>

                                <div class="form_footer">
                                    <button type="submit" class="register" onclick="return check();">Sign Up</button>
                                </div> 
  
                            </form>     
                        </div>  
                    </div>	
                    <div class="clear"></div>
                </div><!--end of left content-->
                <div class="clear"></div>
            </div><!--end of center content-->
        </div>
        <script>
            var check = function () {
                if (document.getElementById('password').value ===
                        document.getElementById('repassword').value) {
                    document.getElementById('message').style.color = 'green';
                    document.getElementById('message').innerHTML = 'Matching';
                    return true;
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = 'Not Matching';
                    return false;
                }
            };
        </script>
    </body>
</html>