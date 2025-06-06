// Load products from backend
document.addEventListener('DOMContentLoaded', function() {
    fetchProducts();
});

function fetchProducts() {
    fetch('/products')
        .then(response => response.json())
        .then(products => {
            displayProducts(products);
        })
        .catch(error => console.error('Error fetching products:', error));
}

function displayProducts(products) {
    const dealsContainer = document.getElementById('deals-container');
    dealsContainer.innerHTML = '';
    
    // Show only first 6 products as deals
    const deals = products.slice(0, 6);
    
    deals.forEach(product => {
        const productCard = document.createElement('div');
        productCard.className = 'product-card';
        productCard.innerHTML = `
            <img src="${product.imageUrl}" alt="${product.name}" class="product-image">
            <h3 class="product-title">${product.name}</h3>
            <div class="product-price">₹${product.price.toFixed(2)}</div>
            <div class="product-rating">4.5 ★</div>
            <button class="add-to-cart" onclick="addToCart(${product.id})">Add to Cart</button>
        `;
        productCard.addEventListener('click', () => {
            window.location.href = `product-details.html?id=${product.id}`;
        });
        dealsContainer.appendChild(productCard);
    });
}

function addToCart(productId) {
    // Prevent the click event from bubbling up to the product card
    event.stopPropagation();
    
    // Check if user is logged in (simplified)
    const isLoggedIn = localStorage.getItem('userToken');
    
    if (!isLoggedIn) {
        window.location.href = 'login.html';
        return;
    }
    
    // Add to cart logic
    fetch('/cart', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${isLoggedIn}`
        },
        body: JSON.stringify({ productId, quantity: 1 })
    })
    .then(response => response.json())
    .then(data => {
        alert('Product added to cart!');
        updateCartCount();
    })
    .catch(error => console.error('Error adding to cart:', error));
}

function updateCartCount() {
    // Update cart count in navbar
    fetch('/cart/count', {
        headers: {
            'Authorization': `Bearer ${localStorage.getItem('userToken')}`
        }
    })
    .then(response => response.json())
    .then(data => {
        const cartCountElements = document.querySelectorAll('.cart-count');
        cartCountElements.forEach(el => {
            el.textContent = data.count;
        });
    })
    .catch(error => console.error('Error fetching cart count:', error));
}
