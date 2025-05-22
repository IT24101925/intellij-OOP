<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Director Management System</title>
    <!-- Font Awesome CDN for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #0073e6;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: #ffffff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
        }

        nav {
            display: flex;
            gap: 15px;
        }

        nav a {
            color: #ffffff;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #cce7ff;
        }

        .header {
            position: relative;
            width: 100%;
            height: 300px;
            overflow: hidden;
        }

        .header img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .header .overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgba(0, 0, 0, 0.4);
        }

        .header .overlay a {
            background-color: #0073e6;
            color: #fff;
            padding: 15px 30px;
            font-size: 18px;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s, transform 0.3s;
        }

        .header .overlay a:hover {
            background-color: #005bb5;
            transform: scale(1.05);
        }

        .main {
            padding: 20px;
            text-align: center;
        }

        .search-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1000px;
            margin: 0 auto 20px;
            padding: 0 10px;
        }

        .search-bar {
            display: flex;
            align-items: center;
        }

        .search-bar input {
            padding: 10px;
            width: 300px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .reviews-section {
            max-width: 1000px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .review-card {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 250px;
            position: relative;
        }

        .review-card .user-icon {
            font-size: 50px;
            color: #0073e6;
            position: absolute;
            top: -25px;
            left: 15px;
        }

        .review-card h3 {
            margin: 0;
            font-size: 18px;
            color: #0073e6;
            margin-top: 30px;
        }

        .review-card p {
            font-size: 14px;
            color: #555;
            margin: 5px 0;
        }

        .review-card .actions {
            margin-top: 10px;
            text-align: right;
        }

        .review-card .actions a {
            color: #0073e6;
            text-decoration: none;
            font-size: 14px;
            margin-left: 10px;
        }

        .review-card .actions a:hover {
            text-decoration: underline;
        }

        footer {
            background-color: #0073e6;
            padding: 20px;
            text-align: center;
            color: #ffffff;
        }

        footer .social {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 10px;
        }

        footer .awards {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 10px;
            flex-wrap: wrap;
        }

        footer .award {
            background-color: #005bb5;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 14px;
            color: #ffffff;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .star-rating i {
            color: gold; /* Gold Color for Stars */
            font-size: 18px;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome Kind Users</h1>
    <nav>
        <a href="reviewForm.jsp">Add a Director</a>
        <a href="login.jsp">Admin Login</a>
    </nav>
</header>

<div class="header">
    <img src="images/dir.webp" alt="Header Image">
    <div class="overlay">
        <a href="reviewForm.jsp" class="button">Add a Director</a>
    </div>
</div>

<div class="main">
    <div class="search-section">
        <h2> Our Directors </h2>
        <form class="search-bar" method="get">
            <input type="text" name="search" placeholder="Search reviews...">
            <button type="submit">Search</button>
        </form>
    </div>

    <div class="reviews-section">
        <%
            String filePath = application.getRealPath("/WEB-INF/reviews.txt");
            File file = new File(filePath);
            String search = request.getParameter("search");

            if (file.exists() && file.length() > 0) {
                List<String> reviews = Files.readAllLines(Paths.get(filePath));
                for (int i = 0; i < reviews.size(); i++) {
                    String line = reviews.get(i).trim();
                    if (line.startsWith("User:")) {
                        String name = line.replace("User: ", "");
                        String description = reviews.get(i + 4).replace("Description: ", "");
                        String rating = reviews.get(i + 2).replace("Rating: ", "").replace(" stars", "");
                        if (search == null || search.isEmpty() || name.toLowerCase().contains(search.toLowerCase()) || description.toLowerCase().contains(search.toLowerCase())) {
        %>
        <div class="review-card">
            <i class="fas fa-user-circle user-icon"></i>
            <h3><%= name %></h3>
<%--            <div class="star-rating">--%>
<%--                <%--%>
<%--                    int starCount = Integer.parseInt(rating);--%>
<%--                    for (int star = 1; star <= 5; star++) {--%>
<%--                        if (star <= starCount) {--%>
<%--                %>--%>
<%--                <i class="fas fa-star" style=" color: gold;"></i>--%>
<%--                <% } else { %>--%>
<%--                <i class="far fa-star" style=" color: gold;"></i>--%>
<%--                <% } } %>--%>
<%--            </div>--%>
            <p><%= description %></p>

        </div>
        <%
                        }
                        i += 6;
                    }
                }
            }
        %>
    </div>
</div>

<footer>
    <div class="social">
        <a href="#"><i class="fab fa-facebook"></i> Facebook</a>
        <a href="#"><i class="fab fa-instagram"></i> Instagram</a>
        <a href="mailto:info@example.com"><i class="fas fa-envelope"></i> Email</a>
    </div>


    <div class="awards">
        <div class="award"><i class="fas fa-trophy"></i> Best Customer Service 2025</div>
        <div class="award"><i class="fas fa-shield-alt"></i> Most Trusted Real Estate</div>
        <div class="award"><i class="fas fa-star"></i> Top Rated Agency</div>
    </div>

    <p>&copy; 2025 Director Management System. All Rights Reserved.</p>
</footer>

</body>
</html>
