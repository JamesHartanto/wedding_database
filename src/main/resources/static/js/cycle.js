var navpic1 = document.getElementById("nav-pic-1");
var navpic2 = document.getElementById("nav-pic-2");
var navpic3 = document.getElementById("nav-pic-3");
var navpic4 = document.getElementById("nav-pic-4");
var navpic5 = document.getElementById("nav-pic-5");
var story1 = document.getElementById("story1");
var story2 = document.getElementById("story2");
var story3 = document.getElementById("story3");
var story4 = document.getElementById("story4");
var story5 = document.getElementById("story5");

// Adding a "click" event listener to "nav-pics"
navpic1.addEventListener("click", navpicture1);
navpic2.addEventListener("click", navpicture2);
navpic3.addEventListener("click", navpicture3);
navpic4.addEventListener("click", navpicture4);
navpic5.addEventListener("click", navpicture5);


// The functions are called whenever "click" event is triggered.
function navpicture1() {
    story1.style.display = "block";
    story2.style.display = "none";
    story3.style.display = "none";
    story4.style.display = "none";
    story5.style.display = "none";
}

function navpicture2() {
    story1.style.display = "none";
    story2.style.display = "block";
    story3.style.display = "none";
    story4.style.display = "none";
    story5.style.display = "none";
}

function navpicture3() {
    story1.style.display = "none";
    story2.style.display = "none";
    story3.style.display = "block";
    story4.style.display = "none";
    story5.style.display = "none";
}

function navpicture4() {
    story1.style.display = "none";
    story2.style.display = "none";
    story3.style.display = "none";
    story4.style.display = "block";
    story5.style.display = "none";
}

function navpicture5() {
    story1.style.display = "none";
    story2.style.display = "none";
    story3.style.display = "none";
    story4.style.display = "none";
    story5.style.display = "block";
}

var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
    showDivs(slideIndex += n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("mySlides");
    if (n > x.length) {slideIndex = 1;}
    if (n < 1) {slideIndex = x.length;}
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    x[slideIndex-1].style.display = "block";
}