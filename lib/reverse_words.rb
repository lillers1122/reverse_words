# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  return my_words if my_words.nil?

  breaks = spaces(my_words) #breaks found with helper method

  if breaks.empty? #reverse only word
    first = 0
    last = my_words.length-1

    while first < last
      a = my_words[first]
      my_words[first] = my_words[last]
      my_words[last] = a
      first += 1
      last -= 1
    end

  else #reverse words ahead of spaces
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

    #reverse last word
    x = breaks.length-1
    last_first = (breaks[x] + 1)
    last_last = my_words.length-1

    while last_first < last_last
      a = my_words[last_first]
      my_words[last_first] = my_words[last_last]
      my_words[last_last] = a
      last_first += 1
      last_last -= 1
    end
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
  return spaces
end
