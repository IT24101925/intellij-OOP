<!DOCTYPE html>
<html>
<head>
    <title>Director Added Successfully</title>
    <!-- SweetAlert2 for Popup -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- Canvas Confetti for Animation -->
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.5.1/dist/confetti.browser.min.js"></script>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: #f4f4f9;
        }
    </style>
</head>
<body>

<script>
    // Ensure Canvas Confetti is loaded before use
    document.addEventListener("DOMContentLoaded", function() {
        if (typeof confetti !== "undefined") {
            launchConfetti();
        } else {
            console.error("Confetti library failed to load.");
        }

        // Display SweetAlert2 Popup
        Swal.fire({
            title: 'Director Added',
            text: 'Director has been added successfully.',
            icon: 'success',
            showConfirmButton: true,
            confirmButtonText: 'OK',
            allowOutsideClick: false
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'index.jsp';
            }
        });
    });

    // Function to trigger confetti animation
    function launchConfetti() {
        confetti({
            particleCount: 200,
            spread: 100,
            origin: { y: 0.6 }
        });
    }
</script>

</body>
</html>
