<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>
<%
  String filePath = "C:/webapps/reviews.txt";
  File file = new File(filePath);
  int index = Integer.parseInt(request.getParameter("index"));

  List<String> reviews = Files.readAllLines(Paths.get(filePath));

  // Removing the review data (7 lines per review)
  for (int i = 0; i < 7; i++) {
    reviews.remove(index);
  }

  // Saving the updated review list
  Files.write(Paths.get(filePath), reviews);

  response.sendRedirect("adminDashboard.jsp");
%>
