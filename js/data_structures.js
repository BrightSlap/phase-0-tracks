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