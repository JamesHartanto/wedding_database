/**
 * Created by JamesHartanto on 8/29/17.
 */
// Variables
var attendingYes = document.getElementById("attendingYes");
var attendingNo = document.getElementById("attendingNo");
var attendingAnswer = document.getElementById("attendingAnswer");

var bringGuestYes = document.getElementById("bringGuestYes");
var bringGuestNo = document.getElementById("bringGuestNo");
var bringGuestAnswer = document.getElementById("bringGuestAnswer");

var roomBlockYes = document.getElementById("roomBlockYes");
var roomBlockNo = document.getElementById("roomBlockNo");
var roomBlockAnswer = document.getElementById("roomBlockAnswer");

var room_block = document.getElementById("room_block");
var food_preference = document.getElementById("food_preference");
var food_allergies = document.getElementById("food_allergies");
var email_confirmation = document.getElementById("email_confirmation");
var song_suggestion = document.getElementById("song_suggestion");
var bring_guest = document.getElementById("bring_guest");

// Event listeners
attendingYes.addEventListener("click", attendYes);
attendingNo.addEventListener("click", attendNo);
bringGuestYes.addEventListener("click", guestYes);
bringGuestNo.addEventListener("click", guestNo);
roomBlockYes.addEventListener("click", blockYes);
roomBlockNo.addEventListener("click", blockNo);

// Functions
function attendYes() {
    attendingYes.style = "background-color: #4CAF50";
    attendingNo.style = "background-color: white";
    attendingAnswer.value = "Yes";
    room_block.style.display = "block";
    food_preference.style.display = "block";
    food_allergies.style.display = "block";
    email_confirmation.style.display = "block";
    song_suggestion.style.display = "block";
    bring_guest.style.display = "block";
}

function attendNo() {
    attendingYes.style = "background-color: white";
    attendingNo.style = "background-color: #f44336";
    attendingAnswer.value = "No";
    room_block.style.display = "none";
    food_preference.style.display = "none";
    food_allergies.style.display = "none";
    email_confirmation.style.display = "none";
    song_suggestion.style.display = "none";
    bring_guest.style.display = "none";
}

function guestYes() {
    bringGuestYes.style = "background-color: #4CAF50";
    bringGuestNo.style = "background-color: white";
    bringGuestAnswer.value = "Yes";
}

function guestNo() {
    bringGuestYes.style = "background-color: white";
    bringGuestNo.style = "background-color: #f44336";
    bringGuestAnswer.value = "No";
}

function blockYes() {
    roomBlockYes.style = "background-color: #4CAF50";
    roomBlockNo.style = "background-color: white";
    roomBlockAnswer.value = "Yes";
}

function blockNo() {
    roomBlockYes.style = "background-color: white";
    roomBlockNo.style = "background-color: #f44336";
    roomBlockAnswer.value = "No";
}