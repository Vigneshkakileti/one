document.addEventListener('DOMContentLoaded', function() {
    // Load products from backend
    fetchProducts();
    
    // Initialize cart count
    updateCartCount();
});

function fetchProducts() {
    fetch('/products')
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(products => {
            displayProducts(products);
        })
        .catch(error => {
            console.error('Error fetching products:', error);
            // Display mock products if API fails
            displayProducts(getMockProducts());
        });
}

function displayProducts(products) {
    const container = document.getElementById('products-container');
    container.innerHTML = '';
    
    products.slice(0, 8).forEach(product => {
        const productCard = document.createElement('div');
        productCard.className = 'product-card';
        productCard.innerHTML = `
            <img src="${product.imageUrl || 'images/placeholder-product.jpg'}" 
                 alt="${product.name}" 
                 class="product-image">
            <div class="product-title">${product.name}</div>
            <div class="product-price">₹${product.price.toFixed(2)}</div>
            <button class="add-to-cart" onclick="addToCart(${product.id}, event)">Add to Cart</button>
        `;
        
        productCard.addEventListener('click', function(e) {
            if (!e.target.classList.contains('add-to-cart')) {
                window.location.href = `product.jsp?id=${product.id}`;
            }
        });
        
        container.appendChild(productCard);
    });
}

function addToCart(productId, event) {
    event.stopPropagation();
    
    // Check if user is logged in
    if (!localStorage.getItem('authToken')) {
        window.location.href = 'login.jsp';
        return;
    }
    
    fetch('/cart', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ' + localStorage.getItem('authToken')
        },
        body: JSON.stringify({
            productId: productId,
            quantity: 1
        })
    })
    .then(response => response.json())
    .then(data => {
        alert('Product added to cart!');
        updateCartCount();
    })
    .catch(error => {
        console.error('Error adding to cart:', error);
        alert('Failed to add product to cart');
    });
}

function updateCartCount() {
    // In a real app, this would fetch from /cart/count
    const cartCount = localStorage.getItem('cartCount') || 0;
    // Update UI if cart count element exists
}

function getMockProducts() {
    return [
        {
            id: 1,
            name: "Smartphone X",
            price: 19999,
            imageUrl: "images/phone1.jpg"
        },
        {
            id: 2,
            name: "Wireless Headphones",
            price: 2999,
            imageUrl: "images/headphones.jpg"
        },
        // Add more mock products as needed
    ];
}
