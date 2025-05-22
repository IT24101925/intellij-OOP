<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>
<%
  // Secure and consistent file path
  String filePath = application.getRealPath("/WEB-INF/reviews.txt");
  File file = new File(filePath);
  int index = Integer.parseInt(request.getParameter("index"));

  List<String> reviews = Files.readAllLines(Paths.get(filePath));

  // Ensure the review exists and has 7 lines
  if (index + 6 < reviews.size()) {
    reviews.set(index, "User: " + request.getParameter("name"));
    reviews.set(index + 1, "Email: " + request.getParameter("email"));
    reviews.set(index + 2, "satisfaction: " + request.getParameter("satisfaction"));
    reviews.set(index + 3, "Description: " + request.getParameter("description"));
    reviews.set(index + 4, "movie: " + request.getParameter("movie"));
    reviews.set(index + 5, "rating: " + request.getParameter("rating"));
  }

  // Save the updated review list
  Files.write(Paths.get(filePath), reviews);

  response.sendRedirect("adminDashboard.jsp");
%>
