/**
 * Created by JamesHartanto on 8/28/17.
 */

var buttonBride = document.getElementById("buttonBride");
var buttonGroom = document.getElementById("buttonGroom");

var bridesmaids = document.getElementById("bridesmaids");
var groomsmen = document.getElementById("groomsmen");

var bridesmaidText = document.getElementById("bridesmaidText");
var groomsmenText = document.getElementById("groomsmenText");

buttonBride.addEventListener("click", showBride);
buttonGroom.addEventListener("click", showGroom);

function showBride() {
    bridesmaids.style.display = "block";
    groomsmen.style.display = "none";
    bridesmaidText.style = "font-weight: 900";
    groomsmenText.style = "font-weight: lighter";
}

function showGroom() {
    bridesmaids.style.display = "none";
    groomsmen.style.display = "block";
    bridesmaidText.style = "font-weight: lighter";
    groomsmenText.style = "font-weight: 900";
}