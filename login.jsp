<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Beasts</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Login or Register</h1>
    </header>

<nav>
        <a href="book store.jsp">Home</a>
        <a href="catalog.jsp">Catalogue</a>
        <a href="contact.jsp">Contact</a>
        <a href="about.jsp">About</a>
        <a href="login.jsp">Login/Register</a>
        <a href="cart1.jsp">Cart</a>
    </nav>
    <section>
        <form action="Login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="Username" required placeholder="Username">

            <label for="password">Password:</label>
            <input type="password" id="password" name="Password" required>

            <button type="submit">Login</button>
            <p>Don't have an account? <a href="register.jsp">Register here</a></p>
        </form>
    </section>

    <footer>
        <p>&copy; 2023 Bookstore. All rights reserved.</p>
    </footer>
</body>
</html>
