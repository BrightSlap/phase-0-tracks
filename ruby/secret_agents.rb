%%
1. set index to 0. 
input secret code as string. 
while loop, while index is less than string.length, "code[index] = code[index].next (next line) index +=1" 
end while loop.

%
def encrypt (code)
puts "Encryption"
index = 0;
while index<code.length
	if code[index] ==" "
		code[index] = " "
		elsif code[index] == "z"
			code[index] = "a"
		else
			code[index] = code[index].next!
	end
	index +=1
end
p code
end

%%
2.set alphabet string as "abcdefghijklmnopqrstuvwxyz".
input secret code.
set index=0
set while loop
while index is less than code.length
	i=0
	set unitl loop
	until the code index letter is equal the alphabet index letter
		plus 1 to i
	end until loop
when code index letter matches alphabet index letter, we will convert code index letter to aplphabet index letter with value minus 1.
plus 1 to index
end while loop
%

def decrypt (code)
puts "Decrpytion"
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0;
while index<code.length
	i = 0
	until code[index] == alphabet[i]
		i +=1
	end
	code[index]=alphabet[i-1]
	index +=1

end
p code
end

encrypt ("abc")
encrypt ("zed")
decrypt ("bcd")
decrypt ("afe")

%%
decrypt(encrypt("swordfish"))



ask agent whether encrypt or decrypt.
input answer.
if answer is encrypt, call encrypt method
if answer is decrypt, call decrypt method.
display result and exit
%

%%
puts "Would you like to encrypt or decrypt?"
choice = gets.chomp

puts "password:"
pass = gets.chomp
if choice == "encrypt"
 encrypt (pass)
else decrypt (pass)
end
%