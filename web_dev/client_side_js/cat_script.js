function showplanet() {
	var cat_planet = document.getElementsByTagName("img");
	var cat = cat_planet[0];
	cat.style.visibility = 'visible';
}

function addborder() {
	var cat_planet = document.getElementsByTagName("img");
	var cat = cat_planet[0];
	cat.style.border = "5px solid purple";
	rickroll()
}

function rickroll() {
	var pranks = document.getElementsByTagName("a");
	var prank = pranks[0];
	prank.style.visibility = 'visible';
}

var cat_planet = document.getElementsByTagName("img");
var cat = cat_planet[0];
var pranks = document.getElementsByTagName("a");
var prank = pranks[0];
prank.style.visibility = 'hidden';
cat.style.visibility = 'hidden';

cat.addEventListener("click", showplanet);
cat.addEventListener("click", addborder);