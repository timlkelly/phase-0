// DOM Manipulation Challenge


// I worked on this challenge [ with: Kyle Cierzan ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className += "done";

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
document.getElementsByTagName("H1")[0].innerHTML = "I completed release-2";

// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 4:
var release4 = document.getElementsByClassName("release-4")

for (var i=0; i < release4.length; i++) {
  release4[i].style.fontSize = "2em";
};

// Release 5:
var template = document.getElementById("hidden")
document.body.appendChild(template.content.cloneNode(true));

/* REFLECTION
What did you learn about the DOM?
  I learned more about how the DOM works and what it does along with how to
  interact with a webpage through the DOM.  It works similar to CSS in theory
  in terms of accessing specific nodes of the page.

What are some useful methods to use to manipulate the DOM?
  using the getElement was very useful to manipulate the DOM with. 
  Additionally you can refer to children and parent objects through the
  document as well.

*/