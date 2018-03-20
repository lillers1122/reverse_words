require 'pry'# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  return my_words if my_words.nil?

  breaks = spaces(my_words) #breaks found with helper method
  
    first = 0
    breaks.each do |space|
      last = space - 1

      while first < last
        a = my_words[first]
        my_words[first] = my_words[last]
        my_words[last] = a
        first += 1
        last -= 1
      end
      first = space + 1
    end
end

def spaces(my_words)
  i = 0
  j = my_words.length-1
  spaces = []

  j.times do
    if my_words[i] == " "
      spaces << i
    end
    i += 1
    j -= 1
  end

  spaces << my_words.length
  return spaces
end
