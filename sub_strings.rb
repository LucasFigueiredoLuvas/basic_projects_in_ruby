dictionary = ["ass", "come", "shit", "wow", "hey", "what", "man", "goes", "on"]

def substrings (input_text, list)
	output = Hash.new(0)

	list.each do |dic_text|
		verified = input_text.scan(dic_text.downcase)
		if verified.length > 0
			output[dic_text] = verified.length
		end
	end

	return output
end

puts substrings("Lucas e Lucas onwowwow", dictionary)