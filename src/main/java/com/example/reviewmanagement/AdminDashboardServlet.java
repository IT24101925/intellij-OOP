package com.example.reviewmanagement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.file.*;
import java.util.*;

@WebServlet("/AdminDashboardServlet")
public class AdminDashboardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String FILE_PATH = "/WEB-INF/reviews.txt";

    // Handle GET Requests (Edit, Delete)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int index = Integer.parseInt(request.getParameter("index"));

        if (action.equals("delete")) {
            deleteReview(index, request);
            response.sendRedirect("adminDashboard.jsp");
        } else if (action.equals("edit")) {
            request.setAttribute("index", index);
            request.setAttribute("review", getReviewData(index, request));
            request.getRequestDispatcher("editReview.jsp").forward(request, response);
        }
    }

    // Handle POST Requests (Update Review)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action.equals("update")) {
            updateReview(request);
        }

        response.sendRedirect("adminDashboard.jsp");
    }

    // Method to Delete Review
    private void deleteReview(int index, HttpServletRequest request) throws IOException {
        String filePath = getServletContext().getRealPath(FILE_PATH);
        List<String> reviews = Files.readAllLines(Paths.get(filePath));

        // Ensure the review has 7 lines (each review is 7 lines)
        if (index + 7 < reviews.size()) {
            for (int i = 0; i < 7; i++) {
                reviews.remove(index);
            }
        }

        Files.write(Paths.get(filePath), reviews);
    }

    // Method to Update Review
    private void updateReview(HttpServletRequest request) throws IOException {
        String filePath = getServletContext().getRealPath(FILE_PATH);
        List<String> reviews = Files.readAllLines(Paths.get(filePath));
        int index = Integer.parseInt(request.getParameter("index"));

        // Ensure the review has 7 lines
        if (index + 7 < reviews.size()) {
            reviews.set(index, "User: " + request.getParameter("name"));
            reviews.set(index + 1, "Email: " + request.getParameter("email"));
            reviews.set(index + 2, "satisfaction: " + request.getParameter("satisfaction"));
            reviews.set(index + 3, "Description: " + request.getParameter("description"));
            reviews.set(index + 4, "movie: " + request.getParameter("movie"));
            reviews.set(index + 5, "rating: " + request.getParameter("rating"));
        }

        Files.write(Paths.get(filePath), reviews);
    }

    // Method to Get Review Data for Editing
    private List<String> getReviewData(int index, HttpServletRequest request) throws IOException {
        String filePath = getServletContext().getRealPath(FILE_PATH);
        List<String> reviews = Files.readAllLines(Paths.get(filePath));
        List<String> reviewData = new ArrayList<>();

        // Ensure the review has 7 lines
        if (index + 7 < reviews.size()) {
            for (int i = 0; i < 7; i++) {
                reviewData.add(reviews.get(index + i));
            }
        }

        return reviewData;
    }
}
