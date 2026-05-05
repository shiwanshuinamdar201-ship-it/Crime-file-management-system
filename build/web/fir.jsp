<%

    String str = request.getParameter("id");
    session.setAttribute("sstr", str);
    System.out.println("Missing Person All Details :" + str);
    String[] temp;

    String delimiter = ",";

    temp = str.split(delimiter, 8);
    for (int i = 0; i < temp.length; i++) {
    }
    String mname = temp[0];
    String mplace = temp[1];
    String mdate = temp[2];
    String age = temp[3];

    String wight = temp[4];
    String height = temp[5];
    String addomiss = temp[6];
    String dateofreport = temp[7];



%>
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
        <script>alert('Missing Person Details sent successfully..');</script>
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
                    <li><a href="ahome.jsp">home</a></li>
                    <li><a href="com_de.jsp">Complaints</a></li>
                    <li><a href="wit_de.jsp">Witness</a></li>
                    <li><a href="mis_pet_de.jsp" class="active">Missing</a></li>
                    <li><a href="want_list.jsp">Add Wanted Criminal</a></li>
                    <li><a href="want_view.jsp">Wanted View</a></li>
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
            <br><br><center><h2 style="font-size: 26px; color: #ffffff; font-family: cursive">ADD FIR REPORT</h2>
                        <br><form action="fir_insert.jsp" method="post"  enctype="multipart/form-data"> 
                                <table>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Name : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="mname" value="<%=mname%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Missing Place : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="mplace" value="<%=mplace%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Date of Missing : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="mplace" value="<%=mdate%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Age : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="doreport" value="<%=age%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Wight : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="age" value="<%=wight%>" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Height : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="height" value="<%=height%>"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">address of Missing  : </label>
                                        </td>
                                        <td>
                                            <textarea rows="4" cols="" name="addomiss" class="inputs" ><%=addomiss%></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Date of Report : </label>
                                        </td>
                                        <td>
                                            <input type="date" class="inputs" value="<%=dateofreport%>"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">FIR No : </label>
                                        </td>
                                        <td>
                                            <input type="text" class="inputs" name="firno" required="" placeholder="FIR No."  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="font-size: 20px; color: window">Act : </label>
                                        </td>
                                        <td>
                                            <select class="inputss" required="" name="act" >
                                                <option value="">Select</option>
                                                <option value="Murder">Murder</option>
                                                <option value="Kidnap">Kidnap</option>
                                           
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td> <input type="Submit" value="Submit" class="button" ></td>
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
