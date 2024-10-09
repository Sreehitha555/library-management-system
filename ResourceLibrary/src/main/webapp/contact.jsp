<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo"><a href="#">EduLib</a></div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="browse.jsp">Browse</a></li>
                <li><a href="categories.jsp">Categories</a></li>
                <li><a href="mylibrary.jsp">My Library</a></li>
            </ul>
        </nav>
    </header>

    <h1>Contact Us</h1>
    <form action="submitContact.jsp" method="POST">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <textarea name="message" placeholder="Your Message" required></textarea>
        <button type="submit">Send</button>
    </form>

    <footer>
        <p>© 2024 EduLib. All Rights Reserved.</p>
    </footer>
</body>
</html>
