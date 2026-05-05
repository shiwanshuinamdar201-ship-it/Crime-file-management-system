<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    //Crime Report
    String sname = request.getParameter("sname");
    String iname = request.getParameter("iname");
    String iadd = request.getParameter("iadd");
    String idis = request.getParameter("idis");
    String dateofre = request.getParameter("dateofre");
    //Complaint
    String uname = request.getParameter("uname");
    String d_suspect = request.getParameter("d_suspect");
    String dis = request.getParameter("dis");
    String dateoc = request.getParameter("dateoc");
    String tocrime = request.getParameter("tocrime");
    //Registration
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String mail = request.getParameter("email");
    String dob = request.getParameter("dob");
    String Gender = request.getParameter("gen");
    String phone = request.getParameter("phone");
    String State = request.getParameter("state");
    String Country = request.getParameter("country");
    System.out.println("User Details" + phone + Gender + dob + State + mail + name + pass + Country);

    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from visitor where name='" + name + "' AND pass='" + pass + "'");
                    if (rs.next()) {
                        session.setAttribute("sssname", rs.getString("name"));
                        session.setAttribute("sssemail", rs.getString("email"));
                        session.setAttribute("sssstate", rs.getString("state"));
                        session.setAttribute("ssscountry", rs.getString("country"));
                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("visitor.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:
                try {

                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='User'");
                    if (rs.next()) {
                        session.setAttribute("ssname", rs.getString("name"));
                        session.setAttribute("ssemail", rs.getString("email"));
                        session.setAttribute("ssstate", rs.getString("state"));
                        session.setAttribute("sscountry", rs.getString("country"));

                        response.sendRedirect("user_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("user.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 3:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into visitor(name, pass, email, dob, gen, phone, state, country, status) values ('" + name + "','" + pass + "','" + mail + "','" + dob + "','" + Gender + "','" + phone + "','" + State + "','" + Country + "','No')");
                    if (i != 0) {

                        response.sendRedirect("reg.jsp?msg=success");
                    } else {
                        response.sendRedirect("reg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 4:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into complaint(uname, d_suspect, dis, dateoc, tocrime) values ('" + uname + "','" + d_suspect + "','" + dis + "','" + dateoc + "','" + tocrime + "')");
                    if (i != 0) {

                        response.sendRedirect("com.jsp?msg=success");
                    } else {
                        response.sendRedirect("com.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                case 5:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into crime_report(sname, iname, iadd, idis, dateofre) values ('" + sname + "','" + iname + "','" + iadd + "','" + idis + "','" + dateofre + "')");
                    if (i != 0) {

                        response.sendRedirect("crime_re.jsp?msg=success");
                    } else {
                        response.sendRedirect("crime_re.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 6:
                try {
                    if (name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin")) {
                        response.sendRedirect("ahome.jsp?msg=success");
                    } else {
                        response.sendRedirect("admin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 7:
                try {
                    rs = st.executeQuery("select * from upload where fileaccess='" + pass + "'");
                    if (rs.next()) {
                        session.setAttribute("passd", pass);
                        response.sendRedirect("download.jsp?msg=success");
                    } else {
                        response.sendRedirect("down.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>