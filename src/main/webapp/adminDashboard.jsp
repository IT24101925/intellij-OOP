<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Admin Dashboard - Manage Directors</title>--%>
<%--  <style>--%>
<%--    body {--%>
<%--      font-family: Arial, sans-serif;--%>
<%--      background: linear-gradient(to right, #f5f3f6, #f4f5f6);--%>
<%--      margin: 0;--%>
<%--      padding: 0;--%>
<%--      display: flex;--%>
<%--      height: 100vh;--%>
<%--      overflow: hidden;--%>
<%--    }--%>

<%--    /* Sidebar Styles */--%>
<%--    .sidebar {--%>
<%--      background-color: #1a1a3b;--%>
<%--      width: 260px;--%>
<%--      height: 100vh;--%>
<%--      padding: 30px 20px;--%>
<%--      position: fixed;--%>
<%--      left: 0;--%>
<%--      top: 0;--%>
<%--      display: flex;--%>
<%--      flex-direction: column;--%>
<%--      justify-content: flex-start;--%>
<%--      align-items: flex-start;--%>
<%--      color: #ffffff;--%>
<%--      box-shadow: 2px 0 10px rgba(0, 0, 0, 0.3);--%>
<%--    }--%>

<%--    .sidebar h2 {--%>
<%--      text-align: center;--%>
<%--      color: #03e9f4;--%>
<%--      margin-bottom: 20px;--%>
<%--    }--%>

<%--    .sidebar a {--%>
<%--      display: block;--%>
<%--      margin: 15px 0;--%>
<%--      text-decoration: none;--%>
<%--      color: #ffffff;--%>
<%--      font-weight: bold;--%>
<%--      transition: color 0.3s;--%>
<%--    }--%>

<%--    .sidebar a:hover {--%>
<%--      color: #03e9f4;--%>
<%--    }--%>

<%--    /* Main Content */--%>
<%--    .main-content {--%>
<%--      margin-left: 280px;--%>
<%--      padding: 20px 30px;--%>
<%--      overflow-y: auto;--%>
<%--      height: 100vh;--%>
<%--      display: flex;--%>
<%--      flex-direction: column;--%>
<%--      align-items: center;--%>
<%--      justify-content: flex-start;--%>
<%--    }--%>

<%--    h2 {--%>
<%--      text-align: center;--%>
<%--      margin-bottom: 20px;--%>
<%--      color: #0347f4;--%>
<%--      font-size: 28px;--%>
<%--    }--%>

<%--    .reviews-container {--%>
<%--      display: flex;--%>
<%--      flex-wrap: wrap;--%>
<%--      gap: 25px;--%>
<%--      justify-content: flex-start;--%>
<%--      max-width: 1200px;--%>
<%--      width: 100%;--%>
<%--    }--%>

<%--    .review-card {--%>
<%--      background-color: #2a2a5a;--%>
<%--      padding: 20px;--%>
<%--      border-radius: 12px;--%>
<%--      width: 320px;--%>
<%--      max-width: 100%;--%>
<%--      color: #ffffff;--%>
<%--      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);--%>
<%--      display: flex;--%>
<%--      flex-direction: column;--%>
<%--      justify-content: space-between;--%>
<%--      transition: transform 0.3s;--%>
<%--    }--%>

<%--    .review-card:hover {--%>
<%--      transform: translateY(-5px);--%>
<%--    }--%>

<%--    .review-card h3 {--%>
<%--      font-size: 18px;--%>
<%--      margin-bottom: 10px;--%>
<%--      color: #03e9f4;--%>
<%--    }--%>

<%--    .review-card p {--%>
<%--      margin: 5px 0;--%>
<%--      font-size: 14px;--%>
<%--      line-height: 1.4;--%>
<%--    }--%>

<%--    .review-card .actions {--%>
<%--      margin-top: 15px;--%>
<%--      text-align: right;--%>
<%--    }--%>

<%--    .review-card .actions a {--%>
<%--      color: #03e9f4;--%>
<%--      text-decoration: none;--%>
<%--      margin-left: 15px;--%>
<%--      font-weight: bold;--%>
<%--    }--%>

<%--    .review-card .actions a:hover {--%>
<%--      text-decoration: underline;--%>
<%--    }--%>

