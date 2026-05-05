<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Online Crime File Management System</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
    </head>
    <style>
    #contentinfo p {
        line-height: 20px;
	margin: 50px;
	padding-bottom: 20px;
	text-align:inherit;
	width: 1000px;
	color: white;
        font-size: 20px;
}
</style>
     <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('Login Successfully..');</script>
        <%            }
        %>
    <body>
        <div class="menu-wrapper">
            <div class="menu">
                <ul>
                    <li><a href="uhome.jsp" class="active">home</a></li>
                    <li><a href="com.jsp">Complaint</a></li>
                    <li><a href="crime_re.jsp">Crime Report</a></li>
                    <li><a href="mis_baby.jsp">Missing baby</a></li>
                    <li><a href="want_view1.jsp">Wanted List</a></li>
                    <li><a href="edit_com.jsp">Edit Comp</a></li>
                    <li><a href="index.jsp">Logout</a></li>
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
            <center><h1>WELCOME TO CRIMESTATION</h1>  </center>
            <p>This website is developed for the Department of the police for helping them in the investigation level.visitors must keep in mind that websites of government organisations anywhere in the world are in view of their inherent complexity intended to provide a general idea of the organisation and furnish authentic through basic information on its functioning in a convenient and attractive manner.<br>
            All endeavours have been made to provide a correct informations in the website.However ,any inadvertant error that might have crept in ,if brought to our notice will be rectified in the next updating schedule.</p>    
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


