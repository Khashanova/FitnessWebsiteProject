<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MathPage.aspx.cs" Inherits="FitnessWebsiteProject.MathPage" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <title>Math</title>
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
                <h1>Calorie Calculator</h1>
            </div>
        </div>
    </div>
    <div class="Math_Form">
        <form class="MathForm">
            <label for="weight">Weight (kgs):</label><br>
            <input type="text" placeholder="Enter Your Weight...." id="weight" name="weight"><br>

            <label for="height">Height (cms):</label><br>
            <input type="text" placeholder="Enter Your Height...." id="height" name="height"><br>

            <label for="age">Age:</label><br>
            <input type="text" placeholder="Enter Your Age...." id="age" name="age"><br>

            <label for="activity-level">Activity Level:</label><br>
            <select id="activity-level" name="activity-level">
                <option value="1.2">Sedentary (little or no exercise)</option>
                <option value="1.375">Lightly Active (light exercise/sports 1-3 days/week)</option>
                <option value="1.55">Moderately Active (moderate exercise/sports 3-5 days/week)</option>
                <option value="1.725">Very Active (hard exercise/sports 6-7 days a week)</option>
                <option value="1.9">Extra Active (very hard exercise/sports & physical job or 2x training)</option>
            </select><br><br>
            <button type="button" onclick="calculateCalories()">Calculate Calories</button>
        </form>
        <script src="Math.js"></script>
    </div>


</body>
</html>