<%--    .no-reviews {--%>
<%--      text-align: center;--%>
<%--      font-size: 16px;--%>
<%--      color: #ffcccc;--%>
<%--      padding: 20px;--%>
<%--      width: 100%;--%>
<%--    }--%>

<%--    /* Responsive Design */--%>
<%--    @media screen and (max-width: 768px) {--%>
<%--      .main-content {--%>
<%--        margin-left: 0;--%>
<%--        padding: 15px;--%>
<%--      }--%>

<%--      .sidebar {--%>
<%--        width: 100%;--%>
<%--        height: auto;--%>
<%--        position: relative;--%>
<%--        flex-direction: row;--%>
<%--        justify-content: space-around;--%>
<%--        padding: 10px 0;--%>
<%--      }--%>

<%--      .reviews-container {--%>
<%--        justify-content: center;--%>
<%--      }--%>
<%--    }--%>
<%--  </style>--%>
<%--  <script>--%>
<%--    function confirmDelete(index) {--%>
<%--      if (confirm("Are you sure you want to delete this review?")) {--%>
<%--        window.location.href = "AdminDashboardServlet?action=delete&index=" + index;--%>
<%--      }--%>
<%--    }--%>
<%--  </script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!-- Sidebar Navigation -->--%>
<%--<div class="sidebar">--%>
<%--  <h2>Admin Dashboard</h2>--%>
<%--  <a href="adminDashboard.jsp">Manage Directors</a>--%>
<%--  <a href="reviewForm.jsp">Add Directors</a>--%>
<%--  <a href="logout.jsp">Logout</a>--%>
<%--</div>--%>

<%--<!-- Main Content Area -->--%>
<%--<div class="main-content">--%>
<%--  <h2>Manage Reviews</h2>--%>
<%--  <div class="reviews-container">--%>
<%--    <%--%>
<%--      // Secure and consistent file path for reviews--%>
<%--      String filePath = application.getRealPath("/WEB-INF/reviews.txt");--%>
<%--      File file = new File(filePath);--%>

