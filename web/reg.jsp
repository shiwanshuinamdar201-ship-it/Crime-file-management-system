<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Online Crime File Management System</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
     <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Registration Successfully');</script>
        <%            }
        %>
        <%
            if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Registration Error');</script>
        <%            }
        %>
    </head>
<style> 

            .inputs {
                background: #F7E1B9;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 200px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputs:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .inputss {
                background: #F7E1B9;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 220px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputss:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #fff38e, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
                color: white;
                padding: 10px 27px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }
        </style> 
      
    <body>
        <div class="menu-wrapper">
            <div class="menu">
                <ul>
                    <li><a href="index.jsp">home</a></li>
                    <li><a href="visitor.jsp">Visitor</a></li>
                    <li><a href="admin.jsp">admin</a></li>
                    <li><a href="reg.jsp" class="active">Register</a></li>
                </ul>
            </div>
            <div class="call">
                <!--    <h1>Call us :<span> ( 000 ) 8888 888888</span></h1>-->
            </div>
        </div>
        <!--- menu-wrapper div end -->
        <div class="clearing"></div>
        <div class="border-bottom"></div>
        <div class="logo-wrapper">
            <div class="leftshadow"><img src="images/logo-wrap-left.jpg" /></div>
            <div class="logo">
                <h1><font style="font-family: fantasy; ">Online Crime File Management System</font></h1>
            </div>
            <div class="rightshadow"><img src="images/logo-wrap-right.jpg" /></div>
        </div>
        <div class="clearing"></div>
        <div class="banner-wrapper">
            <div class="bannerlef"><img src="images/banner-wrap-left.jpg" /></div>
            <div class="banner-container">
                <div class="banner">
                    <div class="banner-content">
                        <img width="500" height="200" src="img\Crime home page.jpg"/>
                    </div>   
                </div>
            </div>
        </div>
        <div class="bannerright"><img src="images/banner-wrap-right.jpg"/></div>

        <!--- banner wrapper div end -->
        <div id="contentinfo">
             <!--==============================body start=================================-->
                <br><br><center><h2 style="font-size: 26px; color: #576679; font-family: cursive">Registration</h2>
                    <br><form action="login.jsp" method="get"> 
                        <input type="text" class="inputs" name="name" required="" placeholder="Your Name" />&nbsp;&nbsp;&nbsp; 
                        <input type="password" class="inputs" name="pass" required="" placeholder="Password" /><br> 
                        <input type="email" class="inputs" name="email" required="" placeholder="e-mail" />&nbsp;&nbsp;&nbsp;
                        <input type="date" class="inputs" name="dob" required="" placeholder="Date Of Birth" /><br> 
                        <select class="inputss" required="" name="gen" >
                            <option value="select">Gender</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>&nbsp;&nbsp;&nbsp;
                        <input type="text"class="inputs" name="phone" required="" placeholder="Phone" /><br> 
                        <input type="text"class="inputs" name="state" required="" placeholder="State" />&nbsp;&nbsp;&nbsp;
                        <input type="text"class="inputs" name="country" required="" placeholder="Country" /><br>
                        <input type="hidden" value="3" name="status" />
                        <input type="Submit" value="Register" class="button" >
                    </form></center>

                <br><br><br><br><br><br><br><br><br><br>
                <!--==============================end body=================================-->
        </div>
        
        <!--- container div end -->
        <div class="clearing"></div>

        <div class="footer-wrapper">
            <div class="footer">
                <p> © All Rights Reserved.</p>
            </div>
        </div>
    </body>
</html>


