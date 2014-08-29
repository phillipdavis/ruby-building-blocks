puts "Type in a word or phrase to be encrypted"
phrase = gets.chomp

puts "Type in an integer"
integer = gets.chomp.to_i

def caesar_cipher(string, shift)
	alphabet = ("a".."z").to_a
	encryptext = ""
	
	string.split("").each do |letter|
		index = alphabet.index(letter.downcase)
		if index.nil?
			encryptext += letter
		elsif index < 26
			if letter == letter.upcase
				encryptext += alphabet[(index + shift) % 26].upcase
			else
				encryptext += alphabet[(index + shift) % 26]
			end
		end
	end	
	
	return encryptext
end

puts caesar_cipher(phrase, integer)