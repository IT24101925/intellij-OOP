<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    // Use existing session without redeclaring
    HttpSession existingSession = request.getSession(false);
    if (existingSession != null) {
        existingSession.invalidate();
    }
    response.sendRedirect("login.jsp");
%>
