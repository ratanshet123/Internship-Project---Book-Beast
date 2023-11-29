<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration - Book Beasts</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>User Registration</h1>
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
        <form action="Registration" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="UserName" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="Email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="Password" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="Address" required>

            <label for="contact">Contact:</label>
            <input type="tel" id="contact" name="Phone" required pattern="^[1-9]{1}[0-9]{9}$">

            <button type="submit">Register</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2023 Bookstore. All rights reserved.</p>
    </footer>
</body>
</html>
