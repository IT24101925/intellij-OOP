<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 15px;
            width: 350px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            position: relative;
            text-align: center;
            overflow: hidden;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
            position: relative;
            animation: changeText 4s infinite;
        }

        @keyframes changeText {
            0%, 40% {
                content: "Admin Login";
            }
            50%, 100% {
                content: "Hi Admin!";
            }
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 16px;
            color: #555;
            text-align: left;
        }

        .input-field {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            background: #f9f9f9;
            transition: border 0.3s, box-shadow 0.3s;
            text-align: left;
            box-sizing: border-box;
        }

        .input-field:focus {
            outline: none;
            border-color: #0073e6;
            background: #ffffff;
            box-shadow: 0 0 8px rgba(0, 115, 230, 0.2);
        }

        button {
            width: 100%;
            padding: 12px;
            background: #0073e6;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            color: #ffffff;
            transition: background 0.3s;
            margin-top: 10px;
        }

        button:hover {
            background: #005bb5;
        }

        .error-message {
            background-color: #ff4c4c;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            color: #ffffff;
            text-align: center;
            display: none;
        }

        .welcome-animation {
            font-size: 28px;
            color: #0073e6;
            margin-bottom: 20px;
            opacity: 0;
            animation: fadeInOut 6s infinite;
        }

        @keyframes fadeInOut {
            0%, 20% {
                opacity: 0;
            }
            30%, 60% {
                opacity: 1;
            }
            70%, 100% {
                opacity: 0;
            }
        }
    </style>

    <script>
        window.onload = function () {
            const urlParams = new URLSearchParams(window.location.search);
            const error = urlParams.get('error');

            if (error) {
                document.querySelector('.error-message').style.display = 'block';
                document.querySelector('.error-message').innerText = error;
                alert("Invalid Credentials. Please try again.");
            }

            // Animation to change text
            setTimeout(() => {
                document.querySelector('h2').textContent = "Hi Admin!";
            }, 2000);
        }
    </script>
</head>
<body>
<div class="login-container">
    <h2>Admin Login</h2>

    <div class="error-message"></div>

    <form action="AdminLoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" class="input-field" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" class="input-field" required>

        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
