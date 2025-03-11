def caesar_cipher (input, shift_factor)
    
    alphabet_up = ("A".."Z").to_a
    alphabet_dwn = ("a".."z").to_a
    alphabet_length = alphabet_up.length
    
    # .chars method turns the input (string) into an array of chars
    input.chars.map do |letter|
        
        if alphabet_up.include?(letter)
            # return the letter shifted using the alphabet arrays
            # note that subtracting alphabet_length creates a "circular array", since ruby accepts negative indexes
            alphabet_up[alphabet_up.index(letter) + shift_factor - alphabet_length]
        elsif alphabet_dwn.include?(letter)
            alphabet_dwn[alphabet_dwn.index(letter) + shift_factor - alphabet_length]
        else
            letter
        end

    # .join method turn the array of letters (returned by the .map method) back into a string
    end.join
end

caesar_cipher("I've made it!", 9)