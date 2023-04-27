const exercises = {
    chest: [
        {
            name: "Bench press",
            video: "https://www.youtube.com/embed/W5qCGiXkfn0",
            description: "Lie on a bench with a barbell or dumbbells and lift the weight up and down."
        },
        {
            name: "Dumbbell flyes",
            video: "https://www.youtube.com/embed/vwdzBB8YX5o",
            description: "Lie on a bench with a dumbbell in each hand and lift the weights out to the sides."

        },
        {
            name: "Push ups",
            video: "https://www.youtube.com/embed/ba8tr1NzwXU",
            description: "Place your hands on the ground and lift your body up and down with your arms."
        }
    ],
    back: [
        {
            name: "Lat pull downs",
            video: "https://www.youtube.com/embed/77bPLrsMwiQ",
            description: "Sit at a machine and pull a bar down towards your chest."
        },
        {
            name: "Seated rows",
            video: "https://www.youtube.com/embed/z7C7PxVDAD0",
            description: "Sit at a machine and pull a bar towards your chest while keeping your back straight."
        },
        {
            name: "Bent over rows",
            video: "https://www.youtube.com/embed/7CSOUuWivbc",
            description: "Stand with your feet shoulder-width apart and bend at the waist while holding a barbell or dumbbells, then lift the weight up and down."
        }
    ],
    arms: [
        {
            name: "Bicep curls",
            video: "https://www.youtube.com/embed/803JIAWBj_c",
            description: "Stand with a dumbbell in each hand and lift the weights towards your shoulders."
        },
        {
            name: "Tricep dips",
            video: "https://www.youtube.com/embed/Qz39qVt6NGA",
            description: "Place your hands on a bench or chair and lift your body up and down using your arms."
        },
        {
            name: "Hammer curls",
            video: "https://www.youtube.com/embed/e6poFcCgMrY",
            description: "Stand with a dumbbell in each hand and lift the weights towards your shoulders with your palms facing inward."
        }
    ],
    legs: [
        {
            name: "Squats",
            video: "https://www.youtube.com/embed/gslEzVggur8",
            description: "Stand with your feet shoulder-width apart and lower your body down as if you were sitting back into a chair."
        },
        {
            name: "Lunges",
            video: "https://www.youtube.com/embed/LCWWq3Lx2Sk",
            description: "Step forward with one leg and lower your body down until your thigh is parallel to the ground."
        },
        {
            name: "Leg press",
            video: "https://www.youtube.com/embed/uTk3fkwiLFk",
            description: "Sit at a machine and press your feet against a platform to lift the weight up and down."
        }
    ],
    core: [
        {
            name: "Planks",
            video: "https://www.youtube.com/embed/X9OEDuKNpyQ",
            description: "Hold your body in a straight line with your arms extended and you arms extended and your toes resting on the ground."
        },
        {
            name: "Sit ups",
            video: "https://www.youtube.com/embed/IAhkF4eX4HM",
            description: "Lie on your back with your knees bent and lift your upper body towards your knees."
        },
        {
            name: "Russian twists",
            video: "https://www.youtube.com/embed/R7a7jO6d3HU",
            description: "Sit on the ground with your knees bent and twist your upper body from side to side."
        }
    ]
}


function showExercises(muscleGroup) {

    document.getElementById("exercise-list").innerHTML = "";  /*by setting its innerHTML property to an empty string.*/

    for (let i = 0; i < exercises[muscleGroup].length; i++) { /*The elements in the exercises array for the specified muscle group.*/

        let exercise = exercises[muscleGroup][i];

        let exerciseDiv = document.createElement("div");  /* Create a new div element to hold the exercise*/
        exerciseDiv.classList.add("exercise");

        let video = document.createElement("iframe");   /* Create an iframe element to hold the exercise's video*/
        video.src = exercise.video;
        video.frameBorder = "0";
        video.allow = "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture";
        video.allowFullscreen = true;


        let name = document.createElement("h2");   /* Create an h2 element to hold the exercise's name*/
        name.classList.add("exercise-name");
        name.textContent = exercise.name;


        let description = document.createElement("p");   /* Create a p element to hold the exercise's description*/
        description.classList.add("exercise-description");
        description.textContent = exercise.description;

        exerciseDiv.appendChild(video);  /*Append the video, name, and description elements to the exercise div*/
        exerciseDiv.appendChild(name);
        exerciseDiv.appendChild(description);

        document.getElementById("exercise-list").appendChild(exerciseDiv);
    }
}