<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flipkart Clone</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="logo">Flipkart</div>
            <div class="search-box">
                <input type="text" placeholder="Search for products, brands">
                <button><i class="fas fa-search"></i></button>
            </div>
            <div class="user-actions">
                <a href="login.jsp">Login</a>
                <a href="#">More <i class="fas fa-chevron-down"></i></a>
                <a href="cart.jsp"><i class="fas fa-shopping-cart"></i> Cart</a>
            </div>
        </div>
    </header>

    <nav class="categories">
        <div class="container">
            <div class="category-item">
                <i class="far fa-square"></i>
                <span>Mobiles</span>
            </div>
            <div class="category-item">Fashion</div>
            <div class="category-item">
                <i class="far fa-square"></i>
                <span>Electronics</span>
            </div>
            <div class="category-item">Home</div>
            <div class="category-item">
                <i class="far fa-square"></i>
                <span>Appliances</span>
            </div>
        </div>
    </nav>

    <main class="main-content">
        <div class="container">
            <h2 class="section-title">Deals of the Day</h2>
            <div class="products-grid" id="products-container">
                <!-- Products will be loaded via JavaScript -->
            </div>
        </div>
    </main>

    <footer class="footer">
        <div class="container">
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
                </ul>
            </div>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>
