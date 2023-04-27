<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExercisesPage.aspx.cs" Inherits="FitnessWebsiteProject.ExercisesPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercises</title>
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
                <h1>Exercises</h1>
            </div>
        </div>
    </div>

    <div class="exercise-style">
        <h1>Choose a muscle group to see a list of exercises</h1>
      
        <div class="muscle-group-list">
          <button class="muscle-group-button" onclick="showExercises('chest')">Chest</button>
          <button class="muscle-group-button" onclick="showExercises('back')">Back</button>
          <button class="muscle-group-button" onclick="showExercises('arms')">Arms</button>
          <button class="muscle-group-button" onclick="showExercises('legs')">Legs</button>
          <button class="muscle-group-button" onclick="showExercises('core')">Core</button>
        </div>

        <div id="exercise-list" class="exercise-list"></div>
    
        <script src="ex.js"></script>
    
    </div>



</body>
</html>
