package Dbcon;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@MultipartConfig(maxFileSize = 16177215)
public class Wanted extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/crime_manage";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response, String weight) throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        String mname = request.getParameter("name");
        String gen = request.getParameter("gen");
        String age = request.getParameter("age");
        String wight = request.getParameter("weight");
        String height = request.getParameter("height");
        String brief = request.getParameter("brief");
        String act = request.getParameter("act");


        InputStream inputStream = null;
        Part filePart = request.getPart("file");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO wanted (mname, gen, age, weight, height, brief, act, photo) values (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, mname);
            statement.setString(2, gen);
            statement.setString(3, age);
            statement.setString(4, weight);
            statement.setString(5, height);
            statement.setString(6, brief);
            statement.setString(7, act);

            if (inputStream != null) {
                statement.setBlob(8, inputStream);
            }
            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("want_list.jsp?msg=success");
            } else {
                response.sendRedirect("want_list.jsp?msgg=Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}