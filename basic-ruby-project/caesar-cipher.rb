def caesar_cipher(string, shift)
    string = string.split("")
    ciphered_string_arr = []
    string.each {|character|
    shifted_char_ascii_value = character.ord + (shift % 26)
    if /[[:lower:]]/.match(character)
        if (shifted_char_ascii_value) % 122 < 96
            ciphered_string_arr.push(((shifted_char_ascii_value % 122) + 96).chr)
        else
            ciphered_string_arr.push(shifted_char_ascii_value.chr)
        end
    elsif /[[:upper:]]/.match(character)
        if (shifted_char_ascii_value) % 90 < 64
            ciphered_string_arr.push(((shifted_char_ascii_value % 90)+64).chr)
        else
            ciphered_string_arr.push(shifted_char_ascii_value.chr)
        end
    else
        ciphered_string_arr.push(character)
    end}
    ciphered_string_arr.join("")
end

