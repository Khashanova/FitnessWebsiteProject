const products = [
    { id: 1, name: 'Optimum Nutrition Gold Standard', price: 1499.99 },
    { id: 2, name: 'Muscletech Nitrotech Whey Gold', price: 1999.99 },
    { id: 3, name: 'Optimum Nutrition Gold Standard Isolate', price: 2999.99 },
  ];
  
  let cart = [];
  
  function addToCart(productId) {
    const product = products.find(p => p.id === productId);
    const existingProduct = cart.find(p => p.id === productId);
    if (existingProduct) {
      existingProduct.quantity++;
    } else {
      cart.push({ ...product, quantity: 1 });
    }
    updateCart();
  }
  
  function updateCart() {
    
    const cartEl = document.getElementById('cart');
    cartEl.innerHTML = '';
    let total = 0;
    for (const product of cart) {
      const row = document.createElement('tr');
      row.innerHTML = `
        <td>${product.name}</td>
        <td>LE${product.price.toFixed(2)}</td>
        <td><input type="number" value="${product.quantity}" onchange="updateQuantity(${product.id}, this)"></td>
        <td>LE${(product.price * product.quantity).toFixed(2)}</td>
        <td><button onclick="removeFromCart(${product.id})">X</button></td>
      `;
      cartEl.appendChild(row);
      total += product.price * product.quantity;
    }
    document.getElementById('total').innerText = `LE${total.toFixed(2)}`;
  }
  
  
  function updateQuantity(productId, el) {
    const product = cart.find(p => p.id === productId);
    product.quantity = parseInt(el.value);
    updateCart();
  }
  
  function removeFromCart(productId) {
    cart = cart.filter(p => p.id !== productId);
    updateCart();
  }
  
  function checkout() {
    // Generate the report
    let report = 'Your cart:\n';
    for (const product of cart) {
      report += `${product.name} x ${product.quantity} = LE${(product.price * product.quantity).toFixed(2)}\n`;
    }
    report += `Total: LE${document.getElementById('total').innerText}\n`;
      
      const doc = new jsPDF();
      doc.text(report, 10, 10);
      doc.save('report.pdf');

      // Open the PDF in a new window
      window.open('PDFpage.aspx','_self');

  }
   