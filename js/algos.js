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
 	console.log("The longest phrase in the array is: " + longest);
 	return longest;
}

//	create function
//	function takes two hashes
//		if/else compare first two keys of the hashes
//		if true, print "the first key of each hash have matching values"
//		else compare hash1 first key with hash2 2nd key
//		if true, print "the first key of the first hash and the second key of the second hash have matching values"
//		keep going through all the keys of both hashes.
//		if none of the keys match, print "the keys of the first hash has no matching values with the keys of the second hash."
//	end

function key-value_match(hash1, hash2) {
	
	
}

longestphrase(["God save the Queen!", "Catchphrase!", "Bad day, bad day, bad day!"]);
longestphrase(["God save the Queen!", "Catchphrase!", "Just do it!", "Supercalifragilisticexpialidocious"]);