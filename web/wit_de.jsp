
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
    <body>
        <div class="menu-wrapper">
            <div class="menu">
                <ul>
                    <li><a href="ahome.jsp">home</a></li>
                    <li><a href="com_de.jsp">Complaints</a></li>
                    <li><a href="wit_de.jsp" class="active">Witness</a></li>
                    <li><a href="mis_per_de.jsp">Missing</a></li>
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
                <br><br><center><h2 style="font-size: 26px; color: white; font-family: cursive">Witness Details</h2>
                    <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                        <tr>
                            <th style="text-align: center;width: 200px; font-size: 16px; color: #5b6a7d">Suspect name</th>
                            <th style="text-align: center;width: 400px;  font-size: 16px; color: #5b6a7d">Informer Name</th>
                            <th style="text-align: center;width: 200px;  font-size: 16px; color: #5b6a7d">Informer Address</th>
                            <th style="text-align: center;width: 200px;  font-size: 16px; color: #5b6a7d">info Description</th>
                            <th style="text-align: center;width: 200px;  font-size: 16px; color: #5b6a7d">Date of Report</th>
                        </tr>
                        <tr>
                            <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from crime_report");
                                    while (rs.next()) {
                            %>
                            <td style="font-size: 16px; color: white"><br><%=rs.getString("sname")%></td>   
                            <td style="font-size: 16px; color: white"><br><%=rs.getString("iname")%></td>  
                            <td style="font-size: 16px; color: white"><br><%=rs.getString("iadd")%></td>  
                            <td style="font-size: 16px; color: white"><br><%=rs.getString("idis")%></td>   
                            <td style="font-size: 16px; color: white"><br><%=rs.getString("dateofre")%></td>  
                        </tr>
                        <%


                                }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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




