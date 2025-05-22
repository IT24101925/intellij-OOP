package com.example.reviewmanagement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.nio.file.*;
import java.time.LocalDateTime;

@WebServlet("/submitReview")
public class SubmitReviewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Secure File Path: Reviews will be saved in the project directory (WEB-INF)
    private static final String FILE_PATH = "/WEB-INF/reviews.txt";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Setting request encoding to UTF-8 for special characters
        request.setCharacterEncoding("UTF-8");

        // Retrieving form data
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
//        int rating = Integer.parseInt(request.getParameter("rating"));
        String satisfaction = request.getParameter("satisfaction");
        String description = request.getParameter("description");
        String movie = request.getParameter("movie");
        String rating = request.getParameter("rating");


        // Preparing review data to save
        String reviewData = String.format(
                "User: %s\nEmail: %s\nsatisfaction: %s\nDescription: %s\nmovie:  %s\nrating: %s\n--------------------------------------------\n",
                userName, email,  satisfaction, description,movie,rating
        );

        // Getting the real file path in the project directory
        String absoluteFilePath = getServletContext().getRealPath(FILE_PATH);
        File file = new File(absoluteFilePath);

        // Ensuring the directory exists
        file.getParentFile().mkdirs(); // Create directory if not exists

        // Logging the file path
        System.out.println("Saving review to: " + absoluteFilePath);

        // Writing the review data
        try (BufferedWriter writer = Files.newBufferedWriter(Paths.get(absoluteFilePath), StandardOpenOption.CREATE, StandardOpenOption.APPEND)) {
            writer.write(reviewData);
            System.out.println("Review saved successfully to: " + absoluteFilePath);
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("Error saving the review: " + e.getMessage());
        }

        // Redirecting to popup page
        response.sendRedirect("reviewPopup.jsp");
    }
}
