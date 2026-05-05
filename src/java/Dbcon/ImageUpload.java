
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

@WebServlet("/Upload")
@MultipartConfig(maxFileSize = 16177215)
public class ImageUpload extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/crime_manage";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        String mname = request.getParameter("mname");
        String mplace = request.getParameter("mplace");
        String misdate = request.getParameter("misdate");
        String doreport = request.getParameter("doreport");
        String gen = request.getParameter("gen");
        String age = request.getParameter("age");
        String wight = request.getParameter("wight");
        String height = request.getParameter("height");
        String brief = request.getParameter("brief");
        String addomiss = request.getParameter("addomiss");
        String dateofreport = request.getParameter("dateofreport");

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

            String sql = "INSERT INTO missperson (mname, mplace, misdate, doreport, gen, age, wight, height, brief, addomiss, dateofreport, photo) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, mname);
            statement.setString(2, mplace);
            statement.setString(3, misdate);
            statement.setString(4, doreport);
            statement.setString(5, gen);
            statement.setString(6, age);
            statement.setString(7, wight);
            statement.setString(8, height);
            statement.setString(9, brief);
            statement.setString(10, addomiss);
            statement.setString(11, dateofreport);
            
            if (inputStream != null) {
                statement.setBlob(12, inputStream);
            }
            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("mis_baby.jsp?msg=success");
            } else {
                response.sendRedirect("mis_baby.jsp?msgg=Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}