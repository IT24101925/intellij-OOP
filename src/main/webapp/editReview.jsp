
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Edit Director</title>--%>
<%--  <style>--%>
<%--    :root {--%>
<%--      --primary-color: #4a6fa5;--%>
<%--      --secondary-color: #166088;--%>
<%--      --accent-color: #4fc3f7;--%>
<%--      --dark-bg: #2c3e50;--%>
<%--      --light-bg: #f8f9fa;--%>
<%--      --text-dark: #333;--%>
<%--      --text-light: #fff;--%>
<%--    }--%>

<%--    body {--%>
<%--      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;--%>
<%--      background-color: var(--light-bg);--%>
<%--      display: flex;--%>
<%--      justify-content: center;--%>
<%--      align-items: center;--%>
<%--      min-height: 100vh;--%>
<%--      margin: 0;--%>
<%--      padding: 2rem;--%>
<%--    }--%>

<%--    .edit-container {--%>
<%--      background-color: white;--%>
<%--      padding: 2rem;--%>
<%--      border-radius: 8px;--%>
<%--      width: 100%;--%>
<%--      max-width: 500px;--%>
<%--      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);--%>
<%--    }--%>

<%--    h2 {--%>
<%--      text-align: center;--%>
<%--      margin-bottom: 1.5rem;--%>
<%--      color: var(--secondary-color);--%>
<%--    }--%>

<%--    .form-group {--%>
<%--      margin-bottom: 1.25rem;--%>
<%--    }--%>

<%--    label {--%>
<%--      display: block;--%>
<%--      margin-bottom: 0.5rem;--%>
<%--      font-weight: 600;--%>
<%--      color: var(--secondary-color);--%>
<%--    }--%>

<%--    input, select, textarea {--%>
<%--      width: 100%;--%>
<%--      padding: 0.75rem;--%>
<%--      border: 1px solid #ddd;--%>
<%--      border-radius: 4px;--%>
<%--      font-family: inherit;--%>
<%--      font-size: 1rem;--%>
<%--      transition: border-color 0.3s;--%>
<%--    }--%>

<%--    input:focus, select:focus, textarea:focus {--%>
<%--      outline: none;--%>
<%--      border-color: var(--accent-color);--%>
<%--    }--%>

<%--    textarea {--%>
<%--      min-height: 100px;--%>
<%--      resize: vertical;--%>
<%--    }--%>

<%--    .btn {--%>
<%--      width: 100%;--%>
<%--      padding: 0.75rem;--%>
<%--      background-color: var(--primary-color);--%>
<%--      color: white;--%>
<%--      border: none;--%>
<%--      border-radius: 4px;--%>
<%--      font-size: 1rem;--%>
<%--      font-weight: 600;--%>
<%--      cursor: pointer;--%>
<%--      transition: background-color 0.3s;--%>
<%--      margin-top: 0.5rem;--%>
<%--    }--%>

<%--    .btn:hover {--%>
<%--      background-color: var(--secondary-color);--%>
<%--    }--%>

