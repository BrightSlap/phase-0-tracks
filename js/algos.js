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
 		if ((array[i].length > array[i+1].length) && (array[i].length > longest.length)) {
 			longest = array[i];
 		} else if ((array[i].length < array[i+1].length) && (array[i+1].length > longest.length)) {
 			longest = array[i+1];
 		} else {
 			longest = longest;
 		}
 	}
 	console.log("The longest phrase in this array is: " + longest);
 	return longest;
}

//	create function
//	function takes two hashes
//		declare variable match as 0, for counter of how many matching values
//		for loop of the keys in hash1
//			nested for loop of keys in hash2
//				if compare first key of hash1 to all keys of hash2
//					if true, add 1 to match counter
//			keep going through all the keys of both hashes.
//		if match counter is greater than or equal to 1,
//			declare variable result as true
//		else
//			declare variable result as false
//		print result
//	end

function keyvaluematch(hash1, hash2) {
	var match = 0;
	for(var key in hash1) {
		for(var prop in hash2) {
			if (hash1[key] == hash2[prop]) {
				match = match + 1
			}
		}
	}
	if (match >= 1) {
		var result = true;	}
	else {
		var result = false; }
	console.log(result);
}

//	create function for random integer generator(RIG)
//		Math.random generates a number between 0 and 1(excluding)
//		Math.floor rounds down the number to the closest integer
//		to include the max number multiply the number by the result of max - min +1 and add the min to that product


//	create function that takes interger as arguement
//		declare variable array as empty array
//		for loop declare variable index as 0, as index is smaller than arguement, index++
//			declare variable alphabet as alphabet
//			declare variable strlength as RIG to set random string length
//			function for creating random word (rndWord)
//				declare variable rndString as an empty string
//				for loop declare another variable index as 0, as index is smaller than strlength, index++
//					rndString is set as rndString + alphabet[RIG]
//				return rndString				
//			array.push rndWord
//		print array

function rig(min, max) {
  			return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randomArrays(integer) {
	var array = []
	for (var i = 0; i < integer; i++) {
		var alphabet = "abcdefghijklmnopqrstuvwxyz";
		var strlength = rig(1, 10);
		function rndWord() {
			var rndString = ''
			for (var i = 0; i < strlength; i++) {
				rndString = rndString + alphabet[rig(0, 25)];
			}
			return rndString
		}
		array.push (rndWord());	
	}
	console.log(array);
	return array;
}


longestphrase(["God save the Queen!", "Catchphrase!", "Bad day, bad day, bad day!"]);
longestphrase(["God save the Queen!", "Catchphrase!", "Just do it!", "Supercalifragilisticexpialidocious"]);

keyvaluematch({name: "Steven", age: 54}, {name: "Steven", age: 34})
keyvaluematch({name: "Tamir", age: 34}, {name: "Steven", age: 54})

randomArrays(5)
randomArrays(3)

for(var i =1; i <= 10; i++) {
	longestphrase(randomArrays(rig(3,6)))
}