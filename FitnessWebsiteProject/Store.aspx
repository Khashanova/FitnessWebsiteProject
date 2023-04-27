<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="FitnessWebsiteProject.Store" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <title>Store</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
</head>

<link rel="stylesheet" href="Store.css" />


<body>

    <div class="header">
        <div class="inner_header">
           <div class="logo_container">
                    <a href="HomePage.aspx">

                        <h1><span>O</span>fit</h1>
                    </a>
             </div>
            <ul class="nav">
                <a href="Profile.aspx">
                    <b>
                <li>Profile</li></b>
                </a>

                <a href="MathPage.aspx">
                    <b>
                <li>Math</li></b>
                </a>
                <a href="ExercisesPage.aspx">
                    <b>
                <li>Exercise</li></b>
                </a>
                <a href="MacrosPage.aspx">
                    <b>
                <li>Macros</li></b>
                </a>
                <a href="Store.aspx">
                    <b>
                <li>Store</li></b>
                </a>
                <a href="LoginPage.aspx">
                    <b>
                <li>LogOut</li></b>
                </a>
            </ul>

            <div class="maintitle">
                <h1>Supplements</h1>
            </div>
        </div>
    </div>
    
        <h2>Featured Products:</h2><br /><br />
        <div class="product-grid">
            <div class="product-card">
                <img src="Photos/image1.jpg" alt="Product image" />
                <h3>Optimum Nutrition Gold Standard</h3>
                <p>LE1499.99</p>
                <button onclick="addToCart(1)">Add to Cart</button>
            </div>
            <div class="product-card">
                <img src="Photos/image2.jpg" alt="Product image" />
                <h3>Muscletech Nitrotech Whey Gold</h3>
                <p>LE1999.99</p>
                <button onclick="addToCart(2)">Add to Cart</button>
            </div>
            <div class="product-card">
                <img src="Photos/image3.jpg" alt="Product image" />
                <h3>Optimum Nutrition Gold Standard Isolate</h3>
                <p>LE2999.99</p>
                <button onclick="addToCart(3)">Add to Cart</button>
            </div>
        </div>
        <h2>Shopping Cart:</h2><br /><br />
        <div class="cart" id="cart">
            <table>
                <tr>
                    <td>Product</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Total</td>
                    <td></td>
                </tr>
            </table>
        </div>
        <p>Total: <span id="total">$0.00</span></p>
        <button id="checkout" onclick="checkout()">Checkout</button>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
    <script src="sup.js" ></script>

</body>
</html>
