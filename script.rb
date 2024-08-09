# Implementation of the encrypt method
def caesar_cipher_encrypt(args, shift_value = 3)
  args_array = args.split("") # create a new array by dividing the args into characters
  encoded_args = args_array.map do |character| # create a new array based on the args_array with modified values
    if character.match?(/[a-zA-Z]/) # check if it's a letter
      if character.ord >= 65 && character.ord <= 90 # check if it's uppercase by the ASCII range
        new_character = character.ord + shift_value # create a new character by adding the shift value to the character
        new_character -= 26 if new_character > 90 # ensure that the character does not exceed its range
        new_character.chr # convert the character from integer to string
      elsif character.ord >= 97 && character.ord <= 122 # check if it's lowercase by the ASCII range
        new_character = character.ord + shift_value # create a new character by adding the shift value to the character
        new_character -= 26 if new_character > 122 # ensure that the character does not exceed its range
        new_character.chr # convert the character from integer to string
      end
    else
      character # return the character 
    end
  end
  encoded_args.join # return a string of the encoded array
end

# Implementation of the decrypt method
def caesar_cipher_decrypt(args, shift_value = 3)
  args_array = args.split("") 
  decoded_args = args_array.map do |character|
    if character.match?(/[a-zA-Z]/)
      if character.ord >= 65 && character.ord <= 90
        new_character = character.ord - shift_value # create a new character by subtracting the shift value from the character
        new_character += 26 if new_character < 65 
        new_character.chr
      elsif character.ord >= 97 && character.ord <= 122
        new_character = character.ord - shift_value # create a new character by subtracting the shift value from the character
        new_character += 26 if new_character < 97
        new_character.chr
      end
    else
      character 
    end
  end
  decoded_args.join # return the decoded array as a string
end

puts caesar_cipher_encrypt("Debug @encrypted text")
puts caesar_cipher_decrypt("Ghexj @hqfubswhg whaw")