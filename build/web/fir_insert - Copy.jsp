<%@page import="java.util.Arrays"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Dbcon.DbConnection"%>

<%
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();

    String str = (String)session.getAttribute("sstr");
    System.out.println("Missing Person All Details :" + str);
    String[] temp;

    String delimiter = ",";

    temp = str.split(delimiter, 8);
    for (int i = 0; i < temp.length; i++) {
    }
    String mname = temp[0];
    String mplace = temp[1];
    String misdate = temp[2];
    String age = temp[3];

    String wight = temp[4];
    String height = temp[5];
    String addomiss = temp[6];
    String dateofreport = temp[7];

    String firno = request.getParameter("firno");
    String act = request.getParameter("act");

    System.out.println("FIR Details :" + mname + mplace + misdate + age + weight + height + addomiss + dateofreport + firno + act);

    int i = st.executeUpdate("insert into fir(mname, mplace, misdate, age, weight, height, addomiss, dateofreport, firno, act) values ('" + mname + "','" + mplace + "','" + misdate + "','" + age + "','" + wight + "','" + height + "','" + addomiss + "','" + dateofreport + "','" + firno + "','" + act + "')");
    if (i != 0) {
        response.sendRedirect("mis_per_de.jsp?msg=FIR Added Successfully");
    }else{
        response.sendRedirect("mis_per_de.jsp? msgg=Error");
    }
%>
