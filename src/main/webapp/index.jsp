<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flipkart Clone - Online Shopping</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">
                <a href="index.html">Flipkart</a>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search for products, brands and more">
                <button><i class="fas fa-search"></i></button>
            </div>
            <div class="nav-links">
                <a href="login.html" class="nav-link">Login</a>
                <a href="#" class="nav-link">More</a>
                <a href="cart.html" class="nav-link"><i class="fas fa-shopping-cart"></i> Cart</a>
            </div>
        </div>
    </nav>

    <!-- Categories Section -->
    <div class="categories">
        <div class="category">
            <img src="images/mobiles.jpg" alt="Mobiles">
            <p>Mobiles</p>
        </div>
        <div class="category">
            <img src="images/fashion.jpg" alt="Fashion">
            <p>Fashion</p>
        </div>
        <div class="category">
            <img src="images/electronics.jpg" alt="Electronics">
            <p>Electronics</p>
        </div>
        <div class="category">
            <img src="images/home.jpg" alt="Home">
            <p>Home</p>
        </div>
        <div class="category">
            <img src="images/appliances.jpg" alt="Appliances">
            <p>Appliances</p>
        </div>
    </div>

    <!-- Deals of the Day -->
    <section class="deals-section">
        <h2>Deals of the Day</h2>
        <div class="products-container" id="deals-container">
            <!-- Products will be loaded via JavaScript -->
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-section">
                <h3>About</h3>
                <ul>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Help</h3>
                <ul>
                    <li><a href="#">Payments</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Policy</h3>
                <ul>
                    <li><a href="#">Return Policy</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Security</a></li>
                </ul>
            </div>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>
