// create funtion
// function takes in array
// array is fulled of words/phrases
// function runs through the array to check for words/phrases with longest length
//    variable longest set as empty
//		loop using variable i =0, as i is less than array length minus 1, +1 to i
//			variables longphrase1 equal to array index i, longphrase2 equal to array index i+1
//			if/else either of the two variables is longer than the other, AND longer than the variable longest
//			set variable longest as the longest variable.
//		print the longest phrase
//		return longest


function longestphrase(array) {
	var longest = '';

	for(var i = 0; i < array.length-1; i++) {
 		var longphrase1 = array[i];
 		var longphrase2 = array[i+1];
 		if ((longphrase1.length > longphrase2.length) && (longphrase1.length > longest.length)) {
 			longest = longphrase1;
 		} else if ((longphrase1.length < longphrase2.length) && (longphrase2.length > longest.length)) {
 			longest = longphrase2;
 		} else {
 			longest = longest;
 		}
 	}
 	console.log("The longest phrase in the array is: " + longest);
 	return longest;
}

longestphrase(["God save the Queen!", "Catchphrase!", "Bad day, bad day, bad day!"]);
longestphrase(["God save the Queen!", "Catchphrase!", "Just do it!", "Supercalifragilisticexpialidocious"]);