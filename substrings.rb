def substrings(string, list)
	frequencies = Hash.new(0)
	string.split(" ").each do |word|
		list.length.times do |i|
			if word.downcase.include? list[i]
				frequencies[list[i]] += 1
			end
		end
	end
	return frequencies
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)