<%--    .error-message {--%>
<%--      color: #dc3545;--%>
<%--      text-align: center;--%>
<%--      margin-top: 1rem;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="edit-container">--%>
<%--  <h2>Edit Director</h2>--%>
<%--  <%--%>
<%--    String filePath = application.getRealPath("/WEB-INF/reviews.txt");--%>
<%--    File file = new File(filePath);--%>
<%--    int index = Integer.parseInt(request.getParameter("index"));--%>
<%--    List<String> reviews = Files.readAllLines(Paths.get(filePath));--%>

<%--    if (index + 6 < reviews.size()) {--%>
<%--      String name = reviews.get(index).replace("User: ", "");--%>
<%--      String email = reviews.get(index + 1).replace("Email: ", "");--%>
<%--      String gender = reviews.get(index + 2).replace("satisfaction: ", "");--%>
<%--      String description = reviews.get(index + 3).replace("Description: ", "");--%>
<%--      String movie = reviews.get(index + 4).replace("movie: ", "");--%>
<%--      String rating = reviews.get(index + 5).replace("rating: ", "");--%>
<%--  %>--%>

<%--  <form action="updateReview.jsp" method="post">--%>
<%--    <input type="hidden" name="index" value="<%= index %>">--%>

<%--    <div class="form-group">--%>
<%--      <label for="name">Director Name:</label>--%>
<%--      <input type="text" id="name" name="name" value="<%= name %>" required>--%>
<%--    </div>--%>

<%--    <div class="form-group">--%>
<%--      <label for="email">Email:</label>--%>
<%--      <input type="email" id="email" name="email" value="<%= email %>" required>--%>
<%--    </div>--%>

<%--    <div class="form-group">--%>
<%--      <label for="gender">Gender:</label>--%>
<%--      <select id="gender" name="satisfaction" required>--%>
<%--        <option value="Male" <%= gender.equals("Male") ? "selected" : "" %>>Male</option>--%>
<%--        <option value="Female" <%= gender.equals("Female") ? "selected" : "" %>>Female</option>--%>
<%--        <option value="Other" <%= gender.equals("Other") ? "selected" : "" %>>Other</option>--%>
<%--      </select>--%>
<%--    </div>--%>

<%--    <div class="form-group">--%>
<%--      <label for="bio">Bio:</label>--%>
<%--      <textarea id="bio" name="description" required><%= description %></textarea>--%>
<%--    </div>--%>


<%--    <div class="form-group">--%>
<%--      <label for="movie">Movie</label>--%>
<%--      <textarea id="movie" name="movie" class="form-control" placeholder="Enter director's movie" value="<%= movie %>" required></textarea>--%>
<%--    </div>--%>


<%--    <div class="form-group">--%>
<%--      <label for="rating">rating</label>--%>
<%--      <select id="rating" name="rating" class="form-control" value="<%= rating %>" required>--%>
<%--        <option value="" disabled selected>add rating </option>--%>
<%--        <option value="1 star">1 star</option>--%>
<%--        <option value="2 star">2 star</option>--%>
<%--        <option value="3 star">3 star</option>--%>
<%--        <option value="4 star">4 star</option>--%>
<%--        <option value="5 star">5 star</option>--%>
<%--      </select>--%>
<%--    </div>--%>

<%--    <button type="submit" class="btn">Save Changes</button>--%>
<%--  </form>--%>
<%--  <%--%>
<%--  } else {--%>
<%--  %>--%>
<%--  <p class="error-message">Invalid director. Director not found or data corrupted.</p>--%>
<%--  <%--%>
<%--    }--%>
<%--  %>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>Edit Director</title>
  <style>
    :root {
      --primary-color: #4a6fa5;
      --secondary-color: #166088;
      --accent-color: #4fc3f7;
      --dark-bg: #2c3e50;
      --light-bg: #f8f9fa;
      --text-dark: #333;
      --text-light: #fff;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: var(--light-bg);
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      margin: 0;
      padding: 2rem;
    }

    .edit-container {
      background-color: white;
      padding: 2rem;
      border-radius: 8px;
      width: 100%;
      max-width: 500px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 1.5rem;
      color: var(--secondary-color);
    }

    .form-group {
      margin-bottom: 1.25rem;
    }

    label {
      display: block;
      margin-bottom: 0.5rem;
      font-weight: 600;
      color: var(--secondary-color);
    }

    input, select, textarea {
      width: 100%;
      padding: 0.75rem;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-family: inherit;
      font-size: 1rem;
      transition: border-color 0.3s;
    }

    input:focus, select:focus, textarea:focus {
      outline: none;
      border-color: var(--accent-color);
    }

    textarea {
      min-height: 100px;
      resize: vertical;
    }

    .btn {
      width: 100%;
      padding: 0.75rem;
      background-color: var(--primary-color);
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 1rem;
      font-weight: 600;
      cursor: pointer;
      transition: background-color 0.3s;
      margin-top: 0.5rem;
    }

    .btn:hover {
      background-color: var(--secondary-color);
    }

    .error-message {
      color: #dc3545;
      text-align: center;
      margin-top: 1rem;
    }
  </style>
</head>
<body>
<div class="edit-container">
  <h2>Edit Director</h2>
  <%
    String filePath = application.getRealPath("/WEB-INF/reviews.txt");
    File file = new File(filePath);
    int index = Integer.parseInt(request.getParameter("index"));
    List<String> reviews = Files.readAllLines(Paths.get(filePath));

    if (index + 6 < reviews.size()) {
      String name = reviews.get(index).replace("User: ", "");
      String email = reviews.get(index + 1).replace("Email: ", "");
      String gender = reviews.get(index + 2).replace("satisfaction: ", "");
      String description = reviews.get(index + 3).replace("Description: ", "");
      String movie = reviews.get(index + 4).replace("movie: ", "");
      String rating = reviews.get(index + 5).replace("rating: ", "");
  %>

  <form action="updateReview.jsp" method="post">
    <input type="hidden" name="index" value="<%= index %>">

    <div class="form-group">
      <label for="name">Director Name:</label>
      <input type="text" id="name" name="name" value="<%= name %>" required>
    </div>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" value="<%= email %>" required>
    </div>

    <div class="form-group">
      <label for="gender">Gender:</label>
      <select id="gender" name="satisfaction" required>
        <option value="Male" <%= gender.equals("Male") ? "selected" : "" %>>Male</option>
        <option value="Female" <%= gender.equals("Female") ? "selected" : "" %>>Female</option>
        <option value="Other" <%= gender.equals("Other") ? "selected" : "" %>>Other</option>
      </select>
    </div>

    <div class="form-group">
      <label for="bio">Bio:</label>
      <textarea id="bio" name="description" required><%= description %></textarea>
    </div>

    <div class="form-group">
      <label for="movie">Movie:</label>
      <input type="text" id="movie" name="movie" value="<%= movie %>" required>
    </div>

    <div class="form-group">
      <label for="rating">Rating:</label>
      <select id="rating" name="rating" required>
        <option value="1 star" <%= rating.equals("1 star") ? "selected" : "" %>>1 star</option>
        <option value="2 star" <%= rating.equals("2 star") ? "selected" : "" %>>2 star</option>
        <option value="3 star" <%= rating.equals("3 star") ? "selected" : "" %>>3 star</option>
        <option value="4 star" <%= rating.equals("4 star") ? "selected" : "" %>>4 star</option>
        <option value="5 star" <%= rating.equals("5 star") ? "selected" : "" %>>5 star</option>
      </select>
    </div>

    <button type="submit" class="btn">Save Changes</button>
  </form>
  <%
  } else {
  %>
  <p class="error-message">Invalid director. Director not found or data corrupted.</p>
  <%
    }
  %>
</div>
</body>
</html>