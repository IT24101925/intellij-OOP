


<!DOCTYPE html>
<html>
<head>
    <title>Add Director</title>
    <style>
        :root {
            --primary-color: #3a7bd5;
            --primary-dark: #00d2ff;
            --secondary-color: #2c3e50;
            --accent-color: #3498db;
            --light-bg: #f5f7fa;
            --text-dark: #34495e;
            --text-light: #ecf0f1;
            --border-color: #dfe6e9;
            --error-color: #e74c3c;
            --success-color: #2ecc71;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 2rem;
            line-height: 1.6;
        }

        .form-container {
            background-color: white;
            width: 100%;
            max-width: 520px;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
            transform: translateY(0);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
        }

        .form-header {
            text-align: center;
            margin-bottom: 2.5rem;
        }

        .form-header h2 {
            color: var(--secondary-color);
            font-size: 1.8rem;
            margin-bottom: 0.5rem;
            font-weight: 600;
            letter-spacing: -0.5px;
        }

        .form-header p {
            color: #7f8c8d;
            font-size: 0.95rem;
            font-weight: 400;
        }

        .form-group {
            margin-bottom: 1.75rem;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.75rem;
            font-weight: 500;
            color: var(--secondary-color);
            font-size: 0.95rem;
        }

        .form-control {
            width: 100%;
            padding: 0.9rem 1.2rem;
            border: 2px solid var(--border-color);
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
            background-color: #f8f9fa;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--accent-color);
            background-color: white;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
        }

        textarea.form-control {
            min-height: 120px;
            resize: vertical;
            line-height: 1.5;
        }

        select.form-control {
            appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%237f8c8d' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 1.2rem center;
            background-size: 1rem;
        }

        .btn {
            display: inline-block;
            width: 100%;
            padding: 1rem;
            background: linear-gradient(to right, var(--primary-color), var(--primary-dark));
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-align: center;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px rgba(0, 0, 0, 0.08);
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 7px 14px rgba(50, 50, 93, 0.1), 0 3px 6px rgba(0, 0, 0, 0.08);
            background: linear-gradient(to right, #2c6dd5, #00c9ff);
        }

        .btn:active {
            transform: translateY(0);
        }

        .error-message {
            color: var(--error-color);
            font-size: 0.85rem;
            margin-top: 0.5rem;
            display: block;
            font-weight: 400;
        }

        /* Floating label animation */
        .form-group.focused label {
            color: var(--accent-color);
        }

        /* Responsive adjustments */
        @media (max-width: 576px) {
            .form-container {
                padding: 1.75rem;
            }

            .form-header h2 {
                font-size: 1.6rem;
            }

            .btn {
                padding: 0.9rem;
            }
        }

        /* Loading animation for submit button */
        .btn.loading {
            position: relative;
            color: transparent;
        }

        .btn.loading::after {
            content: "";
            position: absolute;
            width: 20px;
            height: 20px;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            border: 3px solid transparent;
            border-top-color: white;
            border-radius: 50%;
            animation: button-loading-spinner 1s ease infinite;
        }

        @keyframes button-loading-spinner {
            from {
                transform: rotate(0turn);
            }
            to {
                transform: rotate(1turn);
            }
        }
    </style>
</head>
<body>
<div class="form-container">
    <div class="form-header">
        <h2>Add New Director</h2>
        <p>Complete the form below to add a new director to our database</p>
    </div>

    <form id="reviewForm" action="submitReview" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="userName">Director Name</label>
            <input type="text" id="userName" name="userName" class="form-control" placeholder="Enter director's full name" required>
            <span id="nameError" class="error-message"></span>
        </div>

        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="Enter director's professional email" required>
            <span id="emailError" class="error-message"></span>
        </div>

        <div class="form-group">
            <label for="satisfaction">Gender</label>
            <select id="satisfaction" name="satisfaction" class="form-control" required>
                <option value="" disabled selected>Select gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
        </div>

        <div class="form-group">
            <label for="description">Professional Bio</label>
            <textarea id="description" name="description" class="form-control" placeholder="Provide a brief professional biography" required></textarea>
        </div>

        <div class="form-group">
            <label for="movie">Notable Movies</label>
            <textarea id="movie" name="movie" class="form-control" placeholder="List the director's notable works (separate with commas)" required></textarea>
        </div>

        <div class="form-group">
            <label for="rating">Rating</label>
            <select id="rating" name="rating" class="form-control" required>
                <option value="" disabled selected>Select a rating</option>
                <option value="1 star">1 star</option>
                <option value="2 star">2 star</option>
                <option value="3 star">3 star</option>
                <option value="4 star">4 star</option>
                <option value="5 star">5 star</option>
            </select>
        </div>

        <button type="submit" class="btn">Add Director</button>
    </form>
</div>

<script>
    function validateForm() {
        const name = document.getElementById("userName").value.trim();
        const email = document.getElementById("email").value.trim();
        const nameError = document.getElementById("nameError");
        const emailError = document.getElementById("emailError");

        let isValid = true;

        // Validate name (only letters)
        const namePattern = /^[A-Za-z\s]+$/;
        if (!namePattern.test(name)) {
            nameError.textContent = "Name should contain only letters.";
            isValid = false;
        } else {
            nameError.textContent = "";
        }

        // Validate email contains @
        if (!email.includes("@")) {
            emailError.textContent = "Please enter a valid email address.";
            isValid = false;
        } else {
            emailError.textContent = "";
        }

        return isValid;
    }
</script>
</body>
</html>