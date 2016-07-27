console.log("test script")

function changeFontColor(event) {
   event.target.style.color = "yellow";
}

   var els = document.getElementsByTagName("h1");
   var el = els[0];
   el.addEventListener("click", changeFontColor);