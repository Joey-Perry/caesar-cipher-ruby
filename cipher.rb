def caesar_cipher(string, shift_factor)
    alphabet_array = (('a'..'z').to_a) + (('a'..'z').to_a)
    array_version_of_string = string.downcase.chars
    original_alphabet_position = array_version_of_string.map do |character| 
        if alphabet_array.include?(character)
            alphabet_array.index(character) + 1
        else
            character
        end
    end
    shifted_alphabet_position = original_alphabet_position.map { |value| value.is_a?(Integer) == true ? value + (shift_factor - 1) : value }
    shifted_array_version_of_string = shifted_alphabet_position.map { |value| value.is_a?(Integer) == true ? alphabet_array[value] : value } 
    final_shifted_string_array = string.chars.map.with_index do |character, index|
        if character == character.upcase
            shifted_array_version_of_string[index].upcase
        else
            shifted_array_version_of_string[index]
        end
    end
    final_shifted_string_array.join("")
end

caesar_cipher("What a string!", 5)

# => "Bmfy f xywnsl!"