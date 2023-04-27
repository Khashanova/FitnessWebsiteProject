var age = document.getElementById("age").value;
var weight = document.getElementById("weight").value;
var height = document.getElementById("height").value;
var activity = document.getElementById("activity-level").value;




function calculateCalories() {

    var bmr = 66.5 + (13.75 * weight) + (5.003 * height) - (6.75 * age);
    var calories = bmr * activity;
    alert("Your daily calorie needs: " + calories);
};