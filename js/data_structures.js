var hues = ["Red", "Blue", "Yellow", "Green"];
var names = ["Red Hare", "Stallion", "Ponytail", "Bob"];

hues.push ("Black", "White");
names.push ("Scar", "Mufasa");

// var horses_and_colors ={}

// for loop 
// 	i= 0, i <array.length; i++ {
//		horses_and_colors.names[i] = hues[i];
//		}
//	console.log(horses_and_colors);

var h_c = {};

for (var i = 0; i < names.length; i++) {
	var name = names[i];
	var hue = hues[i];
	h_c[name] = hue;
}

console.log(h_c);

function Car(manufacturer, color, hasTurbo) {
	console.log("Our new car:", this);
	this.manufacturer = manufacturer;
	this.color = color;
	this.hasTurbo = hasTurbo;
	this.revEngine = function() { console.log("VROOM! *Blows out valve...* :'("); };
	console.log("Car Initialization Completed.");
}

console.log("Let's buy a new car");
var freshRide = new Car("RiceRocket", "White", true);
console.log(freshRide);
console.log("Wanna race?");
freshRide.revEngine();

console.log("----------------");

console.log("Time to buy another new car");
var familyRide = new Car("AllFitsOne", "Purple", false);
console.log(familyRide);
console.log("Pick up kids at 3? *Clock read 2:58*");
familyRide.revEngine();
