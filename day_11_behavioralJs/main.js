let title = document.getElementById("nycda-title");
let help_message = document.getElementById("nycda-help-message");

let nycda_class = document.getElementsByClassName("nycda-class");
let paragraph = document.getElementsByTagName("p");

let input_data = document.querySelector("input");
let redBorder = document.querySelector("input");

let submitButton = document.getElementById("submit-button");

title.innerText = "Welcome to NYCDA";
help_message.innerHTML = "Ask people in NYCDA for help if you're struggling";

console.log(nycda_class[3]);
console.log(paragraph[1]);

redBorder.style.borderColor = "red";

submitButton.addEventListener("click", (event) => {
    event.preventDefault()
    console.log("You just clicked the button! You shall pass!!")
})

document.addEventListener()
