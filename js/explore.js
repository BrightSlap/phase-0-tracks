// create function
// call function reverse() with "hello" as its token
//	set variable "reversed" is set as empty
//	for loop of string length
//		variable of i is set as string length - 1; as i is >= to 0; i--
//		reversed is equal to reversed + i;
//	end loop
//	console.log(reversed);
//end function

function reverse(string) {
  var reversed = '';
  for (var i = string.length - 1; i >= 0; i--) {
  	reversed = reversed + string[i];
  }
  console.log(reversed);
  return reversed;
}
reverse("hello");
var longestWord = reverse("pneumonoultramicroscopicsilicovolcanoconiosis");

if (1 == 1) {
	console.log(longestWord);
}