/**
 * Created by JamesHartanto on 12/8/17.
 */
var online = document.getElementById("online");
var offline = document.getElementById("offline");
var aLine = document.getElementById("aLine");
var onlineInfo = document.getElementById("onlineInfo");
var offlineInfo = document.getElementById("offlineInfo");

online.addEventListener("click", showOnline);
offline.addEventListener("click", showOffline);

function showOnline() {
    onlineInfo.style.display = "block";
    offlineInfo.style.display = "none";
    aLine.style.display ="block";
    online.style = "font-weight: 900";
    offline.style = "font-weight: lighter";
}

function showOffline() {
    onlineInfo.style.display = "none";
    offlineInfo.style.display = "block";
    aLine.style.display = "none";
    online.style = "font-weight: lighter";
    offline.style = "font-weight: 900";
}