<%--      if (file.exists() && file.length() > 0) {--%>
<%--        List<String> reviews = Files.readAllLines(Paths.get(filePath));--%>
<%--        for (int i = 0; i < reviews.size(); i++) {--%>
<%--          String line = reviews.get(i).trim();--%>
<%--          if (line.startsWith("User:")) {--%>
<%--            try {--%>
<%--              String name = line.replace("User: ", "");--%>
<%--              String email = reviews.get(i + 1).replace("Email: ", "");--%>
<%--//              String rating = reviews.get(i + 2).replace("Rating: ", "");--%>
<%--              String satisfaction = reviews.get(i + 3).replace("Satisfaction: ", "");--%>
<%--              String description = reviews.get(i + 4).replace("Phone Number ", "");--%>
<%--//              String improvement = reviews.get(i + 5).replace("Improvement: ", "");--%>
<%--              String date = reviews.get(i + 6).replace("Date: ", "");--%>
<%--    %>--%>
<%--    <div class="review-card">--%>
<%--      <h3><%= name %> (<%= email %>)</h3>--%>
<%--      <p> <strong>Gender:</strong> <%= satisfaction %></p>--%>
<%--      <p><strong>Phone Number:</strong> <%= description %></p>--%>
<%--&lt;%&ndash;      <p><strong>Suggestions:</strong> <%= improvement %></p>&ndash;%&gt;--%>
<%--      <p><strong>Date:</strong> <%= date %></p>--%>
<%--      <div class="actions">--%>
<%--        <a href="AdminDashboardServlet?action=edit&index=<%= i %>">Edit</a>--%>
<%--        <a href="javascript:void(0);" onclick="confirmDelete(<%= i %>)">Delete</a>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <%--%>
<%--            i += 6; // Skip to the next review set (7 lines per review)--%>
<%--          } catch (Exception e) {--%>
<%--            continue; // Skip incomplete reviews--%>
<%--          }--%>
<%--        }--%>
<%--      }--%>
<%--    } else {--%>
<%--    %>--%>
<%--    <div class="no-reviews">No Directors available.</div>--%>
<%--    <%--%>
<%--      }--%>
<%--    %>--%>
<%--  </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Movie Directors</title>
    <style>
        :root {
            --primary-color: #4a6fa5;
            --secondary-color: #166088;
            --accent-color: #4fc3f7;
            --dark-bg: #2c3e50;
            --light-bg: #f8f9fa;
            --text-dark: #333;
            --text-light: #fff;
            --success-color: #28a745;
            --warning-color: #ffc107;
            --danger-color: #dc3545;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--light-bg);
            color: var(--text-dark);
            line-height: 1.6;
        }

        /* Sidebar Styles */
        .sidebar {
            background-color: var(--dark-bg);
            width: 250px;
            height: 100vh;
            padding: 2rem 1rem;
            position: fixed;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            color: var(--text-light);
            box-shadow: 2px 0 15px rgba(0, 0, 0, 0.1);
            z-index: 100;
        }

        .sidebar-header {
            padding: 0 1rem 1.5rem;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            margin-bottom: 1.5rem;
        }

        .sidebar-header h2 {
            color: var(--accent-color);
            font-size: 1.5rem;
        }

        .sidebar-nav {
            flex-grow: 1;
        }

        .nav-item {
            margin-bottom: 0.5rem;
        }

        .nav-link {
            display: flex;
            align-items: center;
            padding: 0.75rem 1rem;
            color: var(--text-light);
            text-decoration: none;
            border-radius: 4px;
            transition: all 0.3s ease;
        }

        .nav-link:hover, .nav-link.active {
            background-color: rgba(79, 195, 247, 0.1);
            color: var(--accent-color);
        }

        .nav-link i {
            margin-right: 0.75rem;
            font-size: 1.1rem;
        }

        /* Main Content */
        .main-content {
            margin-left: 250px;
            padding: 2rem;
            min-height: 100vh;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid #e0e0e0;
        }

        .page-title {
            color: var(--secondary-color);
            font-size: 1.8rem;
        }

        .btn {
            padding: 0.5rem 1rem;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
        }

        .btn-primary {
            background-color: var(--primary-color);
            color: white;
        }

        .btn-primary:hover {
            background-color: var(--secondary-color);
        }

        .btn i {
            margin-right: 0.5rem;
        }

        /* Directors Grid */
        .directors-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-top: 1.5rem;
        }

        .director-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .director-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.12);
        }

        .director-header {
            background-color: var(--primary-color);
            color: white;
            padding: 1rem;
        }

        .director-name {
            font-size: 1.2rem;
            margin-bottom: 0.25rem;
        }

        .director-email {
            font-size: 0.85rem;
            opacity: 0.9;
        }

        .director-body {
            padding: 1.25rem;
        }

        .director-info {
            margin-bottom: 0.75rem;
        }

        .director-info-label {
            font-weight: 600;
            color: var(--secondary-color);
            display: block;
            margin-bottom: 0.25rem;
        }

        .director-bio {
            margin-top: 1rem;
            padding: 0.75rem;
            background-color: #f8f9fa;
            border-radius: 4px;
            font-size: 0.9rem;
            line-height: 1.5;
        }

        .director-actions {
            display: flex;
            justify-content: flex-end;
            gap: 0.75rem;
            padding: 0.75rem 1.25rem;
            border-top: 1px solid #eee;
        }

        .btn-sm {
            padding: 0.35rem 0.75rem;
            font-size: 0.85rem;
        }

        .btn-edit {
            background-color: var(--warning-color);
            color: var(--text-dark);
        }

        .btn-delete {
            background-color: var(--danger-color);
            color: white;
        }

        .empty-state {
            text-align: center;
            padding: 3rem;
            grid-column: 1 / -1;
        }

        .empty-state-icon {
            font-size: 3rem;
            color: #ccc;
            margin-bottom: 1rem;
        }

        .empty-state-text {
            color: #666;
            margin-bottom: 1.5rem;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .directors-container {
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            }
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 70px;
                padding: 1rem 0.5rem;
                align-items: center;
            }

            .sidebar-header h2 {
                display: none;
            }

            .nav-link span {
                display: none;
            }

            .nav-link i {
                margin-right: 0;
                font-size: 1.3rem;
            }

            .main-content {
                margin-left: 70px;
            }
        }

        @media (max-width: 576px) {
            .main-content {
                padding: 1rem;
            }

            .directors-container {
                grid-template-columns: 1fr;
            }

            .header {
                flex-direction: column;
                align-items: flex-start;
                gap: 1rem;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script>
        function confirmDelete(index) {
            if (confirm("Are you sure you want to delete this director?")) {
                window.location.href = "AdminDashboardServlet?action=delete&index=" + index;
            }
        }
    </script>
</head>
<body>

<!-- Sidebar Navigation -->
<div class="sidebar">
    <div class="sidebar-header">
        <h2>Movie Rental Admin</h2>
    </div>
    <nav class="sidebar-nav">
        <div class="nav-item">
            <a href="adminDashboard.jsp" class="nav-link active">
                <i class="fas fa-users"></i>
                <span>Manage Directors</span>
            </a>
        </div>
        <div class="nav-item">
            <a href="reviewForm.jsp" class="nav-link">
                <i class="fas fa-user-plus"></i>
                <span>Add Directors</span>
            </a>
        </div>
        <div class="nav-item">
            <a href="logout.jsp" class="nav-link">
                <i class="fas fa-sign-out-alt"></i>
                <span>Logout</span>
            </a>
        </div>
    </nav>
</div>

<!-- Main Content Area -->
<div class="main-content">
    <div class="header">
        <h1 class="page-title">Movie Directors</h1>
        <a href="reviewForm.jsp" class="btn btn-primary">
            <i class="fas fa-plus"></i>
            Add New Director
        </a>
    </div>

    <div class="directors-container">
        <%
            // Secure and consistent file path for reviews
            String filePath = application.getRealPath("/WEB-INF/reviews.txt");
            File file = new File(filePath);

            if (file.exists() && file.length() > 0) {
                List<String> reviews = Files.readAllLines(Paths.get(filePath));
                for (int i = 0; i < reviews.size(); i++) {
                    String line = reviews.get(i).trim();
                    if (line.startsWith("User:")) {
                        try {
                            String name = line.replace("User: ", "");
                            String email = reviews.get(i + 1).replace("Email: ", "");
                            String satisfaction = reviews.get(i + 2).replace("satisfaction: ", "");
                            String description = reviews.get(i + 3).replace("Phone Number ", "");
                            String movie = reviews.get(i + 4).replace("movie ", "");
                            String rating = reviews.get(i + 5).replace("rating ", "");
        %>
        <div class="director-card">
            <div class="director-header">
                <h3 class="director-name"><%= name %></h3>
                <p class="director-email"><%= email %></p>
            </div>
            <div class="director-body">
                <div class="director-info">
                    <span class="director-info-label">Gender:</span>
                    <%= satisfaction %>
                </div>
                <div class="director-info">
                    <span class="director-info-label">Bio:</span>
                    <div class="director-bio"><%= description %></div>
                </div>

                <div class="director-info">
                    <span class="director-info-label">movie:</span>
                    <div class="director-bio"><%= movie %></div>
                </div>

                <div class="director-info">
                    <span class="director-info-label">rating:</span>
                    <div class="director-bio"><%= rating %></div>
                </div>
            </div>
            <div class="director-actions">
                <a href="AdminDashboardServlet?action=edit&index=<%= i %>" class="btn btn-sm btn-edit">
                    <i class="fas fa-edit"></i> Edit
                </a>
                <button onclick="confirmDelete(<%= i %>)" class="btn btn-sm btn-delete">
                    <i class="fas fa-trash"></i> Delete
                </button>
            </div>
        </div>
        <%
                        i += 6; // Skip to the next review set (7 lines per review)
                    } catch (Exception e) {
                        continue; // Skip incomplete reviews
                    }
                }
            }
        } else {
        %>
        <div class="empty-state">
            <div class="empty-state-icon">
                <i class="fas fa-users-slash"></i>
            </div>
            <h3 class="empty-state-text">No Directors Found</h3>
            <a href="reviewForm.jsp" class="btn btn-primary">
                <i class="fas fa-plus"></i>
                Add Your First Director
            </a>
        </div>
        <%
            }
        %>
    </div>
</div>
</body>
</html>