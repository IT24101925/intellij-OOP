package com.example.reviewmanagement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hardcoded admin credentials
        if (username.equals("Yathu") && password.equals("yathu1234")) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", "true");
            session.setAttribute("loginSuccess", "true");
            response.sendRedirect("adminDashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=Invalid Credentials");
        }
    }
}
