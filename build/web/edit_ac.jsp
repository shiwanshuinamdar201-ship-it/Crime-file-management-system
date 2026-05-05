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
        <script>alert('complaint add successfully..');</script>
        <%            }
        %>
        <%
            if (request.getParameter("msgg") != null) {
        %>
        <script>alert('Error');</script>
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
                    <li><a href="uhome.jsp">home</a></li>
                    <li><a href="com.jsp">Complaint</a></li>
                    <li><a href="crime_re.jsp">Crime Report</a></li>
                    <li><a href="mis_baby.jsp">Missing baby</a></li>
                    <li><a href="want_list.jsp">Wanted List</a></li>
                    <li><a href="edit_com.jsp">Edit Comp</a></li>
                    <li><a href="edit_ac.jsp" class="active">Edit Account</a></li>
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
            <!--==============================body start=================================-->
            <br><br><center><h2 style="font-size: 26px; color: #ffffff; font-family: cursive">Edit Account</h2>
                        <br><form action="login.jsp" method="get"> 
                                <table>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">User Name : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="name" required="" placeholder="Your Name" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Details Suspect : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="name" required="" placeholder="Your Name" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Description : </label>
                                        </td>
                                        <td>
                                            <textarea rows="4" cols="" name="dis" class="inputs" placeholder="Description"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Date : </label>
                                        </td>
                                        <td>
                                            <input type="date" class="inputs" name="name" required="" placeholder="Your Name" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Type Of Crime : </label>
                                        </td>
                                        <td>
                                            <select class="inputss" required="" name="tocrime" >
                                                <option value="Civil">Civil</option>
                                                <option value="Cyber">Cyber</option>
                                                <option value="Domestic Violence">Domestic Violence</option>
                                                <option value="other">other</option>
                                                <input type="hidden" value="4" name="status" />
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td> <input type="Submit" value="EDIT" class="button" ></td>
                                    </tr>

                                </table>


                               
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