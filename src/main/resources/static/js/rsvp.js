/**
 * Created by JamesHartanto on 8/29/17.
 */
// Variables
var attendingYes = document.getElementById("attendingYes");
var attendingNo = document.getElementById("attendingNo");
var attendingAnswer = document.getElementById("attendingAnswer");

var roomBlockYes = document.getElementById("roomBlockYes");
var roomBlockNo = document.getElementById("roomBlockNo");
var roomBlockAnswer = document.getElementById("roomBlockAnswer");

var bringGuestYes = document.getElementById("bringGuestYes");
var bringGuestNo = document.getElementById("bringGuestNo");
var bringGuestAnswer = document.getElementById("bringGuestAnswer");
var guest_inputs = document.getElementById("guest_inputs");

var room_block = document.getElementById("room_block");
var food_preference = document.getElementById("food_preference");
var food_allergies = document.getElementById("food_allergies");
var email_confirmation = document.getElementById("email_confirmation");
var song_suggestion = document.getElementById("song_suggestion");
var bring_guest = document.getElementById("bring_guest");


// Event listeners
attendingYes.addEventListener("click", attendYes);
attendingNo.addEventListener("click", attendNo);
roomBlockYes.addEventListener("click", blockYes);
roomBlockNo.addEventListener("click", blockNo);
bringGuestYes.addEventListener("click", guestYes);
bringGuestNo.addEventListener("click", guestNo);

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

function guestYes() {
    bringGuestYes.style = "background-color: #4CAF50";
    bringGuestNo.style = "background-color: white";
    bringGuestAnswer.value = "Yes";
    guest_inputs.style.display = "block";
}

function guestNo() {
    bringGuestYes.style = "background-color: white";
    bringGuestNo.style = "background-color: #f44336";
    bringGuestAnswer.value = "No";
    guest_inputs.style.display = "none";
}

