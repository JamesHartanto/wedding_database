/**
 * Created by JamesHartanto on 8/29/17.
 */
// Variables
var attendingYes = document.getElementById("attendingYes");
var attendingNo = document.getElementById("attendingNo");

var bringGuestYes = document.getElementById("bringGuestYes");
var bringGuestNo = document.getElementById("bringGuestNo");

var roomBlockYes = document.getElementById("roomBlockYes");
var roomBlockNo = document.getElementById("roomBlockNo");

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
}

function attendNo() {
    attendingYes.style = "background-color: white";
    attendingNo.style = "background-color: #f44336";
}

function guestYes() {
    bringGuestYes.style = "background-color: #4CAF50";
    bringGuestNo.style = "background-color: white";
}

function guestNo() {
    bringGuestYes.style = "background-color: white";
    bringGuestNo.style = "background-color: #f44336";
}

function blockYes() {
    roomBlockYes.style = "background-color: #4CAF50";
    roomBlockNo.style = "background-color: white";
}

function blockNo() {
    roomBlockYes.style = "background-color: white";
    roomBlockNo.style = "background-color: #f44336";
}