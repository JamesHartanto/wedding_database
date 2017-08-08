var navpic1 = document.getElementById("nav-pic-1");
var navpic2 = document.getElementById("nav-pic-2");
var navpic3 = document.getElementById("nav-pic-3");
var story1 = document.getElementById("story1");
var story2 = document.getElementById("story2");
var story3 = document.getElementById("story3");

// Adding a "click" event listener to "nav-pics"
navpic1.addEventListener("click", navpicture1);
navpic2.addEventListener("click", navpicture2);
navpic3.addEventListener("click", navpicture3);


// The "ourCallBack()" function is called whenever our declared event listener is triggered.
function navpicture1() {
    story1.style.visibility = "visible";
    story2.style.visibility = "hidden";
    story3.style.visibility = "hidden";
}

function navpicture2() {
    story1.style.visibility = "hidden";
    story2.style.visibility = "visible";
    story3.style.visibility = "hidden";
}

function navpicture3() {
    story1.style.visibility = "hidden";
    story2.style.visibility = "hidden";
    story3.style.visibility = "visible";
}

// $(document).ready(function(){
//     $("#nav-pic-1").click(function(){
//         $("#story1").show();
//         $("#story2").hide();
//         $("#story3").hide();
//     });
//     $("#nav-pic-2").click(function(){
//         $("#story1").hide();
//         $("#story2").show();
//         $("#story3").hide();
//     });
//     $("#nav-pic-3").click(function(){
//         $("#story1").hide();
//         $("#story2").hide();
//         $("#story3").show();
//     });
// });

