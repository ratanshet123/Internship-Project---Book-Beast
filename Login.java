import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String username = request.getParameter("Username");
            String password = request.getParameter("Password");

            String jdbcUrl = "jdbc:mysql://localhost:3306/bookbeast";
            String dbUser = "root";
            String dbPassword = "root";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                String checkUserSql = "SELECT * FROM user WHERE username = ?";
                try (PreparedStatement checkUserStatement = connection.prepareStatement(checkUserSql)) {
                    checkUserStatement.setString(1, username);

                    ResultSet userResultSet = checkUserStatement.executeQuery();

                    if (userResultSet.next()) {
                        String checkPasswordSql = "SELECT * FROM user WHERE username = ? AND password = ?";
                        try (PreparedStatement checkPasswordStatement = connection.prepareStatement(checkPasswordSql)) {
                            checkPasswordStatement.setString(1, username);
                            checkPasswordStatement.setString(2, password);

                            ResultSet passwordResultSet = checkPasswordStatement.executeQuery();

                            if (passwordResultSet.next()) {
                               
                                HttpSession session = request.getSession();
                                session.setAttribute("username", username);
                                session.setAttribute("email", userResultSet.getString("email"));
                                

                                response.sendRedirect("book store.jsp");
                            } else {
                                out.println("Invalid password. Please try again.");
                            }
                        }
                    } else {
                        out.println("User not found. Please register first.");
                    }
                }

                connection.close();
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            }
        }
    }
}
