<!-- Change this: -->
<img src="${product.imageUrl || 'images/placeholder-product.jpg'}" 
     alt="${product.name}" 
     class="product-image">

<!-- To this: -->
<img src="${pageContext.request.contextPath}/images/${product.imageUrl || 'placeholder-product.jpg'}" 
     alt="${product.name}" 
     class="product-image">
