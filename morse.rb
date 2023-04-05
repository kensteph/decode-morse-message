# Create a method to decode a Morse code character, takes a string parameter, 
# and return the corresponding character in uppercase 

def decode_char(char)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse[char]
end

# Create a method to decode an entire word in Morse code, takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").

def decode_word(word)
  w = word.split
  new_word = ''
  w.each {|char| new_word += decode_char(char)}
  new_word
end

puts decode_char(".-") # Should return 'A'
puts decode_word("-- -.--") # Should return 'MY
