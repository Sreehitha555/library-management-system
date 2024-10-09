<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resource Library</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // Smooth scroll on Get Started click
            $(".btn-primary").click(function(e) {
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: $("#about-section").offset().top
                }, 800);
            });

            // Highlight current page link in the navbar
            const currentPage = window.location.pathname.split("/").pop();
            $(".nav-links a").each(function() {
                if ($(this).attr("href").indexOf(currentPage) !== -1) {
                    $(this).addClass("active");
                }
            });

            // Toggle between login and register
            $(".register-link").click(function(e) {
                e.preventDefault();
                $(".login-form").hide();
                $(".register-form").show();
            });

            $(".login-link").click(function(e) {
                e.preventDefault();
                $(".register-form").hide();
                $(".login-form").show();
            });

            // Scroll to top on Home click
            $(".home-link").click(function(e) {
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: 0
                }, 800);
            });
        });
    </script>
</head>
<body>
    <!-- Fixed Navigation Bar -->
    <header>
        <nav class="navbar">
            <div class="logo"><a href="#" class="home-link">EDULIB</a></div>
            <ul class="nav-links">
                <li><a href="index.jsp" class="home-link">Home</a></li>
                <li><a href="browse.jsp">Browse</a></li>
                <li><a href="categories.jsp">Categories</a></li>
                <li><a href="mylibrary.jsp">My Library</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <img src="images/image1.jpg" alt="Hero Image" class="hero-image">
        <div class="hero-text">
            <h1>Explore Knowledge</h1>
            <p>Find textbooks, research papers, and study guides at your fingertips.</p>
            <a href="#" class="btn-primary">Get Started</a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about-section" class="about-section">
        <h2>About EduLib</h2>
        <p>Welcome to EduLib! Our platform provides access to a wide range of educational materials, including textbooks, research papers, and study guides, to enhance your learning and research.</p>

        <!-- Login Section -->
        <h3>Login to Access Your Library</h3>
        <form action="login.jsp" method="post" class="login-form">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <button type="submit" class="btn-secondary">Login</button><br>
            <p>New user? <a href="#" class="register-link">Register</a></p>
        </form>

        <!-- Registration Section -->
        <form action="register.jsp" method="post" class="register-form" style="display:none;">
            <input type="text" name="firstname" placeholder="First Name" required><br>
            <input type="text" name="lastname" placeholder="Last Name" required><br>
            <input type="email" name="email" placeholder="Email" required><br>
            <input type="tel" name="phone" placeholder="Phone Number" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="password" name="confirm-password" placeholder="Confirm Password" required><br>
            <span class="error-message" style="color:red; display:none;">Passwords do not match!</span><br>
            <button type="submit" class="btn-secondary">Register</button><br>
            <p>Already have an account? <a href="#" class="login-link">Login</a></p>
        </form>
    </section>

    <!-- Footer -->
    <footer>
        <p>© 2024 EduLib. All Rights Reserved.</p>
    </footer>
</body>
</html>
