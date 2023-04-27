class CaesarCipher
	def initialize(message, shift)
		@message = message
		@shift = shift
	end

	def cipher
		result  = ''
		@message.each_char do |char|
			char_base = char.ord < 91 ? 65 : 97
			if char.ord.between?(65, 90) || char.ord.between?(97, 122)
				rotation = (((char.ord - char_base) + @shift) % 26) + char_base
				result += rotation.chr
			else
				result += char
			end

		end

		result
	end
end

cipher_a = CaesarCipher.new 'Lucas Luvas!', 5
cipher_b = CaesarCipher.new 'Aranha Movedica', 5
puts cipher_a.cipher
puts cipher_b.cipher