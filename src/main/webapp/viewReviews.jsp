<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*, java.nio.file.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Reviews</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .review-container {
            width: 90%;
            max-width: 1200px;
            overflow: hidden;
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-size: 32px;
        }

        .carousel {
            display: flex;
            overflow-x: auto;
            scroll-behavior: smooth;
            gap: 20px;
            padding: 10px 0;
        }

        .carousel::-webkit-scrollbar {
            height: 10px;
        }

        .carousel::-webkit-scrollbar-thumb {
            background: #03e9f4;
            border-radius: 10px;
        }

        .review-card {
            flex: 0 0 350px;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            text-align: left;
        }

        .review-card:hover {
            transform: translateY(-5px);
        }

        .review-card h3 {
            margin: 0;
            font-size: 1.3em;
            color: #333;
            margin-bottom: 8px;
        }

        .review-card p {
            margin: 8px 0;
            color: #555;
            font-size: 16px;
            line-height: 1.5;
        }

        .review-card .date {
            font-size: 0.9em;
            color: #777;
            margin-top: 10px;
            text-align: right;
        }

        .controls {
            text-align: center;
            margin-top: 15px;
        }

        .controls button {
            background: #03e9f4;
            color: #ffffff;
            border: none;
            padding: 10px 15px;
            margin: 0 5px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s;
        }

        .controls button:hover {
            background: #028db4;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #03e9f4;
            font-weight: bold;
            font-size: 16px;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .review-container {
                width: 95%;
                padding: 20px;
            }

            .carousel {
                padding: 0 10px;
            }

            .review-card {
                flex: 0 0 280px;
                font-size: 14px;
            }

            h2 {
                font-size: 28px;
            }
        }
    </style>
    <script>
        function scrollCarousel(direction) {
            const carousel = document.querySelector('.carousel');
            const scrollAmount = 350;
            if (direction === 'left') {
                carousel.scrollBy({ left: -scrollAmount, behavior: 'smooth' });
            } else {
                carousel.scrollBy({ left: scrollAmount, behavior: 'smooth' });
            }
        }
    </script>
</head>
<body>
<div class="review-container">
    <h2>User Reviews</h2>
    <div class="carousel">
        <%
            String filePath = application.getRealPath("/WEB-INF/reviews.txt");
            File file = new File(filePath);

            if (file.exists() && file.length() > 0) {
                List<String> reviews = Files.readAllLines(Paths.get(filePath));
                if (reviews.size() > 0) {
                    for (int i = 0; i < reviews.size(); i++) {
                        String line = reviews.get(i).trim();
                        if (line.startsWith("User:")) {
                            try {
                                String name = line.replace("User: ", "");
                                String email = reviews.get(i + 1).replace("Email: ", "");
                                String satisfaction = reviews.get(i + 2).replace("satisfaction: ", "");
                                String description = reviews.get(i + 3).replace("Description: ", "");
                                String movie = reviews.get(i + 4).replace("movie: ", "");
                                String rating = reviews.get(i + 5).replace("rating: ", "");

        %>
        <div class="review-card">
            <h3><%= name %> (<%= email %>)</h3>
            <p> <strong>Satisfaction:</strong> <%= satisfaction %></p>
            <p><%= description %></p> <p><%= movie %></p>  <p><%= rating %></p>
<%--            <p class="date">Date: <%= date %></p>--%>
        </div>
        <%
                        i += 6;
                    } catch (Exception e) {
                        continue;
                    }
                }
            }
        } else {
        %>
        <p class="no-reviews">No reviews have been submitted yet.</p>
        <%
            }
        } else {
        %>
        <p class="no-reviews">No reviews have been submitted yet.</p>
        <%
            }
        %>
    </div>
    <div class="controls">
        <button onclick="scrollCarousel('left')">&larr; Previous</button>
        <button onclick="scrollCarousel('right')">Next &rarr;</button>
    </div>
    <a href="reviewForm.jsp" class="back-link">Submit Another Review</a>
</div>
</body>
</html>
