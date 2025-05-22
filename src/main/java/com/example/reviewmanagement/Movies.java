package com.example.reviewmanagement;

public class Movies {
    private String name;
    private String email;
    private String satisfaction;
    private String description;
    private String movie;
    private String rating;

    // Constructor
    public Movies(String name, String email, String satisfaction, String description, String movie, String rating) {
        this.name = name;
        this.email = email;
        this.satisfaction = satisfaction;
        this.description = description;
        this.movie = movie;
        this.rating = rating;
    }

    // Getters
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getSatisfaction() {
        return satisfaction;
    }

    public String getDescription() {
        return description;
    }

    public String getMovie() {
        return movie;
    }

    public String getRating() {
        return rating;
    }

    // Setters
    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSatisfaction(String satisfaction) {
        this.satisfaction = satisfaction;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setMovie(String movie) {
        this.movie = movie;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    // toString method for displaying review
    @Override
    public String toString() {
        return "User: " + name + "<br>" +
                "Email: " + email + "<br>" +
                "Satisfaction: " + satisfaction + "<br>" +
                "Description: " + description + "<br>" +
                "Movie: " + movie + "<br>" +
                "Rating: " + rating + "<br><br>";
    }
}
