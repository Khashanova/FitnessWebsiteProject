<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MacrosPage.aspx.cs" Inherits="FitnessWebsiteProject.MacrosPage" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <title>Macros</title>
    <link rel="website icon" type="jpg" href="Photos/Logo.jpg"/>
</head>

<link rel="stylesheet" href="Main.css" />

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
                <h1>Macros</h1>
            </div>
        </div>
    </div>
   
        
        <input type="text" id="searchInput"/>
         <button onclick="searchTable()">Search</button>
    
    <div class="Macros-Table">
        <table>
            <tbody>
                <tr>
                    <td>Food</td>
                    <td>Servings</td>
                    <td>Calories</td>
                </tr>

                <tr>

                    <td>Apple</td>
                    <td>182g</td>
                    <td>95 cal</td>
                </tr>
                <tr>
                    <td>Avocado</td>
                    <td>200g</td>
                    <td>320 cal</td>
                </tr>
                <tr>
                    <td>Banana</td>
                    <td>125g</td>
                    <td>111 cal</td>
                </tr>
                <tr>
                    <td>Grapes</td>
                    <td>151g</td>
                    <td>104 cal</td>
                </tr>
                <tr>
                    <td>Lemon</td>
                    <td>58g</td>
                    <td>17 cal</td>
                </tr>
                <tr>
                    <td>Mango</td>
                    <td>336g</td>
                    <td>202 cal</td>
                </tr>
                <tr>
                    <td>Pear</td>
                    <td>178g</td>
                    <td>101 cal</td>
                </tr>
                <tr>
                    <td>Strawberries</td>
                    <td>152g</td>
                    <td>49 cal</td>
                </tr>
                <tr>
                    <td>Watermelon</td>
                    <td>286g</td>
                    <td>86 cal</td>
                </tr>
        </table>
    </div>
    <div>
    </div>



<script>
    function searchTable() {

    var input = document.getElementById("searchInput").value;
    var rows = document.getElementsByTagName("tr");

  
    for (var i = 0; i < rows.length; i++) {
       
        var cells = rows[i].getElementsByTagName("td");
        for (var j = 0; j < cells.length; j++) {
            var cellContent = cells[j].textContent;
            if (cellContent.toLowerCase().indexOf(input.toLowerCase()) > -1) {
                rows[i].style.backgroundColor = "yellow";
            } else {
                rows[i].style.backgroundColor = "";
            }
        }
    }
}</script>
</body>
</html>