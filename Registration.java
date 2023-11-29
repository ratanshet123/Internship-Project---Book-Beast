import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Registration() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("UserName");
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String address = request.getParameter("Address");
        String phone = request.getParameter("Phone");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
         
            String jdbcUrl = "jdbc:mysql://localhost:3306/bookbeast";
            String dbUser = "root";
            String dbPassword = "root";

            
            Class.forName("com.mysql.cj.jdbc.Driver");

           
            conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
            conn.setAutoCommit(false); 

           
            System.out.println("Username: " + username);
            System.out.println("Email: " + email);
            System.out.println("Password: " + password);
            System.out.println("Address: " + address);
            System.out.println("Phone: " + phone);

            String sql = "INSERT INTO user (username, email, password, address, phone) VALUES (?, ?, ?, ?, ?)";
            System.out.println("SQL Query: " + sql);

          
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, address);
            pstmt.setString(5, phone);

           
            pstmt.executeUpdate();
            System.out.println("Record inserted successfully!");

           
            conn.commit();
            
            HttpSession session = request.getSession();

            
            session.setAttribute("username", username);
            session.setAttribute("email", email);
            session.setAttribute("address", address);
            session.setAttribute("phone", phone);

            request.setAttribute("registrationResult", "success");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Error: " + e.getMessage());

           
            if (conn != null) {
                try {
					conn.rollback();
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
            }

            // Set attribute to indicate failure
            request.setAttribute("registrationResult", "error");

        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            // Redirect to appropriate page based on the attribute
            if ("success".equals(request.getAttribute("registrationResult"))) {
                response.sendRedirect("success.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        }
    }
}