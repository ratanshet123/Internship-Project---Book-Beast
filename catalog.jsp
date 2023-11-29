<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Catalogue - Book Beasts</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Book Catalog</h1>
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
        <h2>Explore Our Catalog</h2>
        <div class="main">
        <div class="one" id="transition" onclick="redirectToPage('Mythology.jsp')">
            <h1><a href="Mythology.html">Mythology</a></h1>
        </div>

        <div class="two" id="transition" onclick="redirectToPage('Biography and Autobiography.jsp')">
            <h1><a href="Biography and Autobiography.html">Biography and AutoBiography</a></h1>
        </div>
        <div class="three" id="transition" onclick="redirectToPage('Motivational or Inspirational.jsp')">
            <h1><a href="Motivational or Inspirational.html">Motivational / Inspirational </a></h1>
        </div>
    
        <div class="four" id="transition" onclick="redirectToPage('Health and Fitness.jsp')">
            <h1><a href="Health and Fitness.html">Health & Fitness</a></h1>
        </div>
        <div class="five" id="transition" onclick="redirectToPage('Humor & Entertainment.jsp')">
            <h1><a href="Humor & Entertainment.html">Humor & Entertainment </a></h1>
      </div>
    
      <div class="six" id="transition" onclick="redirectToPage('Business & Money.jsp')">
        <h1><a href="Business & Money.html">Business & Money</a></h1>
      </div>
      <div class="seven" id="transition" onclick="redirectToPage('History.jsp')">
        <h1><a href="History.html">History</a></h1>
    </div>
    <div class="eight" id="transition" onclick="redirectToPage('Law & Criminology.jsp')">
        <h1><a href="Law & Criminology.html">Law & Criminology </a></h1>
    </div>
    <div class="nine" id="transition" onclick="redirectToPage('Politics & Social Sciences.jsp')">
        <h1><a href="Politics & Social Sciences.html">Politics & Social Sciences</a></h1>
    </div>
    <div class="ten" id="transition" onclick="redirectToPage('Religion & Spirituality.jsp')">
        <h1><a href="Religion & Spirituality.html">Religion & Spirituality</a></h1>
    </div>   
    <div class="eleven" id="transition" onclick="redirectToPage('Education & Teaching.jsp')">
        <h1><a href="Education & Teaching.html">Education & Teaching</a></h1>
    </div>   
    <div class="twelve" id="transition" onclick="redirectToPage('Travel.jsp')">
        <h1><a href="Travel.html">Travel</a></h1>
    </div>   
</div>
    </section>

    
    <section id="cart">
        <h2>Your Cart</h2>
        <ul id="cartItems"></ul>
    </section>
    <section>
        
    </section>

    <footer>
        <p>&copy; 2023 Bookstore. All rights reserved.</p>
    </footer>
    
    
    <script>
        function redirectToPage(pageUrl) {
            window.location.href = pageUrl;
        }
    </script>
</body>
</html>
