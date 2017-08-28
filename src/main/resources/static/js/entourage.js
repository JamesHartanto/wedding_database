/**
 * Created by JamesHartanto on 8/28/17.
 */

var buttonBride = document.getElementById("buttonBride");
var buttonGroom = document.getElementById("buttonGroom");

var bridesmaids = document.getElementById("bridesmaids");
var groomsmen = document.getElementById("groomsmen");

buttonBride.addEventListener("click", showBride);
buttonGroom.addEventListener("click", showGroom);

function showBride() {
    bridesmaids.style.display = "block";
    groomsmen.style.display = "none";
}

function showGroom() {
    bridesmaids.style.display = "none";
    groomsmen.style.display = "block";
}