<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>
<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();

    String d_suspect = request.getParameter("d_suspect");
    String dis = request.getParameter("dis");
    String dateoc = request.getParameter("dateoc");
    String tocrime = request.getParameter("tocrime");
    String ssnames = (String) session.getAttribute("ssnames");
    session.setAttribute("sssnam", ssnames);
    System.out.println("Check :" + ssnames);


    int i = st.executeUpdate("update complaint set d_suspect = '" + d_suspect + "', dis = '" + dis + "', dateoc='" + dateoc + "', tocrime='" + tocrime + "' where uname = '" + ssnames + "'");
    if (i != 0) {
        response.sendRedirect("edit_com.jsp?msg=Success");
    } else {
        response.sendRedirect("edit_com.jsp?msg=Error");
    }
%>
