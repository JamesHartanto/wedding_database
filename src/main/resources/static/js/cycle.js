var navpic1 = document.getElementById("nav-pic-1");
var navpic2 = document.getElementById("nav-pic-2");
var navpic3 = document.getElementById("nav-pic-3");
var navpic4 = document.getElementById("nav-pic-4");
var navpic5 = document.getElementById("nav-pic-5");
var navpic6 = document.getElementById("nav-pic-6");
var navpic7 = document.getElementById("nav-pic-7");
var navpic8 = document.getElementById("nav-pic-8");
var navpic9 = document.getElementById("nav-pic-9");
var navpic10 = document.getElementById("nav-pic-10");
var navpic11 = document.getElementById("nav-pic-11");

var story1 = document.getElementById("story1");
var story2 = document.getElementById("story2");
var story3 = document.getElementById("story3");
var story4 = document.getElementById("story4");
var story5 = document.getElementById("story5");
var story6 = document.getElementById("story6");
var story7 = document.getElementById("story7");
var story8 = document.getElementById("story8");
var story9 = document.getElementById("story9");
var story10 = document.getElementById("story10");
var story11 = document.getElementById("story11");

// Adding a "click" event listener to "nav-pics"
navpic1.addEventListener("click", navpicture1);
navpic2.addEventListener("click", navpicture2);
navpic3.addEventListener("click", navpicture3);
navpic4.addEventListener("click", navpicture4);
navpic5.addEventListener("click", navpicture5);
navpic6.addEventListener("click", navpicture6);
navpic7.addEventListener("click", navpicture7);
navpic8.addEventListener("click", navpicture8);
navpic9.addEventListener("click", navpicture9);
navpic10.addEventListener("click", navpicture10);
navpic11.addEventListener("click", navpicture11);

var stories = [story1,story2,story3,story4,story5,story6,story7,story8,story9,story10,story11];

// The functions are called whenever "click" event is triggered.
function navpicture1() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story1.style.display = "block";
}

function navpicture2() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story2.style.display = "block";
}

function navpicture3() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story3.style.display = "block";
}

function navpicture4() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story4.style.display = "block";
}
function navpicture5() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story5.style.display = "block";
}
function navpicture6() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story6.style.display = "block";
}
function navpicture7() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story7.style.display = "block";
}
function navpicture8() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story8.style.display = "block";
}
function navpicture9() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story9.style.display = "block";
}
function navpicture10() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story10.style.display = "block";
}

function navpicture11() {
    var i;
    for (i = 0; i < stories.length; i++) {
        stories[i].style.display = "none";
    }
    story11.style.display = "block";
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